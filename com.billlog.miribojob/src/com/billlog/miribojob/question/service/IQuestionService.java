package com.billlog.miribojob.question.service;

import java.util.List;

import com.billlog.miribojob.interview.dao.InterviewDAO;
import com.billlog.miribojob.question.model.QuestionVO;
import com.billlog.miribojob.user.model.UserVO;


public interface IQuestionService{
	public QuestionVO selectQuestion(String q_code) throws Exception;
	
}
