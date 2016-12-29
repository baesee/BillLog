package com.billlog.miribojob.user.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.billlog.miribojob.user.dao.UserDAO;
import com.billlog.miribojob.user.model.UserVO;
import com.billlog.miribojob.user.service.IUserService;

@Service("UserService")
public class UserServiceImpl implements IUserService{
	
	@Resource(name = "UserDAO")
	private UserDAO dao;
	
	@Override
	public List<UserVO> selectUserList() throws Exception {
		return dao.selectUserList();
	}
	
	@Override
	public int getUserCount(int user_role) throws Exception {
		// role마다 사용자의 수를 가져온다
		return dao.getUserCount(user_role);
	}
}
