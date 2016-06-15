package com.inspur.gcloud.service;

import org.apache.ibatis.annotations.Param;

import com.inspur.gcloud.data.UserInfo;

public interface UserInfoService {
	public UserInfo getUserInfo(Integer id,String name);
}
