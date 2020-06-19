package com.matnagu.myHell.user.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.matnagu.myHell.user.dto.UserInitDto;

@Repository //�����
public class UserInitDaoImpl implements IUserInitDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession; // ����.
	
	@Override
	public void insertUserinit(HashMap<String, Object> paramMap) {
		sqlSession.insert("userMapper.insertUserInit", paramMap);
	}
	
	@Override
	public UserInitDto selectUserInit(String id) {
		UserInitDto UserInitDto=
				sqlSession.selectOne("userMapper.selectUserInit",id);
		return UserInitDto;
	}
	
	@Override
	public UserInitDto selectUserInfo(String id) {
		UserInitDto UserInitDto=
				sqlSession.selectOne("userMapper.selectUserInfo",id);
		return UserInitDto;
	}
}
