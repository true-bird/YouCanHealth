package com.matnagu.myHell.comment.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.matnagu.myHell.comment.dto.CommentDto;

@Repository //저장소
public class CommentDaoImpl implements ICommentDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession; // 주입. SqlSessionTemplate 객체


	@Override
	public List<CommentDto> selectCommentAllList(int communityseq) {
		List<CommentDto> CommentDtoList = new ArrayList<CommentDto>();
		CommentDtoList = sqlSession.selectList("commentMapper.selectCommentAllList",communityseq);
		return CommentDtoList;
	}


	@Override
	public void insertComment(HashMap<String, String> paramMap) {
		sqlSession.insert("commentMapper.insertComment", paramMap);
		
	}

	@Override
	public void deleteComment(int seq) {
		sqlSession.delete("commentMapper.deleteComment", seq);
		
	}
}
