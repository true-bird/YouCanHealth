package com.matnagu.myHell.user.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.matnagu.myHell.user.dao.UserInitDaoImpl;
import com.matnagu.myHell.user.dto.UserInitDto;

@Service // ���񽺼���
public class UserInitServiceImpl implements IUserInitService{
	
	@Autowired
	private UserInitDaoImpl userinitDaoImpl;
	
	@Override
	public void insertUserinit(HashMap<String, Object> paramMap) {
		userinitDaoImpl.insertUserinit(paramMap);
	}
	
	@Override
	public UserInitDto selectUserInit(String id) {
		return userinitDaoImpl.selectUserInit(id);
	}
	
	@Override
	public UserInitDto selectUserInfo(String id) {
		return userinitDaoImpl.selectUserInfo(id);
	}
}
