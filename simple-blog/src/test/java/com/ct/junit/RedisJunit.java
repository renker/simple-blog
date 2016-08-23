package com.ct.junit;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ct.blog.person.entity.Person;
import com.ct.blog.person.service.IPersonService;
import com.ct.blog.person.service.impl.PersonServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml"})
public class RedisJunit {
	@Resource
	private IPersonService personService;
	
	@Test
	public void cacheTest(){
//		Person person = personService.selectByPrimaryKey("6E2FEA7CE7944222A54F0157160335E0");
//		System.out.println("1:>>>>"+person.toString());
//		
//		
//		Person person2 = personService.selectByPrimaryKey("6E2FEA7CE7944222A54F0157160335E0");
//		System.out.println("2:>>>>"+person.toString());
	}
}
