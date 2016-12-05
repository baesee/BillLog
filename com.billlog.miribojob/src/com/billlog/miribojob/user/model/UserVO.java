package com.billlog.miribojob.user.model;

import egovframework.example.sample.service.SampleDefaultVO;

public class UserVO  extends SampleDefaultVO{
	
	// 유저 인덱스
	private String idx;
	// 유저 아이디
	private String user_id;
	// 유저 패스워드
	private String user_pw;
	// 유저 이름
	private String user_nm;
	// 유저 마지막 접속 날짜
	private String last_login_date;
	// 유저ID권한
	private String user_role;
	
	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_nm() {
		return user_nm;
	}

	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
	}

	public String getLast_login_date() {
		return last_login_date;
	}

	public void setLast_login_date(String last_login_date) {
		this.last_login_date = last_login_date;
	}

	public String getUser_role() {
		return user_role;
	}

	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}
}
