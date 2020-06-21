package com.matnagu.myHell.community.comment.dao;

import java.util.HashMap;
import java.util.List;

import com.matnagu.myHell.community.comment.dto.CommentDto;


public interface ICommentDao {
	
	// 댓글 목록 조회 
	public List<CommentDto> selectCommentAllList(int communityseq);
		
	// 댓글 추가
	public void insertComment(HashMap<String,String> paramMap);
	
	// 댓글 삭제
	public void deleteComment(int seq);
}
