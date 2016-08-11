package com.ct.blog.person.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ct.blog.common.AjaxResult;
import com.ct.blog.common.BaseController;
import com.ct.blog.common.Page;
import com.ct.blog.em.controller.Status;
import com.ct.blog.person.entity.Person;

@Controller
@RequestMapping("/manage/person")
public class PersonController extends BaseController{
	@RequestMapping(value="list",method=RequestMethod.GET)
	//@RequiresPermissions("person:list")
	public String listIndex(){
		return "manage/person/person_list";
	}
	
	@RequestMapping(value="list",method=RequestMethod.POST)
	public Page<Person> list(Page<Person> page){
		return page;
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
