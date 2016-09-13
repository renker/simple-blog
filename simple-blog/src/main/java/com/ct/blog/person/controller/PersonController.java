package com.ct.blog.person.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

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
import com.ct.blog.person.condition.PersonCondition;
import com.ct.blog.person.entity.Person;
import com.ct.blog.person.service.IPersonService;

@Controller
@RequestMapping("/manage/person")
public class PersonController extends BaseController{
	@Resource
	private IPersonService personService;
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	// @RequiresPermissions("person:list")
	public String index(){
		return "manage/person/person_list";
	}
	
	@RequestMapping(value="list",method=RequestMethod.POST)
	@ResponseBody
	public Page<Person> list(Page<Person> page,PersonCondition condition){
		page = personService.listPage(page, condition);
		return page;
	}
	
	@RequestMapping("toCreate/layer")
	public String toCreate(){
		return "manage/person/person_create";
	}
	
	@RequiresPermissions("person.toCreate")
	@RequestMapping(value="doCreate",method=RequestMethod.POST)
	@ResponseBody
	public AjaxResult doAdd(Person person){
		try {
			personService.insert(person);
			return ajaxResult(Status.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
		}
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
