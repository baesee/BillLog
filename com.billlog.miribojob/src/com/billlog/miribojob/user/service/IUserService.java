package com.billlog.miribojob.user.service;

import java.util.List;

import com.billlog.miribojob.user.model.UserVO;


public interface IUserService{
	public List<UserVO> selectUserList() throws Exception;
	
	//사용자의 수를 가져온다
	public int getUserCount(int user_role) throws Exception;
	
}
