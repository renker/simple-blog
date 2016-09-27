package com.ct.blog.person.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ct.blog.common.AjaxResult;
import com.ct.blog.common.BaseController;
import com.ct.blog.em.controller.Status;

@Controller
@RequestMapping("manage/resource")
public class ResourceController extends BaseController{
	@RequestMapping("list")
	public String list(){
		return "manage/resource/resource_list";
	}
	
	@RequestMapping("autoScan")
	public AjaxResult autoScan(){
		try {
			
			return ajaxResult(Status.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult(Status.ERROR);
	}
}
