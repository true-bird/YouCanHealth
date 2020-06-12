package com.matnagu.myHell.community.service;

import java.util.List;

import com.matnagu.myHell.community.dto.CommunityDto;

public interface ICommunityService {

	// 게시글 목록 조회 (내 게시글 목록 조회 포함)
	public List<CommunityDto> selectPostList();
	// 게시글 조회
	public CommunityDto selectPost();
	// 게시글 생성
	public void createPost();
	// 게시글 수정
	public void updatePost();
	// 게시글 삭제
	public void deletePost();
	// 댓글 생성
	public void createComment();
	// 댓글 수정
	public void updateComment();
	// 댓글 삭제
	public void deleteComment();
		
}
