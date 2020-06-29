package com.matnagu.myHell.community.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.matnagu.myHell.community.dao.ICommunityDao;
import com.matnagu.myHell.community.dto.CommunityDto;

@Service
public class CommunityServiceImpl implements ICommunityService{
	
	@Autowired
	private ICommunityDao communityDaoImpl;
	
	@Override
	public List<CommunityDto> selectCommunityAllList() {
		return communityDaoImpl.selectCommunityAllList();
	}

	@Override
	public CommunityDto selectCommunity(int seq) {
		return communityDaoImpl.selectCommunity(seq);
	}

	@Override
	public List<CommunityDto> selectCommunityCategory(String category) {
		return communityDaoImpl.selectCommunityCategory(category);
	}

	@Override
	public List<CommunityDto> selectCommunityList(String list) {
		return communityDaoImpl.selectCommunityList(list);
	}

	@Override
	public void updateHit(int seq) {
		communityDaoImpl.updateHit(seq);
	}

	@Override
	public void insertWritingContent(HashMap<String, String> paramMap) {
		communityDaoImpl.insertWritingContent(paramMap);
	}

	@Override
	public void updateCommunity(HashMap<String, String> paramMap) {
		communityDaoImpl.updateCommunity(paramMap);
	}

	@Override
	public void deleteMyCommunity(int seq) {
		communityDaoImpl.deleteMyCommunity(seq);
	}

	@Override
	public List<CommunityDto> selectSearch(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		return communityDaoImpl.selectSearch(paramMap);
	}
	
}
