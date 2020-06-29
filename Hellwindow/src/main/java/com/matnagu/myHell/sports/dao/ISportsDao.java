package com.matnagu.myHell.sports.dao;

import java.util.HashMap;
import java.util.List;

import com.matnagu.myHell.sports.dto.SportsDto;
import com.matnagu.myHell.sports.dto.SportsLikeDto;

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

	public void insertSportsLike(HashMap<String, String> sportLike);

	public List<SportsLikeDto> selectSportsLikeList(HashMap<String, String> sportLike);

	public List<SportsLikeDto> selectUserLikeSports(String id);
	
	//내가 좋아하는 운동 삭제
	public void deleteSportsLike(int seq);
}
