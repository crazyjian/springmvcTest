package com.inspur.gcloud.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.inspur.gcloud.data.UserInfo;
import com.inspur.gcloud.service.UserInfoService;

@Controller
public class UserInfoController {
	
	private Logger logger = Logger.getLogger(this.getClass());
	
	@Autowired
	@Qualifier("userInfoServiceImpl")
	private UserInfoService userInfoService;
	
	@RequestMapping("/login")
	public String login(ModelMap map) {
		UserInfo userInfo = new UserInfo();
		map.addAttribute("userInfo", userInfo);
		return "index";
	}
	
	@RequestMapping("/query")
	public String getUserInfo(@RequestParam(value="id", required=false) Integer id, @RequestParam(value="name", required=false) String name, ModelMap map ) {
		UserInfo userInfo = userInfoService.getUserInfo(id,name);
		map.addAttribute("userInfo",userInfo);
		return "success";
	}
	
	@RequestMapping("/query1")
	public String getUserInfo1(@ModelAttribute UserInfo userInfo,BindingResult bindingResult, ModelMap map ) {
		if(bindingResult.hasErrors()) {
			FieldError fieldError = bindingResult.getFieldError();
			logger.info("Code:"+fieldError.getCode()+",Field:"+fieldError.getField());
			return "index";
		}
		userInfo = userInfoService.getUserInfo(userInfo.getId(),userInfo.getName());
		map.addAttribute("userInfo",userInfo);
		return "success";
	}
	
	@RequestMapping("/insert")
	public String  insertUserInfo(@ModelAttribute UserInfo userInfo,BindingResult bindingResult, ModelMap map) {
		if(bindingResult.hasErrors()) {
			FieldError fieldError = bindingResult.getFieldError();
			logger.info("Code:"+fieldError.getCode()+",Field:"+fieldError.getField());
			return "index";
		}
		userInfoService.insertUserInfo(userInfo);
		map.addAttribute(userInfo);
		return "success";
	}
	
	@RequestMapping("/delete")
	public String  deleteById(@RequestParam(value="id", required=true) Integer id,ModelMap map) {
		userInfoService.deleteById(id);
		map.addAttribute("id",id);
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
