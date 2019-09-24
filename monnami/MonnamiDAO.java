package com.monnami;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MonnamiDAO {
	
	private Connection conn;
	
	public MonnamiDAO(Connection conn){
		this.conn = conn;
	}
	
	//=======================reivew======================
	
	//id의 max값 구하기
	public int getReviewMaxNum(){
		
		int maxNum=0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(max(num),0) from review";
			
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
	
	//입력
	public int insertReviewData(MonnamiDTO dto,int member_id,int product_id){
		
		int result = 0;
		
		PreparedStatement pstmt = null;		
		String sql;
		
		try {
			
			sql = "insert into review (review_id,member_id,product_id,review_subject,";
			sql+= "review_content,review_date,review_ip,review_count,review_saveFileName,review_originalFileName) ";
			sql+= "values (?,?,?,?,?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getReview_id());
			pstmt.setInt(2, member_id);
			pstmt.setInt(3, product_id);
			pstmt.setString(4, dto.getReview_subject());
			pstmt.setString(5, dto.getReview_content());
			pstmt.setString(6, dto.getReview_date());
			pstmt.setString(7, dto.getReview_ip());
			pstmt.setInt(8, dto.getReview_count());
			pstmt.setString(9, dto.getReview_saveFileName());
			pstmt.setString(10, dto.getReview_originalFileName());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	
	//물품별 데이터 검색
	public List<MonnamiDTO> getProductReviewLists(int product_id){
		
		List<MonnamiDTO> lists = new ArrayList<MonnamiDTO>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select rownum rnum, data.* from (";			
			sql+= "select review_id,member_id,product_id,review_subject,review_content,";
			sql+= "to_char(review_date,'YYYY-MM-DD') review_date,review_ip,review_count,";
			sql+= "review_saveFileName,review_originalFileName ";
			sql+= "from review where product_id=? ";  //검색용 내용 추가
			sql+= "order by review_id desc) data";	
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, product_id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				MonnamiDTO dto = new MonnamiDTO();
				
				dto.setReview_id(rs.getInt("review_id"));
				dto.setReview_subject(rs.getString("review_subject"));
				dto.setReview_content(rs.getString("review_content"));
				dto.setReview_date(rs.getString("review_date"));
				dto.setReview_ip(rs.getString("review_ip"));
				dto.setReview_count(rs.getInt("review_count"));
				dto.setReview_saveFileName(rs.getString("review_saveFileName"));
				dto.setReview_originalFileName(rs.getString("review_originalFileName"));
				
				lists.add(dto);
				
			}
			
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
	
	}	
	
	//회원별 데이터 검색
	public List<MonnamiDTO> getMemberReviewLists(int member_id){
		
		List<MonnamiDTO> lists = new ArrayList<MonnamiDTO>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select rownum rnum, data.* from (";			
			sql+= "select review_id,member_id,product_id,review_subject,review_content,";
			sql+= "to_char(review_date,'YYYY-MM-DD') review_date,review_ip,review_count,";
			sql+= "review_saveFileName,review_originalFileName ";
			sql+= "from review where product_id=? ";  //검색용 내용 추가
			sql+= "order by review_id desc) data";	
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, member_id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				MonnamiDTO dto = new MonnamiDTO();
				
				dto.setReview_id(rs.getInt("review_id"));
				dto.setReview_subject(rs.getString("review_subject"));
				dto.setReview_content(rs.getString("review_content"));
				dto.setReview_date(rs.getString("review_date"));
				dto.setReview_ip(rs.getString("review_ip"));
				dto.setReview_count(rs.getInt("review_count"));
				dto.setReview_saveFileName(rs.getString("review_saveFileName"));
				dto.setReview_originalFileName(rs.getString("review_originalFileName"));
				
				lists.add(dto);
				
			}
			
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
	
	}
	
	//review 조회수 증가
	public int updateReviewHitCount(int review_count){
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "update review set review_count=review_count+1 ";
			sql+= "where review_count=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, review_count);
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	
	//===================story=====================
	
	//id의 max값 구하기
	public int getStoryMaxNum(){
		
		int maxNum=0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(max(num),0) from story";
			
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
	
	//story 입력
	public int insertStoryData(MonnamiDTO dto, int product_id){
		
		int result = 0;
		
		PreparedStatement pstmt = null;		
		String sql;
		
		try {
			
			sql = "insert into story (story_id,product_id,story_subject,story_content,story_count) ";
			sql+= "values (?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getStory_id());
			pstmt.setInt(2, product_id);
			pstmt.setString(3, dto.getStory_subject());
			pstmt.setString(4, dto.getStory_content());
			pstmt.setInt(5, dto.getStory_count());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	
	//story 전체 데이터
	public List<MonnamiDTO> getStoryLists(int start, int end){
		
		List<MonnamiDTO> lists = new ArrayList<MonnamiDTO>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select rownum rnum, data.* from (";			
			sql+= "select story_id,product_id,story_subject,story_content,story_count ";
			sql+= "from story ";
			sql+= "order by story_id desc) data ";			
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				MonnamiDTO dto = new MonnamiDTO();
				
				dto.setStory_id(rs.getInt("story_id"));
				dto.setStory_subject(rs.getString("story_subject"));
				dto.setStory_content(rs.getString("story_content"));
				dto.setStory_count(rs.getInt("story_count"));
				
				lists.add(dto);
				
			}
			
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
	
	}	
	
	//story 전체 데이터 갯수
	public int getStoryDataCount(){
		
		int totalDataCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(count(*),0) from story";
			
			pstmt = conn.prepareStatement(sql);
			
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
	
	//id로 조회한 데이터
	public MonnamiDTO getReadStoryData(int story_id){
		
		MonnamiDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select story_id,story_subject,story_content,story_count ";
			sql+= "from story where story_id=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, story_id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				
				dto = new MonnamiDTO();
				
				dto.setStory_id(rs.getInt("story_id"));
				dto.setStory_subject(rs.getString("story_subject"));
				dto.setStory_content(rs.getString("story_content"));
				dto.setStory_count(rs.getInt("story_count"));				
				
			}
			
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
		
	}
	
	//story 삭제
	public int deleteStroyData(int story_id){
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "delete story where story_id=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, story_id);
			
			result = pstmt.executeUpdate();
			
			pstmt.close();			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}	
		
		return result;
		
	}

	//====================storyReview======================
	
	//id의 max값 구하기
	public int getStoryReviewMaxNum(){
		
		int maxNum=0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(max(num),0) from storyReview";
			
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
	
	//story 입력
	public int insertStoryReviewData(MonnamiDTO dto, int product_id, int story_id){
		
		int result = 0;
		
		PreparedStatement pstmt = null;		
		String sql;
		
		try {
			
			sql = "insert into storyReview (storyReview_id,story_id,product_id,storyReview_content,storyReview_ip,storyReview_date) ";
			sql+= "values (?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getStoryReview_id());
			pstmt.setInt(2, story_id);
			pstmt.setInt(3, product_id);
			pstmt.setString(4, dto.getStoryReview_content());
			pstmt.setString(5, dto.getStoryReview_ip());
			pstmt.setString(6, dto.getStoryReview_date());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	
	//story 전체 데이터
	public List<MonnamiDTO> getStoryReviewLists(int start, int end){
		
		List<MonnamiDTO> lists = new ArrayList<MonnamiDTO>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select rownum rnum, data.* from (";			
			sql+= "select storyReview_id,storyReview_content,storyReview_ip, ";
			sql+= "to_char(storyReview_date,'YYYY-MM-DD') storyReview_date from storyReview ";
			sql+= "order by storyRevie_id desc) data ";			
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				MonnamiDTO dto = new MonnamiDTO();
				
				dto.setStoryReview_id(rs.getInt("storyReview_id"));
				dto.setStoryReview_content(rs.getString("storyReview_content"));
				dto.setStoryReview_ip(rs.getString("storyReiview_ip"));
				dto.setStoryReview_date(rs.getString("storyReview_date"));
				
				lists.add(dto);
				
			}
			
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
	
	}	
	
	//story 전체 데이터 갯수
	public int getStoryReviewDataCount(){
		
		int totalDataCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(count(*),0) from storyReview";
			
			pstmt = conn.prepareStatement(sql);
			
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
	
	//id로 조회한 데이터
	public MonnamiDTO getReadStoryReviewData(int storyReview_id){
		
		MonnamiDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select storyReview_id,storyReview_subject,storyReview_content,storyReview_date ";
			sql+= "from story where story_id=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, storyReview_id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				
				dto = new MonnamiDTO();
				
				dto.setStoryReview_id(rs.getInt("storyReview_id"));
				dto.setStoryReview_content(rs.getString("storyReview_content"));
				dto.setStoryReview_ip(rs.getString("storyReiview_ip"));
				dto.setStoryReview_date(rs.getString("storyReview_date"));
				
			}
			
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
		
	}
	
	//storyReview 삭제
	public int deleteStroyReviewData(int storyReview_id){
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "delete storyReview where storyReview_id=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, storyReview_id);
			
			result = pstmt.executeUpdate();
			
			pstmt.close();			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}	
		
		return result;
		
	}	
	

	//=========================notice==========================
	
	//id의 max값 구하기
	public int getNoticeMaxNum(){
		
		int maxNum=0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(max(notice_id),0) from notice";
			
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
	
	//QnA 입력
	public int insertNoticeData(MonnamiDTO dto){
		
		int result = 0;
		
		PreparedStatement pstmt = null;		
		String sql;
		
		try {
			
			sql = "insert into notice (notice_id,member_id,notice_subject,notice_content) ";
			sql+= "values (?,1,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getNotice_id());
			pstmt.setString(2, dto.getNotice_subject());
			pstmt.setString(3, dto.getNotice_content());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	
	//QnA 전체 데이터
	public List<MonnamiDTO> getNoticeLists(){
		
		List<MonnamiDTO> lists = new ArrayList<MonnamiDTO>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
//			sql = "select * from("; 
//			sql+= "select rownum rnum, data.* from (";			
//			sql+= "select notice_id,notice_subject,notice_content ";
//			sql+= "from notice order by notice_id desc) data) ";
//			sql+= "where rnum=? and rnum=?";
			/*sql = "select * from( ";*/			
			sql= "select notice_id,notice_subject,notice_content ";
			sql+= "from notice ";
			pstmt = conn.prepareStatement(sql);
			
/*			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			*/
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				MonnamiDTO dto = new MonnamiDTO();
				
				dto.setNotice_id(rs.getInt("notice_id"));
				dto.setNotice_subject(rs.getString("notice_subject"));
				dto.setNotice_content(rs.getString("notice_content"));
				
				lists.add(dto);
				
			}
			
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
	
	}	
	
	//QnA 전체 데이터 갯수
	public int getNoticeDataCount(){
		
		int totalDataCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(count(*),0) from notice";
			
			pstmt = conn.prepareStatement(sql);
			
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
	
	//id로 조회한 데이터
	public MonnamiDTO getReadNoticeData(int notice_id){
		
		MonnamiDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select notice_id,notice_subject,notice_content ";
			sql+= "from notice where notice_id=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, notice_id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				
				dto = new MonnamiDTO();
				
				dto.setNotice_id(rs.getInt("notice_id"));
				dto.setNotice_subject(rs.getString("notice_subject"));
				dto.setNotice_content(rs.getString("notice_content"));
				
			}
			
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
		
	}
	
	//QnA 삭제
	public int deleteNoiticeData(int notice_id){
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "delete notice where notice_id=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, notice_id);
			
			result = pstmt.executeUpdate();
			
			pstmt.close();			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}	
		
		return result;
		
	}		
		
		
		
		
		
	}
	
	

