package com.matnagu.myHell.sports.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.matnagu.myHell.sports.dao.ISportsDao;
import com.matnagu.myHell.sports.dto.SportsDto;
import com.matnagu.myHell.sports.dto.SportsLikeDto;


@Service
public class SportsServiceImpl implements ISportsService {

	@Autowired
	private ISportsDao sportsDao;

	// 운동목록(가슴)
	@Override
	public List<SportsDto> selectChestList() {
		return sportsDao.selectChestList();
	}

	// 운동목록(등)
	@Override
	public List<SportsDto> selectBackList() {
		return sportsDao.selectBackList();
	}

	// 운동목록(어깨)
	@Override
	public List<SportsDto> selectShoulderList() {
		return sportsDao.selectShoulderList();
	}

	// 운동목록(복부)
	@Override
	public List<SportsDto> selectAbsList() {
		return sportsDao.selectAbsList();
	}

	// 운동목록(복부)
	@Override
	public List<SportsDto> selectLowerList() {
		return sportsDao.selectLowerList();
	}

	// 운동상세정보
	@Override
	public SportsDto selectSportsInfo(int seq) {
		return sportsDao.selectSportsInfo(seq);
	}

	// 내가 좋아하는 운동 추가
	@Override
	public void insertSportsLike(HashMap<String, String> sportLike) {
		sportsDao.insertSportsLike(sportLike);
	}

	// 내가좋아하는 운종 보기
	@Override
	public List<SportsLikeDto> selectSportsLikeList(HashMap<String, String> sportLike) {
		return sportsDao.selectSportsLikeList(sportLike);
	}
	
	@Override
	public List<SportsLikeDto> selectUserLikeSports(String id) {
		return sportsDao.selectUserLikeSports(id);
	}

	@Override
	public void deleteSportsLike(int seq) {
		sportsDao.deleteSportsLike(seq);
		
	}
}
