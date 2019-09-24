package com.monnami;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.util.DBCPConn;
import com.util.MyUtil;


public class MonnamiServlet extends HttpServlet{

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
		String cp = req.getContextPath();
		Connection conn = DBCPConn.getConnection();
		MonnamiDAO dao=new MonnamiDAO(conn);
		

		String uri = req.getRequestURI();// /study의 뒷부분의 주소를 읽어옴///bbs/article.do
		
		String url;//포워딩할때 사용할 변수

		
		
		//===============공지사항작성============
		if(uri.indexOf("writenotice.do")!=-1){
		//req.setAttribute("maxNum", dao.getNoticeMaxNum());
		
		
		url="/monnami/qna/writenotice.jsp";
		forward(req, resp, url);	
	}else if(uri.indexOf("writenotice_ok.do")!=-1){
		
			MonnamiDTO dto=new MonnamiDTO();
			
			int maxNum=dao.getNoticeMaxNum();
		
			dto.setNotice_id(maxNum+1);
			dto.setNotice_subject(req.getParameter("notice_subject"));
			dto.setNotice_content(req.getParameter("notice_content"));
			dao.insertNoticeData(dto);
			
			url=cp+"/monnami/cust/notice.do";
			resp.sendRedirect(url);
			
			//===============공지사항삭제==============
	}else if(uri.indexOf("deletenotice_ok.do")!=-1){
		
		int notice_id=(Integer.parseInt(req.getParameter("notice_id")));
		
		dao.deleteNoiticeData(notice_id);
		url=cp+"/monnami/cust/notice.do";
		resp.sendRedirect(url);
			
		//===============1대1문의==============
		
		}else if(uri.indexOf("sendqna.do")!=-1){
			
			

			url="/monnami/qna/sendqna.jsp";
			forward(req, resp, url);
			
			
			
			
		}else if(uri.indexOf("sendqna_ok.do")!=-1){
			
			
			String root=getServletContext().getRealPath("/");
			String path=root+File.separator+"pds"+File.separator+"mailFile";
			
			File f=new File(path);
			if(!f.exists()){
				f.mkdirs();
			}
			
			String encType="UTF-8";
			int maxFileSize=10*1024*1024;
			
			MailSend mail=new MailSend();
			MultipartRequest mr=new MultipartRequest(req, path, maxFileSize, encType, new DefaultFileRenamePolicy());
			//MultipartRequest mr=new MultipartRequest( req,path,maxFileSize,encType,new DefaultFileRenamePolicy());
			
			
			mail.setSelec(mr.getParameter("selec"));
			mail.setSenderEmail(mr.getParameter("senderEmail"));
			mail.setSenderName(mr.getParameter("senderName"));
			mail.setReceiverEmail(mr.getParameter("receiverEmail"));
			mail.setSenderTel(mr.getParameter("senderTel"));
			mail.setCheck(mr.getParameter("check"));
			mail.setSubject(mr.getParameter("subject"));
			mail.setContent(mr.getParameter("content"));
			
			String fileName=mr.getFilesystemName("fileName"); //첨부파일name
			
			if(fileName!=null&&!fileName.equals("")){
				
				String fileFullPath=path+File.separator+fileName;
				
				mail.setFileFullPath(fileFullPath);
				mail.setOriginalFileName(mr.getOriginalFileName("fileName"));
				
			}
			
			mail.sendMail();	//전송
			
			url = cp + "/monnami/cust/sendqna.do";
			resp.sendRedirect(url);
		
			
			
			//===============검색페이지==============
		}else if(uri.indexOf("searchpage.do")!=-1){
			
			MyUtil myUil = new MyUtil();
			ProductDAO dao1 = new ProductDAO(conn);
			String searchValue = req.getParameter("searchValue");
			int dataCount = dao1.getDataCount(searchValue);

			List<ProductDTO> lists=	dao1.getSearchData(searchValue);
			System.out.println(searchValue);
			
			
			
			String param="";
			if(!searchValue.equals("")){
				
				param="?searchValue="+URLEncoder.encode(searchValue,"UTF-8");
				
			}

			String listUrl=cp+"/monnami/search/main.do?searchValue="+searchValue;	//myutil에게 줄 변수 
			
			if(!param.equals("")){
				listUrl+="?"+param;
			}

			String imagePath = cp + "/monnami/content/images";

			req.setAttribute("imagePath", imagePath);
			req.setAttribute("lists", lists);
			req.setAttribute("searchValue", searchValue);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("listUrl", listUrl);
			
			url="/monnami/searchResult/searchpage.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("notice.do")!=-1){
		
			List<MonnamiDTO> lists=dao.getNoticeLists();

			req.setAttribute("lists", lists);
		
			url="/monnami/qna/notice.jsp";
			forward(req, resp, url);	

		}

	}

}
