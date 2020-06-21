package com.matnagu.myHell.routine.service;

import java.util.List;

import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.user.dto.UserDto;

public interface IRoutineService {

	// 나만의 루틴
	public UserDto createCustomRoutine();
	// 루틴 조회
	public List<RoutineDto> selectRoutineList(String category);
	// 루틴 상세
	public List<RoutineDetailDto> selectRoutineDetail(int id);
	
}
