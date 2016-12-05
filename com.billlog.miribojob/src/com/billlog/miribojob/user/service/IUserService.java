package com.billlog.miribojob.user.service;

import java.util.List;

import com.billlog.miribojob.user.model.UserVO;


public interface IUserService{
	public List<UserVO> selectUserList() throws Exception;
	
}
