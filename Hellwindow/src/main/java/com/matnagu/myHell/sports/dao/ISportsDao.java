package com.matnagu.myHell.sports.dao;

import java.util.List;

import com.matnagu.myHell.sports.dto.SportsDto;

public interface ISportsDao {
	// 운동목록(가슴)
	public List<SportsDto> selectChestList();
	// 운동목록(등)
	public List<SportsDto> selectBackList();
	// 운동목록(어깨)
	public List<SportsDto> selectShoulderList();
	// 운동목록(복부)
	public List<SportsDto> selectAbsList();
	// 운동목록(복부)
	public List<SportsDto> selectLowerList();
	// 운동상세정보
	public SportsDto selectSportsInfo(int seq);
}
