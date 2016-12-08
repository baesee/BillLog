package com.billlog.miribojob.question.service;

import java.util.List;

import com.billlog.miribojob.interview.dao.InterviewDAO;
import com.billlog.miribojob.user.model.UserVO;


public interface IQuestionService{
	public List<InterviewDAO> selectInterviewList() throws Exception;
	
}
