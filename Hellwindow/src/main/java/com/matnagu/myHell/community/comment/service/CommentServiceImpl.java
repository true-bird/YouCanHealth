package com.matnagu.myHell.community.comment.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.matnagu.myHell.community.comment.dao.ICommentDao;
import com.matnagu.myHell.community.comment.dto.CommentDto;


@Service
public class CommentServiceImpl implements ICommentService {
	
	@Autowired
	private ICommentDao commentDaoImpl;

	@Override
	public List<CommentDto> selectCommentAllList(int communityseq) {
		return commentDaoImpl.selectCommentAllList(communityseq);
	}

	@Override
	public void insertComment(HashMap<String, String> paramMap) {
		commentDaoImpl.insertComment(paramMap);
	}

	@Override
	public void deleteComment(int seq) {
		commentDaoImpl.deleteComment(seq);
	}
}