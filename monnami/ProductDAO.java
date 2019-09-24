package com.monnami;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
	
	private Connection conn = null;
	
	public ProductDAO(Connection conn){
		this.conn = conn;
	}
	
	//===========================product=====================================
	
	//전체 물품 수 구하기
	public int getMaxNum(){
		
		int maxNum = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(max(product_id),0) from product";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next())
				maxNum = rs.getInt(1);
				
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return maxNum;
		
	}

	//물품 입력
	public int insertData(ProductDTO dto){
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "insert into product (product_id,product_name,product_mainList,product_cost,";
			sql+= "product_subList) values (?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1,dto.getProduct_id());
			pstmt.setString(2, dto.getProduct_name());
			pstmt.setString(3, dto.getProduct_mainList());
			pstmt.setString(4, dto.getProduct_cost());
			pstmt.setString(5, dto.getProduct_subList());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	
	//물품 입력
	public int insertDataSub(ProductDTO dto){
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "insert into productSub (product_id,productSub_color,productSub_stock) ";
			sql+= "values (?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1,dto.getProduct_id());
			pstmt.setString(2, dto.getProductSub_color());
			pstmt.setString(3, dto.getProductSub_stock());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	
/*	//물품 정보 가져오기	
	public ProductDTO getReadData(String product_name){
		
		ProductDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select product_id,product_name,product_color,product_mainList,product_subList ";
			sql+= "from product where product_name = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, product_name);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				
				dto = new ProductDTO();
				
				dto.setProduct_id(rs.getInt("product_id"));
				dto.setProduct_name(rs.getString("product_name"));
				dto.setProduct_mainList(rs.getString("product_mainList"));
				dto.setProduct_subList(rs.getString("product_subList"));
				
			}
			
			rs.close();
			pstmt.close();
				
		} catch (Exception e) {
			System.out.println(e.toString());
		}
				
		return dto;		
		
	}*/
	
	//물품 전체 정보 가져오기
	public List<ProductDTO> getLists(int start, int end, String searchValue){
		
		List<ProductDTO> lists = new ArrayList<ProductDTO>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			searchValue = "%" + searchValue + "%";
			
			sql = "select * from (";
			sql+= "select rownum rnum, data.* from (";
			sql+= "select product_id,product_name,product_cost,product_mainList,product_subList ";
			sql+= "from product where product_name like ? ";
			sql+= "order by product_id desc) data) ";
			sql+= "where rnum>=? and rnum<=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				ProductDTO dto = new ProductDTO();
				
				dto.setProduct_id(rs.getInt("product_id"));
				dto.setProduct_name(rs.getString("product_name"));
				dto.setProduct_mainList(rs.getString("product_mainList"));
				dto.setProduct_subList(rs.getString("product_subList"));
				
				lists.add(dto);
				
			}
			
			rs.close();
			pstmt.close();	
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
		
	}
	
	//물품 전체 데이터 갯수
	public int getDataCount(String searchValue){
		
		int totalDataCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			searchValue = "%" + searchValue + "%"; //검색용
			
			sql = "select nvl(count(*),0) from product ";
			sql+= "where product_name like ?"; //검색용
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue); //검색용
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				
				totalDataCount = rs.getInt(1);
				
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return totalDataCount;
		
	}
	
