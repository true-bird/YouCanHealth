package com.matnagu.myHell.user.service;

import java.util.HashMap;
import java.util.List;

import com.matnagu.myHell.user.dto.UserDto;

public interface IUserService {
	
	// 로그인
	public UserDto signInAuth(String id, String password) throws Exception;
	/* ---------- 동훈 ---------- */
	// 회원가입
	public void insertUserinit(HashMap<String,Object> paramMap);
	/* ------------------------ */

	/* ---------- 진희 ---------- */
	// 전체 목록 조회
	public List<UserDto> selectUserAllList();
	// 이름으로 찾아오기
	public UserDto selectUserId(String id);
	/* ------------------------ */
}
