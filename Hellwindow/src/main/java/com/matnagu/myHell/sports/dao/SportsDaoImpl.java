package com.matnagu.myHell.sports.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.matnagu.myHell.sports.dto.SportsDto;
import com.matnagu.myHell.sports.dto.SportsLikeDto;

@Repository
public class SportsDaoImpl implements ISportsDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 운동목록(가슴)
	@Override
	public List<SportsDto> selectChestList() {
		List<SportsDto> SportsChestDtoList = new ArrayList<SportsDto>();
		SportsChestDtoList = sqlSession.selectList("sportsMapper.selectChestList");
		return SportsChestDtoList;
	}

	// 운동목록(등)
	@Override
	public List<SportsDto> selectBackList() {
		List<SportsDto> SportsBackDtoList = new ArrayList<SportsDto>();
		SportsBackDtoList = sqlSession.selectList("sportsMapper.selectBackList");
		return SportsBackDtoList;
	}

	// 운동목록(어깨)
	@Override
	public List<SportsDto> selectShoulderList() {
		List<SportsDto> SportsShoulderDtoList = new ArrayList<SportsDto>();
		SportsShoulderDtoList = sqlSession.selectList("sportsMapper.selectShoulderList");
		return SportsShoulderDtoList;
	}

	// 운동목록(복부)
	@Override
	public List<SportsDto> selectAbsList() {
		List<SportsDto> SportsAbsDtoList = new ArrayList<SportsDto>();
		SportsAbsDtoList = sqlSession.selectList("sportsMapper.selectAbsList");
		return SportsAbsDtoList;
	}

	// 운동목록(하체)
	@Override
	public List<SportsDto> selectLowerList() {
		List<SportsDto> SportsLowerDtoList = new ArrayList<SportsDto>();
		SportsLowerDtoList = sqlSession.selectList("sportsMapper.selectLowerList");
		return SportsLowerDtoList;
	}

	@Override // 운동상세정보
	public SportsDto selectSportsInfo(int seq) {
		SportsDto SportsDto = sqlSession.selectOne("sportsMapper.selectSportsInfo", seq);
		return SportsDto;
	}

	@Override
	public void insertSportsLike(HashMap<String, String> sportLike) {
		sqlSession.insert("sportsMapper.insertSportsLike", sportLike);

	}

	// 내가 좋아하는 운동보기
	@Override
	public List<SportsLikeDto> selectSportsLikeList(HashMap<String, String> sportLike) {
		List<SportsLikeDto> selectSportsLikeDtoList = new ArrayList<SportsLikeDto>();
		selectSportsLikeDtoList = sqlSession.selectList("sportsMapper.selectSportsLikeList", sportLike);
		System.out.println();
		return selectSportsLikeDtoList;
	}
}
