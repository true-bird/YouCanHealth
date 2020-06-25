package com.matnagu.myHell.user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.user.dto.UserDto;

public interface IUserService {
	
	// 로그인
	public UserDto signInAuth(String id, String password) throws Exception;
	
	
	public void updateUserInfo(HashMap<String,Object> paramMap);
	public void updatePassword(HashMap<String,Object> paramMap);
	public void deleteUser(int seq);
	public int idCheck(HashMap<String, Object> paramMap);
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
	// 내가 고른 루틴 추가하기
	public void insertUserRoutine(Map<String, Integer> userRoutine);
	// 내가 고른 루틴 조회
	public List<RoutineDto> selectUserRoutine(int userSeq);
	public List<RoutineDto> selectUserCustomRoutine(int userSeq);
	public void deleteUserRoutine(Map<String,Integer> paramMap);
	public void deleteUserCustomRoutine(Map<String, Integer> paramMap);
}
