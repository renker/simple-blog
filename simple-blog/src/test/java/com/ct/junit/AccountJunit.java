package com.ct.junit;

import org.junit.Test;

import com.ct.blog.utils.MD5Util;
import com.ct.blog.utils.UUIDUtil;

public class AccountJunit {
	@Test
	public void md5(){
		String salt = UUIDUtil.randomUUID();
		String password = MD5Util.MD5("root", salt);
		System.out.println("Password:"+password+" \t Salt:"+salt);
	}
}
