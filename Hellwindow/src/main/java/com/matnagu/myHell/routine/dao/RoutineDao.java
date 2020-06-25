package com.matnagu.myHell.routine.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.routine.dto.UserRoutineDto;
import com.matnagu.myHell.user.dto.UserDto;

@Repository
public class RoutineDao implements IRoutineDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void createCustomRoutine(Map<String,String> param) {
		sqlSession.insert("routineMapper.createCustomRoutine", param);
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

	@Override
	public List<RoutineDto> selectRoutineList(List<Integer> routineList) {
		Map<String,List<Integer>> param = new HashMap<String,List<Integer>>(); 
		param.put("routineList",routineList);
		List<RoutineDto> routineDtoList = sqlSession.selectList("routineMapper.selectRoutineUserList",param);
		return routineDtoList;
	}

	@Override
	public String selectCustomRoutine(Map<String, String> param) {
		return sqlSession.selectOne("routineMapper.selectCustomRoutine",param);
	}

	@Override
	public void insertCustomRoutineDetail(List<List<List<String>>> list, String routineId) {
		for(int i=0;i<7;i++) {
			List<List<String>> day = list.get(i);
			for(List<String> sports : day) {
				Map<String, String> param = new HashMap<String, String>();
				param.put("routineId", routineId);
				param.put("sportsDay", String.valueOf(i));
				param.put("sportsSeq", sports.get(0));
				param.put("sportsSet", sports.get(1));
				param.put("sportsCount", sports.get(2));
				sqlSession.insert("routineMapper.insertCustomRoutineDetail", param);
			}
		}
		
	}

	@Override
	public List<RoutineDetailDto> selectCustomRoutineDetail(int id) {
		List<RoutineDetailDto> routineDetailDtoList = sqlSession.selectList("routineMapper.selectCustomRoutineDetail",id);
		return routineDetailDtoList;
	}

	
	

}
