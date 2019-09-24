package com.monnami;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sun.org.apache.bcel.internal.generic.ARRAYLENGTH;
import com.util.DBCPConn;
import com.util.MyUtil;

public class ProductServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	
	protected void forward(HttpServletRequest req, HttpServletResponse resp,String url)
			throws ServletException, IOException {
		
		RequestDispatcher rd = req.getRequestDispatcher(url);
		rd.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		Connection conn = DBCPConn.getConnection();
		ProductDAO dao = new ProductDAO(conn);
		
		MyUtil myUtil = new MyUtil();
		
		String cp = req.getContextPath();
		String uri = req.getRequestURI();
		
		String url;
		
		//파일 업로드 위치
		String root = getServletContext().getRealPath("/");
		String path = root + File.separator + "monnami" + File.separator + "content" + File.separator + "images";
		
		File f= new File(path);
		if(!f.exists()){
			
			f.mkdirs();
			
		}
		
		//==============메인 창==============
		if(uri.indexOf("main.do")!=-1){
			
			String pageNum = req.getParameter("pageNum");
			
			int currentPage = 1;
			
			if(pageNum!=null)
				currentPage = Integer.parseInt(pageNum);
			
			String searchValue = req.getParameter("searchValue");
			
			if(searchValue==null){
				searchValue = "";
			}else{
				if(req.getMethod().equalsIgnoreCase("GET")){
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}
			
			int dataCount  = dao.getDataCount(searchValue);
			
			int numPerPage = 5;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);
			
			if(currentPage>totalPage)
				currentPage = totalPage;
			
			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage; 
			
			List<ProductDTO> lists = dao.getLists(start, end, searchValue);
			
			String param = "";
			
			if(!searchValue.equals("")){
				
				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
				
			}
			
			//수정 필요!!!(주소 확정 시 작성)
			String listUrl = cp + "/monnami/product/main.do";
			
			if(!param.equals("")){
				listUrl += "?"+param;
			}
			
			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);
			
			//포워딩 데이터
			req.setAttribute("lists", lists);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			
			url = "/monnami/content/content_main.jsp";
			forward(req, resp, url);
		
		//============리스트(note)============
		}else if(uri.indexOf("note.do")!=-1){
				
			//수정 필요
			String product_subList = req.getParameter("product_subList");
			
			if(product_subList==null){
				
				product_subList = "%%";
				
			}
			
			
			String pageNum = req.getParameter("pageNum");
			
			int currentPage = 1;
			
			if(pageNum!=null)
				currentPage = Integer.parseInt(pageNum);

			int dataCount  = dao.getSubDataCountNote(product_subList);

			int numPerPage = 8;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			if(currentPage>totalPage)
				currentPage = totalPage;

			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage; 

			List<ProductDTO> lists = dao.getSubListNote(product_subList);
			
			
			String param = "";

			//수정 필요!!!(주소 확정 시 작성)
			String listUrl = cp + "/monnami/product/Main.do";

			if(!param.equals("")){
				listUrl += "?"+param;
			}

			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);
			
			if(product_subList.equals("%%")){
				
				product_subList = "mainNote";
				
			}

			//이미지는 다이렉트로 경로를 적어줘야함
			
			String imagePath = cp + "/monnami/content/images";
			
			//포워딩 데이터
			req.setAttribute("imagePath", imagePath);
			req.setAttribute("lists", lists);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			
			
			
			
			
			
			
			
			
			
			url = "/monnami/content/note/content_" + product_subList + ".jsp";
			forward(req, resp, url);

		//============리스트(interior)============
		}else if(uri.indexOf("interior.do")!=-1){

			//수정 필요
			String product_subList = req.getParameter("product_subList");
			
			if(product_subList==null){
				
				product_subList = "%%";
				
			}

			String pageNum = req.getParameter("pageNum");

			int currentPage = 1;

			if(pageNum!=null)
				currentPage = Integer.parseInt(pageNum);

			String searchValue = req.getParameter("searchValue");

			if(searchValue==null){
				searchValue = "";
			}else{
				if(req.getMethod().equalsIgnoreCase("GET")){
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}

			int dataCount  = dao.getSubDataCountInterior(product_subList);

			int numPerPage = 8;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			if(currentPage>totalPage)
				currentPage = totalPage;

			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage; 

			List<ProductDTO> lists = dao.getSubListInterior(product_subList);

			String param = "";

			if(!searchValue.equals("")){

				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");

			}

			//수정 필요!!!(주소 확정 시 작성)
			String listUrl = cp + "/monnami/product/Main.do";

			if(!param.equals("")){
				listUrl += "?"+param;
			}

			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);

			String imagePath = cp + "/monnami/content/images";
			
			if(product_subList.equals("%%")){
				
				product_subList = "mainInterior";
				
			}

			//포워딩 데이터
			req.setAttribute("imagePath", imagePath);
			req.setAttribute("lists", lists);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);

			url = "/monnami/content/interior/content_" + product_subList + ".jsp";
			forward(req, resp, url);

		//============리스트(imagin)============
		}else if(uri.indexOf("imagin.do")!=-1){

			//수정 필요
			String product_subList = req.getParameter("product_subList");
			
			if(product_subList==null){
				
				product_subList = "%%";
				
			}

			String pageNum = req.getParameter("pageNum");

			int currentPage = 1;

			if(pageNum!=null)
				currentPage = Integer.parseInt(pageNum);

			String searchValue = req.getParameter("searchValue");

			if(searchValue==null){
				searchValue = "";
			}else{
				if(req.getMethod().equalsIgnoreCase("GET")){
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}

			int dataCount  = dao.getSubDataCountImagin(product_subList);

			int numPerPage = 8;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			if(currentPage>totalPage)
				currentPage = totalPage;

			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage; 

			List<ProductDTO> lists = dao.getSubListImagin(product_subList);

			String param = "";

			if(!searchValue.equals("")){

				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");

			}

			//수정 필요!!!(주소 확정 시 작성)
			String listUrl = cp + "/monnami/product/Main.do";

			if(!param.equals("")){
				listUrl += "?"+param;
			}

			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);

			String imagePath = cp + "/monnami/content/images";
			
			if(product_subList.equals("%%")){
				
				product_subList = "mainImagin";
				
			}

			//포워딩 데이터
			req.setAttribute("imagePath", imagePath);
			req.setAttribute("lists", lists);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);

			url = "/monnami/content/imagin/content_" + product_subList + ".jsp";
			forward(req, resp, url);

		//============리스트(life)============
		}else if(uri.indexOf("life.do")!=-1){

			//수정 필요
			String product_subList = req.getParameter("product_subList");
			
			if(product_subList==null){
				
				product_subList = "%%";
				
			}

			String pageNum = req.getParameter("pageNum");

			int currentPage = 1;

			if(pageNum!=null)
				currentPage = Integer.parseInt(pageNum);

			String searchValue = req.getParameter("searchValue");

			if(searchValue==null){
				searchValue = "";
			}else{
				if(req.getMethod().equalsIgnoreCase("GET")){
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}

			int dataCount  = dao.getSubDataCountLife(product_subList);

			int numPerPage = 8;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			if(currentPage>totalPage)
				currentPage = totalPage;

			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage; 

			List<ProductDTO> lists = dao.getSubListLife(product_subList);

			String param = "";

			if(!searchValue.equals("")){

				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");

			}

			//수정 필요!!!(주소 확정 시 작성)
			String listUrl = cp + "/monnami/product/Main.do";

			if(!param.equals("")){
				listUrl += "?"+param;
			}

			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);

			String imagePath = cp + "/monnami/content/images";
			
			if(product_subList.equals("%%")){
				
				product_subList = "mainLife";
				
			}

			//포워딩 데이터
			req.setAttribute("imagePath", imagePath);
			req.setAttribute("lists", lists);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);

			url = "/monnami/content/life/content_" + product_subList + ".jsp";
			forward(req, resp, url);

			//=======================물품 입력창 이동=====================
		}else if(uri.indexOf("adminArticle.do")!=-1){

			int maxNum = 0;

			maxNum = dao.getMaxNum() + 1;

			req.setAttribute("maxNum",maxNum);

			url = "/monnami/article/adminArticle.jsp";
			forward(req, resp, url);

			//=======================물품 입력=====================
		}else if(uri.indexOf("adminArticle_ok.do")!=-1){
			
			//파일 업로드
			String encTyoe = "UTF-8";
			int maxSize = 10*1024*1024;
			
			MultipartRequest mr = new MultipartRequest(req, path, maxSize, encTyoe, new DefaultFileRenamePolicy());
			
			ProductDTO dto = new ProductDTO();
			
			int maxNum = dao.getMaxNum();
			
			dto.setProduct_id(maxNum + 1);
			dto.setProduct_name(mr.getParameter("product_name"));
			dto.setProduct_mainList(mr.getParameter("product_mainList"));
			dto.setProduct_cost(mr.getParameter("product_cost"));
			
			String product_subList = mr.getParameter("product_subList");
			String product_subList1 = mr.getParameter("product_subList1");
			String product_subList2 = mr.getParameter("product_subList2");
			String product_subList3 =  mr.getParameter("product_subList3");
			
			if(product_subList!=null){
				
				dto.setProduct_subList(product_subList);
				
			}else if(product_subList1!=null){
				
				dto.setProduct_subList(product_subList1);
				
			}else if(product_subList2!=null){
				
				dto.setProduct_subList(product_subList2);
				
			}else{
				
				dto.setProduct_subList(product_subList3);
				
			}
			
			dao.insertData(dto);

			//업로드한 파일의 정보추출(DB에 파일 정보 입력)
			if(mr.getFile("mainPhoto")!=null){
				
				dto.setProductSub2_locate("main");
				dto.setProductSub2_saveFileName(mr.getFilesystemName("mainPhoto"));
				dto.setProductSub2_originalFileName(mr.getOriginalFileName("mainPhoto"));
				
				dao.insertSub2Data(dto);
				
			}
			
			if(mr.getFile("subPhoto")!=null){
				
				dto.setProductSub2_locate("sub");
				dto.setProductSub2_saveFileName(mr.getFilesystemName("subPhoto"));
				dto.setProductSub2_originalFileName(mr.getOriginalFileName("subPhoto"));
				
				dao.insertSub2Data(dto);
				
			}
			
			if(mr.getFile("contentPhoto")!=null){
				
				dto.setProductSub2_locate("content");
				dto.setProductSub2_saveFileName(mr.getFilesystemName("contentPhoto"));
				dto.setProductSub2_originalFileName(mr.getOriginalFileName("contentPhoto"));
				
				dao.insertSub2Data(dto);
				
			}
			
			String productSub_stockRed = mr.getParameter("productSub_stockRed");
			String productSub_stockYellow = mr.getParameter("productSub_stockYellow");
			String productSub_stockGreen = mr.getParameter("productSub_stockGreen");
			String productSub_stockBlue = mr.getParameter("productSub_stockBlue");
			String productSub_stockBlack = mr.getParameter("productSub_stockBlack");
			
			if(productSub_stockRed!=null && !productSub_stockRed.equals("")){
				dto.setProductSub_color(mr.getParameter("productSub_colorRed"));
				dto.setProductSub_stock(productSub_stockRed);
				dao.insertDataSub(dto);
			}
			
			if(productSub_stockYellow!=null && !productSub_stockYellow.equals("")){
				dto.setProductSub_color(mr.getParameter("productSub_colorYellow"));
				dto.setProductSub_stock(productSub_stockYellow);
				dao.insertDataSub(dto);
				
			}

			if(productSub_stockGreen!=null && !productSub_stockGreen.equals("")){
				dto.setProductSub_color(mr.getParameter("productSub_colorGreen"));
				dto.setProductSub_stock(productSub_stockGreen);
				dao.insertDataSub(dto);
			}

			if(productSub_stockBlue!=null && !productSub_stockBlue.equals("")){
				dto.setProductSub_color(mr.getParameter("productSub_colorBlue"));
				dto.setProductSub_stock(productSub_stockBlue);
				dao.insertDataSub(dto);
			}

			if(productSub_stockBlack!=null && !productSub_stockBlack.equals("")){
				dto.setProductSub_color(mr.getParameter("productSub_colorBlack"));
				dto.setProductSub_stock(productSub_stockBlack);
				dao.insertDataSub(dto);
			}
			
			url = cp + "/monnami/product/main.do";
			resp.sendRedirect(url);					
		
		//==============물품 1개 출력=============
		}else if(uri.indexOf("article.do")!=-1){
			
			int product_id = Integer.parseInt(req.getParameter("product_id"));
			
			
			String pageNum = req.getParameter("pageNum");
			
			ProductDTO dto = dao.getReadDataMain(product_id);
			ProductDTO dto2 = dao.getReadDataSub(product_id);
			ProductDTO dto3=dao.getReadData(product_id);
			
			
/*			System.out.println(dto2.getProductSub2_saveFileName());
			System.out.println(dto2.getProductSub2_saveFileNameContent());
			System.out.println(dto2.getProductSub2_saveFileNameSub());*/
			if(dto == null){
				
				//수정 필요!!!!!!!
				url = cp + "/monnami/main/main.do";
				resp.sendRedirect(url);

			}
			req.setAttribute("dto3", dto3);
			req.setAttribute("dto", dto);
			req.setAttribute("dto2", dto2);
			req.setAttribute("pageNum", pageNum);
			
			url = "/monnami/article/article.jsp";
			forward(req, resp, url);
			
			
			
			//========================장바구니 =====================//
		}else if(uri.indexOf("wishlist.do")!=-1){
			System.out.println("*************************");
			
			int product_id=Integer.parseInt(req.getParameter("product_id"));
			System.out.println(product_id);
			ProductDTO dto=new ProductDTO();
			

			
			String product_cost=req.getParameter("product_cost");
			String product_name=req.getParameter("product_name");
			String productsub2_savefilename=req.getParameter("productsub2_savefilename");
			int member_id=Integer.parseInt(req.getParameter("member_id"));
			
		
			
			try {
				//dto담아줘
				
				//insert
				dao.insertCartData(dto);
				
				List<ProductDTO> lists=dao.getCartList(product_id);
				
				req.setAttribute("lists", lists);
			
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
			} catch (Exception e) {
				System.out.println("wishlist.do : " + e.toString());
			}
			/*req.setAttribute("product_id", product_id);
			req.setAttribute("product_cost", product_cost);
			req.setAttribute("product_name", product_name);
			req.setAttribute("product_cost", product_cost);
			req.setAttribute("productsub2_savefilename", productsub2_savefilename);
			
			*/
			
			
			
			
			url=cp+"/monnami/member/wishList1.jsp";
			forward(req, resp, url);
			
		
			
			
			
			
		}
		
	}
		
		
		
		
		

}
