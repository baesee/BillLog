package com.billlog.miribojob.question.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.billlog.miribojob.interview.dao.InterviewDAO;
import com.billlog.miribojob.interview.service.IInterviewService;
import com.billlog.miribojob.question.dao.QuestionDAO;
import com.billlog.miribojob.question.service.IQuestionService;
import com.billlog.miribojob.user.dao.UserDAO;
import com.billlog.miribojob.user.model.UserVO;
import com.billlog.miribojob.user.service.IUserService;

@Service("QuestionService")
public class QuestionServiceImpl implements IQuestionService{
	
	@Resource(name = "QuestionDAO")
	private QuestionDAO dao;
	
	@Override
	public List<InterviewDAO> selectInterviewList() throws Exception {
		return null;
//		return dao.selectUserList();
		
	}
}
