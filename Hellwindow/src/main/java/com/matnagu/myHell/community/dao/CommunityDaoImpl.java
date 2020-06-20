package com.matnagu.myHell.community.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.matnagu.myHell.community.dto.CommunityDto;

@Repository //저장소
public class CommunityDaoImpl implements ICommunityDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public List<CommunityDto> selectCommunityAllList() {
		List<CommunityDto> UserDtoList = new ArrayList<CommunityDto>();
		UserDtoList = sqlSession.selectList("CommunityMapper.selectCommunityAllList");
		return UserDtoList;
	}
	@Override
	public CommunityDto selectCommunity(int seq) {
		CommunityDto communityDto =
				sqlSession.selectOne("CommunityMapper.selectCommunity", seq);
		return communityDto;
	}
	@Override
	public List<CommunityDto> selectCommunityCategory(String category) {
		List<CommunityDto> communityDto=
				new ArrayList<CommunityDto>();
		 communityDto =
				sqlSession.selectList("CommunityMapper.selectCommunityCategory", category);
		return communityDto;
	}
	@Override
	public List<CommunityDto> selectCommunityList(String list) {
		List<CommunityDto> communityDto=
				new ArrayList<CommunityDto>();
		 communityDto =
					sqlSession.selectList("CommunityMapper.selectCommunityList", list);
			return communityDto;
	}
	@Override
	public void updateHit(int seq) {
		sqlSession.insert("CommunityMapper.updateHit", seq);
		
	}
	@Override
	public void insertWritingContent(HashMap<String,String> paramMap) {

		sqlSession.insert("CommunityMapper.insertWritingContent",paramMap);

	}
	@Override
	public List<CommunityDto> selectMyCommunity(String id) {
		List<CommunityDto> communityDtoList=
				new ArrayList<CommunityDto>();
		
		communityDtoList=sqlSession.selectList("CommunityMapper.selectMyCommunity", id);
		return communityDtoList;
	}
	@Override
	public void updateCommunity(HashMap<String, String> paramMap) {
		sqlSession.update("CommunityMapper.updateCommunity", paramMap);
		
	}
	@Override
	public void deleteMyCommunity(int seq) {
		sqlSession.delete("CommunityMapper.deleteMyCommunity", seq);
		
	}

}
