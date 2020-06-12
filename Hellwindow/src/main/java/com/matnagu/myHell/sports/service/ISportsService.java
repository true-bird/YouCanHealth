package com.matnagu.myHell.sports.service;

import java.util.List;

import com.matnagu.myHell.sports.dto.SportsDto;

public interface ISportsService {

	// 부위별 운동 목록 조회
	public List<SportsDto> selectSportsList();
	// 운동 상세 조회
	public SportsDto selectSports();
	
}
