package com.billlog.miribojob.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.billlog.miribojob.user.model.UserVO;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("UserDAO")
public class UserDAO extends EgovAbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<UserVO> selectUserList() throws Exception {
		return (List<UserVO>) list("User.selectUserList");
	}
}
