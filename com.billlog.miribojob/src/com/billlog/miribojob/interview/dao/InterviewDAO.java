package com.billlog.miribojob.interview.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.billlog.miribojob.interview.model.InterviewVO;
import com.billlog.miribojob.user.model.UserVO;

import egovframework.example.sample.service.SampleVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("InterviewDAO")
public class InterviewDAO extends EgovAbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<InterviewVO> selectInterviewList() throws Exception {
		return (List<InterviewVO>) list("Interview.selectInterviewList");
	}
	
	public void insertInterview(InterviewVO interviewVO) throws Exception{
		insert("Interview.insertInterview", interviewVO);
	}
	
}
