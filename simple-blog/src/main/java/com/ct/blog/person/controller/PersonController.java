package com.ct.blog.person.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ct.blog.common.AjaxResult;
import com.ct.blog.common.BaseController;
import com.ct.blog.em.controller.Status;

@Controller
@RequestMapping("/manage/person")
public class PersonController extends BaseController{
	@RequestMapping("list")
	//@RequiresPermissions("person:list")
	public String list(){
		return "manage/person/person_list";
	}
	
	@RequestMapping("toCreate")
	public String toCreate(){
		return "manage/person/person_create";
	}
	
	@RequestMapping("doCreate")
	@ResponseBody
	public AjaxResult doAdd(){
		return ajaxResult(Status.ERROR);
	}
	
	@RequestMapping("toEdit/{id}")
	public String toEdit(@PathVariable("id")String id){
		return "";
	}
	
	@RequestMapping("doEdit")
	public String doEdit(){
		return "";
	}
}
