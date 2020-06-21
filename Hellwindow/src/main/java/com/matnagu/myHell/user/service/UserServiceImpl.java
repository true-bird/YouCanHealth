package com.matnagu.myHell.user.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.matnagu.myHell.user.dao.IUserDao;
import com.matnagu.myHell.user.dto.UserDto;

@Service
public class UserServiceImpl implements IUserService{
	
	@Autowired
	private IUserDao userDaoImpl;
	
	@Override
	public UserDto signInAuth(String id, String password) throws Exception {
		UserDto userDto = userDaoImpl.selectUserId(id);
		if(userDto == null || !userDto.getPassword().equals(password)) {
			throw new IdPasswordNotMatchingException();
		}
		return userDto;
	}
	/* ---------- 동훈 ---------- */
	@Override
	public void insertUserinit(HashMap<String, Object> paramMap) {
		userDaoImpl.insertUserinit(paramMap);
	}
	/* ------------------------ */

	/* ---------- 진희 ---------- */
	@Override
	public List<UserDto> selectUserAllList(){
		return userDaoImpl.selectUserAllList();
	}
	
	@Override
	public UserDto selectUserId(String id) {
		return userDaoImpl.selectUserId(id);
	}
	/* ------------------------ */

	
}
