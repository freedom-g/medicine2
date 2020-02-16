package com.medince.utils;

import java.util.UUID;


public class IdUtil {

	public static String uuid(){
		
		String str = UUID.randomUUID().toString(); 
		
		str = str.replace("-", "");
		
		return str;
	}
	
	public static String OrderId() {
		
		long millis = System.currentTimeMillis();
		
		System.out.println(millis);
		
		return millis+"";
	}

}
