package com.ct.blog.person.service;

import com.ct.blog.person.entity.Person;

public interface IPersonService {
	int deleteByPrimaryKey(String id);

    int insert(Person record);
    
    Person selectByPrimaryKey(String id);
    
    int updateByPrimaryKey(Person record);
    
    Person login(String account);
    
    Person login(String account,String password);
}
