package com.matnagu.myHell.routine.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.matnagu.myHell.routine.dao.RoutineDao;
import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.user.dto.UserDto;

@Service
public class RoutineService implements IRoutineService{

	@Autowired //�ڵ�����
	private RoutineDao routineDao;
	
	@Override
	public UserDto createCustomRoutine() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String,List<RoutineDto>> selectRoutineList() {
		return routineDao.selectRoutineList();
	}

	@Override
	public Map<String, List<RoutineDetailDto>> selectRoutineDetail() {
		// TODO Auto-generated method stub
		return null;
	}

}
