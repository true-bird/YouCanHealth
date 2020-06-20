package com.matnagu.myHell.comment.service;

import java.util.HashMap;
import java.util.List;

import com.matnagu.myHell.comment.dto.CommentDto;

public interface ICommentService {
	//댓글 전체 목록 조회
	public List<CommentDto> selectCommentAllList(int communityseq);
	
	//댓글 추가 하기
	public void insertComment(HashMap<String,String> paramMap);
	
	//댓글 삭제
	public void deleteComment(int seq);
}
