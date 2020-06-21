package com.matnagu.myHell.community.service;

import java.util.HashMap;
import java.util.List;

import com.matnagu.myHell.community.dto.CommunityDto;

public interface ICommunityService {

	//전체 조회
	public List<CommunityDto> selectCommunityAllList();
	//글 읽기
	public CommunityDto selectCommunity(int seq);
	//카테고리 분류하기
	public List<CommunityDto> selectCommunityCategory(String category);
	//작성자 이름으로 분류하기
	public List<CommunityDto> selectCommunityList(String list);
	//카운트 올리기 
	public void updateHit(int seq);
	//글쓰기
	public void insertWritingContent(HashMap<String,String> paramMap);
	//글 수정
	public void updateCommunity(HashMap<String,String> paramMap);
	//글 삭제
	public void deleteMyCommunity(int seq);
		
}
