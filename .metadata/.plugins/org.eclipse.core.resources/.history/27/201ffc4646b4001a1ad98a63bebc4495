package com.matnagu.myHell.routine.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.user.dto.UserDto;

@Repository
public class RoutineDao implements IRoutineDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public UserDto createCustomRoutine() {
		return null;
	}
	
	@Override
	public List<RoutineDto> selectRoutineList() {
		List<RoutineDto> routineDtoList = new ArrayList<RoutineDto>();
		routineDtoList = sqlSession.selectList("routineMapper.selectRoutineAllList");
		return routineDtoList;
	}
	
	@Override
	public List<RoutineDto> selectRoutineList(String category) {
		List<RoutineDto> routineDtoList = new ArrayList<RoutineDto>();
		routineDtoList = sqlSession.selectList("routineMapper.selectRoutineList",category);
		return routineDtoList;
	}

	@Override
	public List<RoutineDetailDto> selectRoutineDetail(int id) {
		List<RoutineDetailDto> routineDetailDtoList = new ArrayList<RoutineDetailDto>();
		routineDetailDtoList = sqlSession.selectList("routineMapper.selectRoutineDetail",id);
		return routineDetailDtoList;
	}

}
