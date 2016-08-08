package com.ct.blog.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util {
	private final static char hexDigits[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
	public static String MD5(String value){
		try {
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");
			// 更新指定字符串的摘要
			messageDigest.update(value.getBytes());
			// 获取摘要
			byte [] digest =  messageDigest.digest();
			
			// 把摘要密文转换成十六进制的字符串形式
			int j = digest.length;
			char [] result = new char[j*2];
			int k=0;
			for (int i=0;i<j;i++) {
				byte b = digest[i];
				result[k++] = hexDigits[b >>> 4 & 0xf];
				result[k++] = hexDigits[b & 0xf];
			}
			return new String(result);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static String MD5(String value,String salt){
		value = value+salt;
		return MD5(value);
	}
}
