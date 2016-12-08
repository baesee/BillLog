package com.billlog.miribojob.question.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.billlog.miribojob.user.model.UserVO;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("QuestionDAO")
public class QuestionDAO extends EgovAbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<QuestionDAO> selectInterviewList() throws Exception {
		return (List<QuestionDAO>) list("User.selectUserList");
	}
}
