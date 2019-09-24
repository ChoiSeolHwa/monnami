package com.monnami;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DBCPConn;

public class MemberServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	
	protected void forward(HttpServletRequest req, HttpServletResponse resp, String url)
			throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher(url);
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		Connection conn = DBCPConn.getConnection();
		MemberDAO dao = new MemberDAO(conn);
		
		String cp = req.getContextPath();
		String uri = req.getRequestURI();
		
		String url;
		
		//ȸ������
		if(uri.indexOf("joinStep01.do")!=-1){ //1�ܰ�
			
			url = "/monnami/member/joinStep01.jsp";
			forward(req, resp, url);		
		
		//ȸ������ �Ϸ�
		}else if(uri.indexOf("joinStep02.do")!=-1){
			
			MemberDTO dto = new MemberDTO();
			
			int maxNum = dao.getMaxNum();
			
			dto.setMember_id(maxNum+1);
			dto.setMember_name(req.getParameter("member_name"));
			dto.setMember_login(req.getParameter("member_login"));
			dto.setMember_password(req.getParameter("member_password"));
			dto.setMember_email(req.getParameter("member_email"));
			dto.setMember_phone(req.getParameter("member_phone"));
			dto.setMember_birth(req.getParameter("member_birth"));
			
			dao.insertData(dto);
			
			url = cp + "/monnami/member/joinStep02.jsp";
			resp.sendRedirect(url);			
		
		//�α���
		}else if(uri.indexOf("loginPage.do")!=-1){
			
			url = "/monnami/member/loginPage.jsp";
			forward(req, resp, url);
			
		//�α��� �Ϸ�	
/*		}else if(uri.indexOf("login_ok.do")!=-1){
			
			String member_email = req.getParameter("member_email");
			String member_password = req.getParameter("member_password");
			
			MemberDTO dto = dao.getReadData(member_email);
			
			if(dto==null||!dto.getMember_password().equals(member_password)){
				
				req.setAttribute("result", 0);
				req.setAttribute("message", "���̵� �Ǵ� �н����带 ��Ȯ�� �Է��ϼ���!");
				
				url = "/monnami/monnamiMain.jsp";
				forward(req, resp, url);
				
				return;*/
				
		

		}else if(uri.indexOf("login_ok.do")!=-1){
		
			String member_login = req.getParameter("member_login");
			String member_password = req.getParameter("member_password");
			
			MemberDTO dto = dao.getReadData(member_login);
			
			if(dto==null||!dto.getMember_password().equals(member_password)){
				
				req.setAttribute("result", 0);
				req.setAttribute("message", "���̵� �Ǵ� �н����带 ��Ȯ�� �Է��ϼ���!");
				
				url = "/monnami/mb/loginPage.do";
				forward(req, resp, url);
				
				return;
				
			}	
			
			CustomInfo info = new CustomInfo();
			
			info.setMember_id(dto.getMember_id());
			info.setMemeber_login(dto.getMember_login());
			info.setMember_password(dto.getMember_password());
			
			//session ��ü�� �����Ͽ� session �� ��û
			HttpSession session = req.getSession();
			
			session.setAttribute("customInfo", info);
			
			url = cp+"/monnami/monnamiMain.jsp";
			resp.sendRedirect(url);	
		
		//ȸ������ ����
		}else if(uri.indexOf("mypage.do")!=-1){
				
			url = "/monnami/member/myPage.jsp";
			forward(req, resp, url);		
	
		//�α׾ƿ�	
		}else if(uri.indexOf("logout.do")!=-1){
			
			HttpSession session = req.getSession();
			
			session.removeAttribute("customInfo");
			session.invalidate();
			
			url = cp+"/monnami/monnamiMain.jsp";
			resp.sendRedirect(url);
		
		//����
		}else if(uri.indexOf("update.do")!=-1){
			
			HttpSession session = req.getSession();
			
			CustomInfo info = (CustomInfo)session.getAttribute("customInfo");
			
			MemberDTO dto = dao.getReadData(info.getMemeber_login());
			
			if(dto==null){
				
				url = cp + "/monnami/mb/mypage.do";
				resp.sendRedirect(url);
				
			}
			
			req.setAttribute("dto", dto);
			
			url = "/monnami/member/memberUpdate.jsp";
			forward(req, resp, url);
		
		//���� �Ϸ�
		}else if(uri.indexOf("updated_ok.do")!=-1){

			MemberDTO dto = new MemberDTO();
			
			dto.setMember_name(req.getParameter("member_name"));
			dto.setMember_password(req.getParameter("member_password"));
			dto.setMember_phone(req.getParameter("member_phone"));
			dto.setMember_email(req.getParameter("member_email"));
			dto.setMember_phone(req.getParameter("member_phone"));
			
			
			dao.updateData(dto);
			
			url = cp + "/monnami/monnamiMain.jsp";
			resp.sendRedirect(url);
		
			
		//��й�ȣ ã��
		}else if(uri.indexOf("searchpw.do")!=-1){
			
			url = "/member/searchpw.jsp";
			forward(req, resp, url);
					
		}else if(uri.indexOf("searchpw_ok.do")!=-1){
			
			String member_email = req.getParameter("member_email");
			String member_phone = req.getParameter("member_phone");
			
			MemberDTO dto = dao.getReadData(member_email);
			
			if(dto==null||!dto.getMember_phone().equals(member_phone)){
				
				req.setAttribute("result", 0);
				req.setAttribute("message", "ȸ�������� �������� �ʽ��ϴ�.");
				
				url = "/member/login.jsp";
				forward(req, resp, url);
				
				return;
			}else{
				
				req.setAttribute("result", 0);
				req.setAttribute("message", "��й�ȣ�� [" + dto.getMember_password() + "] �Դϴ�.");
				
				url = "/member/login.jsp";
				forward(req, resp, url);
				
				return;
				
			}
			
		}
		
	}
		
}
