package com.monnami;

public class MemberDTO {
	
	private int member_id;	//PrimaryKey
	private String member_name;
	private String member_login;//ID¿”
	private String member_password;
	private String member_email;
	private String member_phone;
	private String member_birth;
	
	public String getMember_login() {
		return member_login;
	}
	public void setMember_login(String member_login) {
		this.member_login = member_login;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}

}
