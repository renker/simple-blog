package com.ct.junit;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ct.blog.spring.SpringContextUtil;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml"})
public class SpringJunit {
	
	@Resource
	private SpringContextUtil springContextUtil;
	@Test
	public void allMappings(){
		springContextUtil.getAllRequestMappings();
	}
}
