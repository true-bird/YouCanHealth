package com.matnagu.myHell.routine.dao;

import java.util.List;
import java.util.Map;

import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.routine.dto.UserRoutineDto;

public interface IRoutineDao {

	// 나만의 루틴
	public void createCustomRoutine(Map<String,String> param);
	//
	public void insertCustomRoutineDetail(List<List<List<String>>> list, String routineId);
	// 루틴 id 찾기
	public String selectCustomRoutine(Map<String,String> param);
	// 인기 루틴 
	public List<RoutineDto> selectRoutineList();
	// 카테고리별 루틴
	public List<RoutineDto> selectRoutineList(String category);
	// 사용자 루틴
	public List<RoutineDto> selectRoutineList(List<Integer> routineList);
	// 루틴 상세
	public List<RoutineDetailDto> selectRoutineDetail(int id);
	// 커스텀 루틴 상세
	public List<RoutineDetailDto> selectCustomRoutineDetail(int id);
	
}
