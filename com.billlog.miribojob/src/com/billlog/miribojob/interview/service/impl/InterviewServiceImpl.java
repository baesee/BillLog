package com.billlog.miribojob.interview.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.billlog.miribojob.interview.dao.InterviewDAO;
import com.billlog.miribojob.interview.model.InterviewVO;
import com.billlog.miribojob.interview.service.IInterviewService;
import com.billlog.miribojob.user.dao.UserDAO;
import com.billlog.miribojob.user.model.UserVO;
import com.billlog.miribojob.user.service.IUserService;

@Service("InterviewService")
public class InterviewServiceImpl implements IInterviewService{
	
	@Resource(name = "InterviewDAO")
	private InterviewDAO dao;
	
	@Override
	public List<InterviewVO> selectInterviewList() throws Exception {
		return dao.selectInterviewList();
	}
	
	@Override
	public void insertInterview(InterviewVO interviewVO) throws Exception {
		dao.insertInterview(interviewVO);
	}
	
	@Override
	public InterviewVO detailInterview(Map paramMap) throws Exception {
		return dao.detailInterview(paramMap);
	}
}
