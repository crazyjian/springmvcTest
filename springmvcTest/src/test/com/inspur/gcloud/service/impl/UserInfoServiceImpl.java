package com.inspur.gcloud.service.impl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.gcloud.dao.UserInfoDao;
import com.inspur.gcloud.data.UserInfo;
import com.inspur.gcloud.service.UserInfoService;
import com.inspur.gcloud.util.MultipleDataSource;

@Service
public class UserInfoServiceImpl implements UserInfoService {

	private Logger logger = Logger.getLogger(this.getClass());
	
	@Autowired
	private UserInfoDao userInfoDao;
	
	@Override
	public UserInfo getUserInfo(Integer id, String name) {
		//MultipleDataSource.setDataSourceKey("dataSource1");
		return userInfoDao.getUserInfo(id,name);
	}

	public void insertUserInfo(UserInfo userInfo){
		userInfoDao.insertUserInfo(userInfo);
	}
	
	public void deleteById(Integer id){
		userInfoDao.deleteById(id);
	}
}
