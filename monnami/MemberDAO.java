package com.monnami;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO{
	
	private Connection conn;
	
	public MemberDAO(Connection conn){
		this.conn = conn;
	}
	
	//전체 멤버 수 구하기
	public int getMaxNum(){
		
		int maxNum = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(max(member_id),0) from member";
			
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

	//회원가입
	public int insertData(MemberDTO dto){
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "insert into member (member_id,member_name,member_login,member_password,member_email,member_phone,";
			sql+= "member_birth) values (?,?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1,dto.getMember_id());
			pstmt.setString(2, dto.getMember_name());
			pstmt.setString(3, dto.getMember_login());
			pstmt.setString(4, dto.getMember_password());
			pstmt.setString(5, dto.getMember_email());
			pstmt.setString(6, dto.getMember_phone());
			pstmt.setString(7, dto.getMember_birth());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	//회원 1명 정보 가져오기	
	public MemberDTO getReadData(String member_login){
		
		MemberDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select member_id,member_name,member_login,member_password,member_email,member_phone,member_birth ";
			sql+= "from member where member_login = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member_login);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				
				dto = new MemberDTO();
				
				dto.setMember_id(rs.getInt("member_id"));
				dto.setMember_name(rs.getString("member_name"));
				dto.setMember_login(rs.getString("member_login"));
				dto.setMember_password(rs.getString("member_password"));
				dto.setMember_email(rs.getString("member_email"));
				dto.setMember_phone(rs.getString("member_phone"));
				dto.setMember_birth(rs.getString("member_birth"));
				
			}
			
			rs.close();
			pstmt.close();
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
				
		return dto;		
		
	}


	
	//회원 정보 수정
	public int updateData(MemberDTO dto){
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "update member set member_name=?,member_password=?,member_email=?,member_phone=?,member_birth where member_login=?";
			
			pstmt = conn.prepareStatement(sql);
			
			
			
			pstmt.setString(1, dto.getMember_name());
			pstmt.setString(2, dto.getMember_password());
			pstmt.setString(3, dto.getMember_email());
			pstmt.setString(4, dto.getMember_phone());
			pstmt.setString(5, dto.getMember_birth());
			pstmt.setString(6, dto.getMember_login());
			
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	
	//탈퇴
	public int deleteData(int member_login){
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "delete member where member_login=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, member_login);
			
			result = pstmt.executeUpdate();
			
			pstmt.close();			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}	
		
		return result;
		
	}

}
