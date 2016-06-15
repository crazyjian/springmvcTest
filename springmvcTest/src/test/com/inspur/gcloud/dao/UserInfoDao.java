package com.inspur.gcloud.dao;

import org.apache.ibatis.annotations.Param;

import com.inspur.gcloud.data.UserInfo;

public interface UserInfoDao {

	public UserInfo getUserInfo(@Param("id") Integer id, @Param("name") String name);
	
}
