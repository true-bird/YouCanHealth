package com.matnagu.myHell.routine.service;

import java.util.List;
import java.util.Map;

import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;

public interface IRoutineService {

	// 나만의 루틴 만들기
	public void createCustomRoutine(Map<String,String> param);
	// 루틴 조회
	public List<RoutineDto> selectRoutineList(String category);
	// 루틴 상세
	public List<RoutineDetailDto> selectRoutineDetail(int id);
	
}
