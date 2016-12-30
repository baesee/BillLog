package com.billlog.miribojob.interview.model;

import egovframework.example.sample.service.SampleDefaultVO;

public class InterviewVO  extends SampleDefaultVO{
	
	//인터뷰 인덱스
	private String iidx;
	//인터뷰자 이름
	private String iname;
	//인터뷰자 성별
	private String isex;
	//인터뷰자 직업명
	private String ijob;
	//인터뷰자 직업코드
	private String ijobcd;
	//인터뷰자 직종코드
	private String ijikjongcd;
	//인터뷰자 상세 직업명
	private String idetailjob;
	//인터뷰 질문 1~10
	private String iquestion1;
	private String iquestion2;
	private String iquestion3;
	private String iquestion4;
	private String iquestion5;
	private String iquestion6;
	private String iquestion7;
	private String iquestion8;
	private String iquestion9;
	private String iquestion10;
	//인터뷰 답변 1~10
	private String ianswer1;
	private String ianswer2;
	private String ianswer3;
	private String ianswer4;
	private String ianswer5;
	private String ianswer6;
	private String ianswer7;
	private String ianswer8;
	private String ianswer9;
	private String ianswer10;
	//인터뷰자 본문
	private String content;
	//인터뷰글 패스워드(수정,삭제,댓글달기 등에 사용)
	private String ipwd;
	//인터뷰자 연봉
	private String iyearmoney;
	//인터뷰자 업무시간(하루 평균시간)
	private String ijobtime;
	//인터뷰자 근속년수
	private String iyearofjob;
	//근무지(광역시 정도만)
	private String ijobcity;
	//직업만족도
	private String imanjokdo;
	//작성일자
	private String regdate;
	
	public String getIidx() {
		return iidx;
	}
	public void setIidx(String iidx) {
		this.iidx = iidx;
	}
	public String getIname() {
		return iname;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}
	public String getIsex() {
		return isex;
	}
	public void setIsex(String isex) {
		this.isex = isex;
	}
	public String getIjob() {
		return ijob;
	}
	public void setIjob(String ijob) {
		this.ijob = ijob;
	}
	public String getIjobcd() {
		return ijobcd;
	}
	public void setIjobcd(String ijobcd) {
		this.ijobcd = ijobcd;
	}
	public String getIjikjongcd() {
		return ijikjongcd;
	}
	public void setIjikjongcd(String ijikjongcd) {
		this.ijikjongcd = ijikjongcd;
	}
	public String getIdetailjob() {
		return idetailjob;
	}
	public void setIdetailjob(String idetailjob) {
		this.idetailjob = idetailjob;
	}
	public String getIquestion1() {
		return iquestion1;
	}
	public void setIquestion1(String iquestion1) {
		this.iquestion1 = iquestion1;
	}
	public String getIquestion2() {
		return iquestion2;
	}
	public void setIquestion2(String iquestion2) {
		this.iquestion2 = iquestion2;
	}
	public String getIquestion3() {
		return iquestion3;
	}
	public void setIquestion3(String iquestion3) {
		this.iquestion3 = iquestion3;
	}
	public String getIquestion4() {
		return iquestion4;
	}
	public void setIquestion4(String iquestion4) {
		this.iquestion4 = iquestion4;
	}
	public String getIquestion5() {
		return iquestion5;
	}
	public void setIquestion5(String iquestion5) {
		this.iquestion5 = iquestion5;
	}
	public String getIquestion6() {
		return iquestion6;
	}
	public void setIquestion6(String iquestion6) {
		this.iquestion6 = iquestion6;
	}
	public String getIquestion7() {
		return iquestion7;
	}
	public void setIquestion7(String iquestion7) {
		this.iquestion7 = iquestion7;
	}
	public String getIquestion8() {
		return iquestion8;
	}
	public void setIquestion8(String iquestion8) {
		this.iquestion8 = iquestion8;
	}
	public String getIquestion9() {
		return iquestion9;
	}
	public void setIquestion9(String iquestion9) {
		this.iquestion9 = iquestion9;
	}
	public String getIquestion10() {
		return iquestion10;
	}
	public void setIquestion10(String iquestion10) {
		this.iquestion10 = iquestion10;
	}
	public String getIanswer1() {
		return ianswer1;
	}
	public void setIanswer1(String ianswer1) {
		this.ianswer1 = ianswer1;
	}
	public String getIanswer2() {
		return ianswer2;
	}
	public void setIanswer2(String ianswer2) {
		this.ianswer2 = ianswer2;
	}
	public String getIanswer3() {
		return ianswer3;
	}
	public void setIanswer3(String ianswer3) {
		this.ianswer3 = ianswer3;
	}
	public String getIanswer4() {
		return ianswer4;
	}
	public void setIanswer4(String ianswer4) {
		this.ianswer4 = ianswer4;
	}
	public String getIanswer5() {
		return ianswer5;
	}
	public void setIanswer5(String ianswer5) {
		this.ianswer5 = ianswer5;
	}
	public String getIanswer6() {
		return ianswer6;
	}
	public void setIanswer6(String ianswer6) {
		this.ianswer6 = ianswer6;
	}
	public String getIanswer7() {
		return ianswer7;
	}
	public void setIanswer7(String ianswer7) {
		this.ianswer7 = ianswer7;
	}
	public String getIanswer8() {
		return ianswer8;
	}
	public void setIanswer8(String ianswer8) {
		this.ianswer8 = ianswer8;
	}
	public String getIanswer9() {
		return ianswer9;
	}
	public void setIanswer9(String ianswer9) {
		this.ianswer9 = ianswer9;
	}
	public String getIanswer10() {
		return ianswer10;
	}
	public void setIanswer10(String ianswer10) {
		this.ianswer10 = ianswer10;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIpwd() {
		return ipwd;
	}
	public void setIpwd(String ipwd) {
		this.ipwd = ipwd;
	}
	public String getIyearmoney() {
		return iyearmoney;
	}
	public void setIyearmoney(String iyearmoney) {
		this.iyearmoney = iyearmoney;
	}
	public String getIjobtime() {
		return ijobtime;
	}
	public void setIjobtime(String ijobtime) {
		this.ijobtime = ijobtime;
	}
	public String getIyearofjob() {
		return iyearofjob;
	}
	public void setIyearofjob(String iyearofjob) {
		this.iyearofjob = iyearofjob;
	}
	public String getIjobcity() {
		return ijobcity;
	}
	public void setIjobcity(String ijobcity) {
		this.ijobcity = ijobcity;
	}
	public String getImanjokdo() {
		return imanjokdo;
	}
	public void setImanjokdo(String imanjokdo) {
		this.imanjokdo = imanjokdo;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
}
