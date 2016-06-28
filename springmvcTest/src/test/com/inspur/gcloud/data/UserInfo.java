package com.inspur.gcloud.data;

import java.io.Serializable;
import java.util.Date;

import org.springframework.stereotype.Component;

/**
 * @version 1.0
 * @author jim
 */

public class UserInfo implements Serializable {
	
	private static final long serialVersionUID = -2633095040893450052L;

	private Integer id;
	
	private String name;
	
	private Date time;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}
}
