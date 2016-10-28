package com.ct.blog.quartz;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import org.quartz.DisallowConcurrentExecution;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.ct.blog.person.service.IPersonService;
import com.ct.blog.person.service.impl.PersonServiceImpl;

/**
 * @author Tao
 */
@DisallowConcurrentExecution
public class QuartzProxyJob extends QuartzJobBean{
	Logger logger = LoggerFactory.getLogger(QuartzProxyJob.class);
	private String targetClass;
	private String targetMethod;
	private ApplicationContext applicationContext;
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		if(logger.isDebugEnabled()){
			logger.debug("[quartz-2.2.3]代理执行任务");
		}
		try {
			Object targetObject = applicationContext.getBean(Class.forName(targetClass).newInstance().getClass());
			Method method = null;
			
			method = targetObject.getClass().getMethod(targetMethod, new Class[]{JobExecutionContext.class});
			method.invoke(targetObject, context);
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (BeansException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public void setTargetClass(String targetClass) {
		this.targetClass = targetClass;
	}
	public void setTargetMethod(String targetMethod) {
		this.targetMethod = targetMethod;
	}
	public void setApplicationContext(ApplicationContext applicationContext) {
		this.applicationContext = applicationContext;
	}
	
}
