package com.matnagu.myHell.routine.dao;

import java.util.List;
import java.util.Map;

import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;

public interface IRoutineDao {

	// 나만의 루틴
	public void createCustomRoutine(Map<String,String> param);
	// 인기 루틴 
	public List<RoutineDto> selectRoutineList();
	// 카테고리별 루틴
	public List<RoutineDto> selectRoutineList(String category);
	// 사용자 루틴
	public List<RoutineDto> selectRoutineList(List<Integer> routineList);
	// 루틴 상세
	public List<RoutineDetailDto> selectRoutineDetail(int id);
		
	
}
