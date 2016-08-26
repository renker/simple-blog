package com.ct.blog.person.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ct.blog.person.entity.Person;

@Repository
public interface PersonMapper {
    int deleteByPrimaryKey(String id);

    int insert(Person record);

    int insertSelective(Person record);

    Person selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Person record);

    int updateByPrimaryKey(Person record);
    
    Person findByAccount(String account);
    
    Person findByAccountAndPassword(@Param("account")String account,@Param("password")String password);
    
    List<Person> page();
}