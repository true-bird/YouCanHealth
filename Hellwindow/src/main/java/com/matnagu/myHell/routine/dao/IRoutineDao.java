package com.matnagu.myHell.routine.dao;

import java.util.List;
import java.util.Map;

import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.user.dto.UserDto;

public interface IRoutineDao {

	// 나만의 루틴
	public UserDto createCustomRoutine();
	// 인기 루틴 
	public List<RoutineDto> selectRoutineList();
	// 카테고리별 루틴
	public List<RoutineDto> selectRoutineList(String category);
	// 루틴 상세
	public List<RoutineDetailDto> selectRoutineDetail(int id);
		
	
}