/*	//물품 대분류 정보 가져오기
	public List<ProductDTO> getMainLists(String product_mainList,int start, int end){
		
		List<ProductDTO> lists = new ArrayList<ProductDTO>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select * from (";
			sql+= "select rownum rnum, data.* from (";
			sql+= "select product_id,product_name,product_color,product_mainList,product_subList ";
			sql+= "from product where product_mainList=? ";
			sql+= "order by product_id desc) data) ";
			sql+= "where rnum>=? and rnum<=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, product_mainList);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				ProductDTO dto = new ProductDTO();
				
				dto.setProduct_id(rs.getInt("product_id"));
				dto.setProduct_name(rs.getString("product_name"));
				dto.setProduct_mainList(rs.getString("product_mainList"));
				dto.setProduct_subList(rs.getString("product_subList"));
				
				lists.add(dto);
				
			}
			
			rs.close();
			pstmt.close();	
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
		
	}*/
	
	//대분류 물품 전체 데이터 갯수
	public int getMainDataCount(String product_mainList){
		
		int totalDataCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(count(*),0) from product ";
			sql+= "where product_mainList=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, product_mainList);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				
				totalDataCount = rs.getInt(1);
				
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return totalDataCount;
		
	}
	
	//물품 소분류 정보 가져오기
	public List<ProductDTO> getSubLists(String product_subList,int start, int end){
		
		List<ProductDTO> lists = new ArrayList<ProductDTO>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select * from (";
			sql+= "select rownum rnum, data.* from (";
			sql+= "select product_id,product_name,product_color,product_cost,product_mainList,product_subList ";
			sql+= "from product where product_subList=? ";
			sql+= "order by product_id desc) data) ";
			sql+= "where rnum>=? and rnum<=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, product_subList);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				ProductDTO dto = new ProductDTO();
				
				dto.setProduct_id(rs.getInt("product_id"));
				dto.setProduct_name(rs.getString("product_name"));
				dto.setProduct_mainList(rs.getString("product_mainList"));
				dto.setProduct_subList(rs.getString("product_subList"));
				
				lists.add(dto);
				
			}
			
			rs.close();
			pstmt.close();	
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
		
	}
	
	//소분류 물품 전체 데이터 갯수(note)
	public int getSubDataCountNote(String product_subList){

		int totalDataCount = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select nvl(count(*),0) from product ";
			sql+= "where product_subList like ? and product_mainList = 'note'";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, product_subList);

			rs = pstmt.executeQuery();

			if(rs.next()){

				totalDataCount = rs.getInt(1);

			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return totalDataCount;

	}
	//소분류 물품 전체 데이터 갯수(interior)
	public int getSubDataCountInterior(String product_subList){

		int totalDataCount = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select nvl(count(*),0) from product ";
			sql+= "where product_subList like ? and product_mainList = 'interior'";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, product_subList);

			rs = pstmt.executeQuery();

			if(rs.next()){

				totalDataCount = rs.getInt(1);

			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return totalDataCount;

	}
	//소분류 물품 전체 데이터 갯수(imagin)
	public int getSubDataCountImagin(String product_subList){

		int totalDataCount = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select nvl(count(*),0) from product ";
			sql+= "where product_subList like ? and product_mainList = 'imagin'";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, product_subList);

			rs = pstmt.executeQuery();

			if(rs.next()){

				totalDataCount = rs.getInt(1);

			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return totalDataCount;

	}
	//소분류 물품 전체 데이터 갯수(life)
	public int getSubDataCountLife(String product_subList){

		int totalDataCount = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select nvl(count(*),0) from product ";
			sql+= "where product_subList like ? and product_mainList = 'life'";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, product_subList);

			rs = pstmt.executeQuery();

			if(rs.next()){

				totalDataCount = rs.getInt(1);

			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return totalDataCount;

	}
	
	//하나의 데이터 추출(1)
	public ProductDTO getReadDataMain(int product_id){
		
		ProductDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select a.product_id as id,a.product_name as name,a.product_cost as cost,a.product_mainlist as mainlist,a.product_sublist as sublist,";
			sql+= "b.productSub_color as color,b.productSub_stock as stock ";
			sql+= "from product a,productSub b ";
			sql+= "where a.product_id = b.product_id and a.product_id = " + product_id;
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				dto = new ProductDTO();
				
				dto.setProduct_id(rs.getInt("id"));
				dto.setProduct_name(rs.getString("name"));
				dto.setProduct_cost(rs.getString("cost"));
				dto.setProduct_mainList(rs.getString("mainlist"));
				dto.setProduct_subList(rs.getString("sublist"));
				
				if(rs.getString("color").equals("red") && rs.getString("color")!=null){
					
					dto.setProductSub_color1(rs.getString("color"));
					
				}
				
				if(rs.getString("color").equals("yellow") && rs.getString("color")!=null){
					
					dto.setProductSub_color1(rs.getString("color"));
					
				}
				
				if(rs.getString("color").equals("green") && rs.getString("color")!=null){
					
					dto.setProductSub_color1(rs.getString("color"));
					
				}
				
				if(rs.getString("color").equals("black") && rs.getString("color")!=null){
					
					dto.setProductSub_color1(rs.getString("color"));
					
				}
				
				if(rs.getString("color").equals("blue") && rs.getString("color")!=null){
					
					dto.setProductSub_color1(rs.getString("color"));
					
				}

				dto.setProductSub_stock(rs.getString("stock"));
				
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
	
	}
	
	//하나의 데이터 추출(2)
	public ProductDTO getReadDataSub(int product_id){
		
		ProductDTO dto = new ProductDTO();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select productSub2_saveFileName as save,productSub2_locate as locate ";
			sql+= "from productSub2 where product_id = " + product_id;

			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				dto.setProductSub2_locate(rs.getString("locate"));
				
				if(rs.getString("locate").equals("main") && rs.getString("locate")!=null){
					
					dto.setProductSub2_saveFileName(rs.getString("save"));
					
				}
				
				if(rs.getString("locate").equals("sub") && rs.getString("locate")!=null){
					
					dto.setProductSub2_saveFileNameSub(rs.getString("save"));
					
				}
				
				if(rs.getString("locate").equals("content") && rs.getString("locate")!=null){
					
					dto.setProductSub2_saveFileNameContent(rs.getString("save"));
					
				}
				
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
	
	}
	
	
