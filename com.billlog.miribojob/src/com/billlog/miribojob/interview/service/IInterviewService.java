package com.billlog.miribojob.interview.service;

import java.util.List;
import java.util.Map;

import com.billlog.miribojob.interview.dao.InterviewDAO;
import com.billlog.miribojob.interview.model.InterviewVO;
import com.billlog.miribojob.user.model.UserVO;


public interface IInterviewService{
	public List<InterviewVO> selectInterviewList() throws Exception;
	
	public void insertInterview(InterviewVO interviewVO) throws Exception;
	
	public InterviewVO detailInterview(Map paramMap) throws Exception;
	
	public int getInterviewTatalCnt() throws Exception;
	
	//가장 최근에 등록된 인터뷰글 5개 가져오기
	public List<InterviewVO> selectFastUpdateInterviewList() throws Exception;
}						     
