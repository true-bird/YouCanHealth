package com.matnagu.myHell.routine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.matnagu.myHell.routine.dao.IRoutineDao;
import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.user.dto.UserDto;

@Service
public class RoutineService implements IRoutineService{

	@Autowired
	private IRoutineDao routineDao;
	
	@Override
	public UserDto createCustomRoutine() {
		return null;
	}

	@Override
	public List<RoutineDto> selectRoutineList(String category) {
		if(category.equals("인기")) return routineDao.selectRoutineList();
		return routineDao.selectRoutineList(category);
	}

	@Override
	public List<RoutineDetailDto> selectRoutineDetail(int id) {
		return routineDao.selectRoutineDetail(id);
	}

}
