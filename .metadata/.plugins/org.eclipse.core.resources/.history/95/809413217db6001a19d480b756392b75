package com.matnagu.myHell.community.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.matnagu.myHell.community.dto.CommunityDto;

@Repository
public class CommunityDaoImpl implements ICommunityDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	// 전체 조회
	@Override
	public List<CommunityDto> selectCommunityAllList() {
		List<CommunityDto> UserDtoList = new ArrayList<CommunityDto>();
		UserDtoList = sqlSession.selectList("communityMapper.selectCommunityAllList");
		return UserDtoList;
	}
	// 글 내용 읽기
	@Override
	public CommunityDto selectCommunity(int seq) {
		CommunityDto communityDto = sqlSession.selectOne("communityMapper.selectCommunity", seq);
		return communityDto;
	}
	// 카테고리 나누기
	@Override
	public List<CommunityDto> selectCommunityCategory(String category) {
		List<CommunityDto> communityDto = new ArrayList<CommunityDto>();
		communityDto = sqlSession.selectList("communityMapper.selectCommunityCategory", category);
		return communityDto;
	}
	// 작성자 이름으로 분류하기
	@Override
	public List<CommunityDto> selectCommunityList(String list) {
		List<CommunityDto> communityDto = new ArrayList<CommunityDto>();
		communityDto = sqlSession.selectList("communityMapper.selectCommunityList", list);
		return communityDto;
	}
	// 조회수 카운트
	@Override
	public void updateHit(int seq) {
		sqlSession.insert("communityMapper.updateHit", seq);	
	}
	// 글쓰기
	@Override
	public void insertWritingContent(HashMap<String,String> paramMap) {
		sqlSession.insert("communityMapper.insertWritingContent",paramMap);
	}
	// 글 수정
	@Override
	public void updateCommunity(HashMap<String, String> paramMap) {
		sqlSession.update("communityMapper.updateCommunity", paramMap);
	}
	// 글 삭제
	@Override
	public void deleteMyCommunity(int seq) {
		sqlSession.delete("communityMapper.deleteMyCommunity", seq);	
	}

}
