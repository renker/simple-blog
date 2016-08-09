package com.ct.blog.person.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manage/person")
public class PersonController {
	@RequestMapping("list")
	//@RequiresPermissions("person:list")
	public String list(){
		return "manage/person/person_list";
	}
	
	@RequestMapping("toCreate")
	public String toCreate(){
		return "manage/person_create";
	}
	
	@RequestMapping("doCreate")
	public String doAdd(){
		return "";
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
