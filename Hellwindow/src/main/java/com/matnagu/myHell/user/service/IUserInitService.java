package com.matnagu.myHell.user.service;

import java.util.HashMap;

import com.matnagu.myHell.user.dto.UserInitDto;

public interface IUserInitService {
	//ȸ������ ���
	public void insertUserinit(HashMap<String,Object> paramMap);
	
	//���â�� ȸ������ �ѷ��ֱ� , ���������� ����ã��
	public UserInitDto selectUserInit(String id);
	
	//�������� �ѷ��� ��ü �÷���
	public UserInitDto selectUserInfo(String id);
	
}
