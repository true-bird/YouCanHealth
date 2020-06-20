package com.matnagu.myHell.user.service;

import java.util.HashMap;
import java.util.List;

import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.user.dto.UserDto;

public interface IUserService {
	
	/* 주현우
	// 
	public UserDto selectUserInfo();
	// 
	public void updateUserInfo();
	// 
	public void createUserInfo();	
	// 
	public List<String> selectUserFavoriteSports();
	// 
	public List<String> selectUserRoutineList();
	// 
	public RoutineDto selectUserRoutineDetails();
	*/
	
	/* 신동훈 */
	public void insertUserinit(HashMap<String,Object> paramMap);
	// 
	public UserDto selectUserInit(String id);
	// 
	public UserDto selectUserInfo(String id);
	
	/* 이진희 */
	//Guestbook 전체 목록 조회
	public List<UserDto> selectUserAllList();
	//이름으로 찾아오기
	public UserDto selectUserId(String id);
}
