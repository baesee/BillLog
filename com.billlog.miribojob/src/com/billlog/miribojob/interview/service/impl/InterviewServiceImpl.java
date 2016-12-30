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
	
	@Override
	public int getInterviewTatalCnt() throws Exception {
		return dao.getInterviewTatalCnt();
	}
	
	@Override
	public List<InterviewVO> selectFastUpdateInterviewList() throws Exception {
		// 가장 최근에 등록된 인터뷰 5가지
		return dao.selectFastUpdateInterviewList();
	}
	
	@Override
	public void deleteInterview(InterviewVO interviewVO) throws Exception {
		dao.deleteInterview(interviewVO);
	}
}
