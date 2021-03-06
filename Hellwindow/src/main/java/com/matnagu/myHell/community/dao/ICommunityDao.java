package com.matnagu.myHell.community.dao;

import java.util.HashMap;
import java.util.List;

import com.matnagu.myHell.community.dto.CommunityDto;

public interface ICommunityDao {

	// 전체 조회
	public List<CommunityDto> selectCommunityAllList();
	// 글 내용 읽기
	public CommunityDto selectCommunity(int seq);
	// 카테고리 나누기
	public List<CommunityDto> selectCommunityCategory(String category);
	// 작성자 이름으로 분류하기
	public List<CommunityDto> selectCommunityList(String list);
	// 조회수 카운트 
	public void updateHit(int seq);
	// 글쓰기
	public void insertWritingContent(HashMap<String,String> paramMap);
	// 글 수정
	public void updateCommunity(HashMap<String,String> paramMap);
	// 글 삭제
	public void deleteMyCommunity(int seq);
	//조건 검색	 (추가)
	public List<CommunityDto>  selectSearch(HashMap<String,String> paramMap);

}
