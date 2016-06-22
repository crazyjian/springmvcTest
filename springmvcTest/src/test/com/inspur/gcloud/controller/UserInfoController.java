package com.inspur.gcloud.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.inspur.gcloud.data.UserInfo;
import com.inspur.gcloud.service.UserInfoService;

@Controller
public class UserInfoController {
	
	private Logger logger = Logger.getLogger(this.getClass());
	
	@Autowired
	private UserInfoService UserInfoService;
	
	@RequestMapping("/query")
	public String getUserInfo(@RequestParam(value="id", required=false) Integer id, @RequestParam(value="name", required=false) String name, ModelMap map ) {

		UserInfo userInfo = UserInfoService.getUserInfo(id,name);

		if(userInfo != null) {
			map.put("id",userInfo.getId());
			map.put("name",userInfo.getName());
		}
		return "success";
	}
	
	  @RequestMapping(value="/user/{id}",method=RequestMethod.GET)
	    public String get(@PathVariable("id") Integer id){
	        System.out.println("get"+id);
	        return "success";
	    }
	     
	    @RequestMapping(value="/user/{id}",method=RequestMethod.POST)
	    public String post(@PathVariable("id") Integer id){
	        System.out.println("post"+id);
	        return "success";
	    }
	     
	    @RequestMapping(value="/user/{id}",method=RequestMethod.PUT)
	    public String put(@PathVariable("id") Integer id){
	        System.out.println("put"+id);
	        return "success";
	    }
	     
	    @RequestMapping(value="/user/{id}",method=RequestMethod.DELETE)
	    public String delete(@PathVariable("id") Integer id){
	        System.out.println("delete"+id);
	        return "success";
	    }
}