/*	//물품 정보 수정
	public int updateData(ProductDTO dto){
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "update product set product_, member_phone=? where member_email=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getMember_password());
			pstmt.setString(2, dto.getMember_phone());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}*/
	
	//=======================photo======================
	
	//id의 max값 구하기
	public int getPhotoMaxNum(){
		
		int maxNum=0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(max(num),0) from photo";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				
				maxNum = rs.getInt(1);
				
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return maxNum;
		
	}
	
	//소분류 정보 불러오기(note)
	public List<ProductDTO> getSubListNote(String product_subList){
		
		List<ProductDTO> lists = new ArrayList<ProductDTO>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select a.product_id as id,a.product_cost as cost,a.product_name as name,b.productsub2_saveFileName as save,b.productsub2_originalFileName as original ";
			sql+= "from product a,productSub2 b ";
			sql+= "where a.product_id = b.product_id and a.product_sublist like ? and b.PRODUCTSUB2_LOCATE like '%main%' and a.product_mainlist = 'note'";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, product_subList);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				ProductDTO dto = new ProductDTO();
				
				dto.setProduct_id(rs.getInt("id"));
				dto.setProduct_cost(rs.getString("cost"));
				dto.setProduct_name(rs.getString("name"));
				dto.setProductSub2_saveFileName(rs.getString("save"));
				dto.setProductSub2_originalFileName(rs.getString("original"));
				
				lists.add(dto);
			
			}
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
		
	}
	
	//소분류 정보 불러오기(interior)
	public List<ProductDTO> getSubListInterior(String product_subList){
		
		List<ProductDTO> lists = new ArrayList<ProductDTO>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select a.product_id as id,a.product_cost as cost,a.product_name as name,b.productsub2_saveFileName as save,b.productsub2_originalFileName as original ";
			sql+= "from product a,productSub2 b ";
			sql+= "where a.product_id = b.product_id and a.product_sublist like ? and b.productsub2_saveFileName like '%main%' and a.product_mainlist = 'interior'";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, product_subList);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				ProductDTO dto = new ProductDTO();
				
				dto.setProduct_id(rs.getInt("id"));
				dto.setProduct_cost(rs.getString("cost"));
				dto.setProduct_name(rs.getString("name"));
				dto.setProductSub2_saveFileName(rs.getString("save"));
				dto.setProductSub2_originalFileName(rs.getString("original"));
				
				lists.add(dto);
			
			}
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
		
	}
	
	//소분류 정보 불러오기(imagin)
	public List<ProductDTO> getSubListImagin(String product_subList){
		
		List<ProductDTO> lists = new ArrayList<ProductDTO>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select a.product_id as id,a.product_cost as cost,a.product_name as name,b.productsub2_saveFileName as save,b.productsub2_originalFileName as original ";
			sql+= "from product a,productSub2 b ";
			sql+= "where a.product_id = b.product_id and a.product_sublist like ? and b.productsub2_saveFileName like '%main%' and a.product_mainlist = 'imagin'";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, product_subList);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				ProductDTO dto = new ProductDTO();
				
				dto.setProduct_id(rs.getInt("id"));
				dto.setProduct_cost(rs.getString("cost"));
				dto.setProduct_name(rs.getString("name"));
				dto.setProductSub2_saveFileName(rs.getString("save"));
				dto.setProductSub2_originalFileName(rs.getString("original"));
				
				lists.add(dto);
			
			}
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
		
	}
	
	//소분류 정보 불러오기(life)
	public List<ProductDTO> getSubListLife(String product_subList){
		
		List<ProductDTO> lists = new ArrayList<ProductDTO>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select a.product_id as id,a.product_cost as cost,a.product_name as name,b.productsub2_saveFileName as save,b.productsub2_originalFileName as original ";
			sql+= "from product a,productSub2 b ";
			sql+= "where a.product_id = b.product_id and a.product_sublist like ? and b.productsub2_saveFileName like '%main%' and a.product_mainlist = 'life'";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, product_subList);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				ProductDTO dto = new ProductDTO();
				
				dto.setProduct_id(rs.getInt("id"));
				dto.setProduct_cost(rs.getString("cost"));
				dto.setProduct_name(rs.getString("name"));
				dto.setProductSub2_saveFileName(rs.getString("save"));
				dto.setProductSub2_originalFileName(rs.getString("original"));
				
				lists.add(dto);
			
			}
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
		
	}
	
	
	//sub2 입력
	public int insertSub2Data(ProductDTO dto){
		
		int result = 0;
		
		PreparedStatement pstmt = null;		
		String sql;
		
		try {
			
			sql = "insert into productSub2 (product_id,product_mainList,product_subList,productSub2_locate,";
			sql+= "productSub2_saveFileName,productSub2_originalFileName)";
			sql+= "values (?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getProduct_id());
			pstmt.setString(2, dto.getProduct_mainList());
			pstmt.setString(3, dto.getProduct_subList());
			pstmt.setString(4, dto.getProductSub2_locate());
			pstmt.setString(5, dto.getProductSub2_saveFileName());
			pstmt.setString(6, dto.getProductSub2_originalFileName());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	//검색
	public List<ProductDTO> getSearchData(String searchValue){
		
		List<ProductDTO> lists=new ArrayList<ProductDTO>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			System.out.println(searchValue+"메롱");
			searchValue = "%" + searchValue + "%"; //검색용
			
			sql="select a.product_id as id,a.product_cost as cost,a.product_name as name,b.productsub2_saveFileName as save,";
			sql+="b.productsub2_originalFileName as original ";
			sql+="from product a,productSub2 b ";
			sql+="where a.product_id = b.product_id and a.product_name like ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue); //검색용
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				
				ProductDTO dto=new ProductDTO();
				
				dto.setProduct_id(rs.getInt("id"));
				dto.setProduct_cost(rs.getString("cost"));
				dto.setProduct_name(rs.getString("name"));
				dto.setProductSub2_saveFileName(rs.getString("save"));
				dto.setProductSub2_originalFileName(rs.getString("original"));
				
				
				lists.add(dto);
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
		
	}
	
	//=====================물품정보 가져오기==================
	//물품 정보 가져오기	
		public ProductDTO getReadData(int product_id){
			
			ProductDTO dto = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql;
			
			try {
				
				sql = "select product_id,product_name,product_cost ";
				sql+= "from product where product_id = ?";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, product_id);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()){
					
					dto = new ProductDTO();
					
					dto.setProduct_id(rs.getInt("product_id"));
					dto.setProduct_name(rs.getString("product_name"));
					dto.setProduct_mainList(rs.getString("product_cost"));

					
				}
				
				rs.close();
				pstmt.close();
					
			} catch (Exception e) {
				System.out.println(e.toString());
			}
					
			return dto;		
			
		}
		//===========================장바구니=====================
		
		
		//장바구니 입력
		public int insertCartData(ProductDTO dto){//장바구니 담기
			
			
			int result = 0;
			PreparedStatement pstmt = null;
			String sql;
			
			try {
				
				sql = "insert into basket (basket_id,member_id,product_id,product_name,product_saveFileName,product_cost) ";
				sql+= "values ((select nvl(max(basket_id),0)+1 from basket),?,?,?,?,?)";

				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, dto.getMember_id());
				pstmt.setInt(2, dto.getProduct_id());
				pstmt.setString(3, dto.getProduct_name());
				pstmt.setString(4, dto.getProductSub2_saveFileName());
				pstmt.setString(5, dto.getProduct_cost());


				result = pstmt.executeUpdate();
				
				pstmt.close();
				
				
				
			} catch (Exception e) {
				System.out.println(e.toString());
				
			}
			
			return result;
			
		}
		
		
		//장바구니 내역 보기
		public List<ProductDTO> getCartList(int product_id){
			
			List<ProductDTO> lists=new ArrayList<ProductDTO>();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			String sql;
			


			try {
				sql="select * from (select rownum rnum, data.* from(";
				sql+="select BASKET_ID, MEMBER_ID, PRODUCT_ID, PRODUCT_COST, PRODUCT_NAME, PRODUCTSUB2_SAVEFILENAME ";
				sql+="from basket)data) ";
				sql+="where MEMBER_ID=? ";
				
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setInt(1, rs.getInt("member_id"));
				
				rs=pstmt.executeQuery();
				
				while(rs.next()){
					
					ProductDTO dto=new ProductDTO();
					
					dto.setBasket_id(rs.getInt("basket_id"));
					dto.setMember_id(rs.getInt("member_id"));
					dto.setProduct_id(rs.getInt("product_id"));
					dto.setProduct_cost(rs.getString("product_cost"));
					dto.setProduct_name(rs.getString("product_name"));
					dto.setProductSub2_saveFileName(rs.getString("productsub2_saveFileName"));
					
					
					
					lists.add(dto);	
					
				}
				rs.close();
				pstmt.close();
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return lists;
		}
		
		//장바구니 갯수
		public int getTotaCartData(int member_id){
			
			int totalData = 0;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			String sql;
			


			try {

				sql="select count(*) as totalData from baskey where member_id = ?";

				
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setInt(1, member_id);
				
				rs=pstmt.executeQuery();
				
				while(rs.next()){
					
					totalData = rs.getInt("totalData");
			
					
				}
				rs.close();
				pstmt.close();
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return totalData;
		}


		
	
		
		
		
		
		
		
		//장바구니삭제
		
		public int deleteCartData(int product_id){
			
			int result = 0;
			
			PreparedStatement pstmt = null;
			String sql;
			
			try {
				
				sql = "delete basket where product_id = ? ";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, product_id);
				
				result = pstmt.executeUpdate();
				
				pstmt.close();			
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}	
			
			return result;
			
		}


}
