package com.matnagu.myHell.routine.service;

import java.util.List;
import java.util.Map;

import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.user.dto.UserDto;

public interface IRoutineService {

	// 나만의 루틴 생성
	public UserDto createCustomRoutine();
	// 
	public Map<String,List<RoutineDto>> selectRoutineList();
	//
	public Map<String,List<RoutineDetailDto>> selectRoutineDetail();
	
}
