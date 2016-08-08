package com.ct.blog.utils;

import java.util.UUID;

public class UUIDUtil {
	public static String randomUUID(){
		return UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
	}
}
