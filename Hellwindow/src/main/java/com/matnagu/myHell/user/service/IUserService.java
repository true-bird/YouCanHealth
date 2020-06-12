package com.matnagu.myHell.user.service;

import java.util.List;

import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.user.dto.UserDto;

public interface IUserService {
	
	// 유저 정보 조회
	public UserDto selectUserInfo();
	// 유저 정보 수정
	public void updateUserInfo();
	// 유저 정보 생성
	public void createUserInfo();	
	// 좋아하는 운동 목록 조회
	public List<String> selectUserFavoriteSports();
	// 내 루틴 목록 조회
	public List<String> selectUserRoutineList();
	// 내 루틴 상세 조회
	public RoutineDto selectUserRoutineDetails();
	
}
