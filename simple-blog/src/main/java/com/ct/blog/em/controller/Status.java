package com.ct.blog.em.controller;

public enum Status {
	SUCCESS("success"),ERROR("error"),WARN("warn"),UNAUTHORIZED("unauthorized");
	
	private String value;
	private Status(String value) {
		this.value = value;
	}
	
	public String getValue() {
		return value;
	}
}
