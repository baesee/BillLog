package com.billlog.miribojob.interview.dao;

import java.util.List;
import java.util.Map;

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
	
	public InterviewVO detailInterview(Map paramMap) throws Exception{
		return (InterviewVO) select("Interview.detailInterview", paramMap); 
	}
	
	public int getInterviewTatalCnt() throws Exception {
		return (int) select("Interview.selectInterviewTotalCnt");
		
	}
	
	@SuppressWarnings("unchecked")
	public List<InterviewVO> selectFastUpdateInterviewList() throws Exception {
		return (List<InterviewVO>) list("Interview.selectFastUpdateInterviewList");
	}
	
	public void deleteInterview(InterviewVO interviewVO) throws Exception{
		delete("Interview.deleteInterview", interviewVO);
	}
}
