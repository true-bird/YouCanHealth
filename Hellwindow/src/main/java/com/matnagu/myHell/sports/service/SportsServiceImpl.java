package com.matnagu.myHell.sports.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.matnagu.myHell.sports.dao.SportsDaoImpl;
import com.matnagu.myHell.sports.dto.SportsDto;

@Service
public class SportsServiceImpl implements ISportsService {

	@Autowired
	private SportsDaoImpl sportsDaoImpl;

	// 운동목록(가슴)
	@Override
	public List<SportsDto> selectChestList() {
		return sportsDaoImpl.selectChestList();
	}

	// 운동목록(등)
	@Override
	public List<SportsDto> selectBackList() {
		return sportsDaoImpl.selectBackList();
	}

	// 운동목록(어깨)
	@Override
	public List<SportsDto> selectShoulderList() {
		return sportsDaoImpl.selectShoulderList();
	}

	// 운동목록(복부)
	@Override
	public List<SportsDto> selectAbsList() {
		return sportsDaoImpl.selectAbsList();
	}

	// 운동목록(복부)
	@Override
	public List<SportsDto> selectLowerList() {
		return sportsDaoImpl.selectLowerList();
	}

	// 운동상세정보
	@Override
	public SportsDto selectSportsInfo(int seq) {
		return sportsDaoImpl.selectSportsInfo(seq);
	}
}
