package com.ct.blog.common;

import com.ct.blog.em.controller.Status;

public class AjaxResult {
	
	private String status;
	
	private String msg;
	
	private Object result;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getResult() {
		return result;
	}
	public void setResult(Object result) {
		this.result = result;
	}
	
	public AjaxResult(Status status) {
		super();
		this.status = status.getValue();
	}
	
	public AjaxResult(Status status,String msg) {
		super();
		this.status = status.getValue();
		this.msg = msg;
	}
	
	public AjaxResult(Status status,Object result) {
		super();
		this.status = status.getValue();
		this.result = result;
	}
	
	public AjaxResult(Status status,String msg ,Object result) {
		super();
		this.status = status.getValue();
		this.msg = msg;
		this.result = result;
	}
	
}
