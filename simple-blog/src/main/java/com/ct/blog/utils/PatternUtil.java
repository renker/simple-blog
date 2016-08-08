package com.ct.blog.utils;

public class PatternUtil {
	private final static String REQUEST_MAPPING_REGEX="[\\\\|/]+";
	
	private final static String REQUEST_MAPPING_PATH_REGEX="(\\{\\w+\\})";
	
	public static String resourceKey(String url){
		url = url.replaceAll(REQUEST_MAPPING_REGEX, ".");
		if(url.startsWith(".")){
			url = url.replaceFirst(".", "");
		}
		return url.replaceAll(REQUEST_MAPPING_PATH_REGEX, "*");
	}
	
	public static String resourcePattern(String url){
		url = url.replaceAll(REQUEST_MAPPING_REGEX, "/");
		if(!url.startsWith("/")){
			url = "/"+url;
		}
		return url.replaceAll(REQUEST_MAPPING_PATH_REGEX, "*");
	}
	
}
