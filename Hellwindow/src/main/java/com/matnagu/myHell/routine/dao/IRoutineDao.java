package com.matnagu.myHell.routine.dao;

import java.util.List;
import java.util.Map;

import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.user.dto.UserDto;

public interface IRoutineDao {

	// ������ ��ƾ ����
	public UserDto createCustomRoutine();
	// 
	public Map<String,List<RoutineDto>> selectRoutineList();
	//
	public Map<String,List<RoutineDetailDto>> selectRoutineDetail();
		
	
}