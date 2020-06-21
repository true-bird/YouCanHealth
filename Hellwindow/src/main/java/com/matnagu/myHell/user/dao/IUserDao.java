package com.matnagu.myHell.user.dao;

import java.util.HashMap;
import java.util.List;

import com.matnagu.myHell.user.dto.UserDto;

public interface IUserDao {
	
	/* ---------- 동훈 ---------- */
	public void insertUserinit(HashMap<String,Object> paramMap);
	/* ------------------------ */
	
	/* ---------- 진희 ---------- */
	public List<UserDto> selectUserAllList();
	public UserDto selectUserId(String id);
	/* ------------------------ */
}
