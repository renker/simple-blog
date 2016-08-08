package com.ct.blog.spring;

import java.lang.reflect.Method;
import java.util.Map;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ct.blog.utils.PatternUtil;

@Component
public class SpringContextUtil implements ApplicationContextAware{
	
	private static ApplicationContext applicationContext;
	
	public void setApplicationContext(ApplicationContext ac) throws BeansException {
		this.applicationContext = ac;
	}
	
	public void getAllRequestMappings(){
		Map<String, Object> beans = applicationContext.getBeansWithAnnotation(Controller.class);
		for (String key : beans.keySet()) {
			Object bean = beans.get(key);
			
			if(bean.getClass().isAnnotationPresent(RequestMapping.class)){
				RequestMapping crm = bean.getClass().getAnnotation(RequestMapping.class);
				String [] vrmVal = crm.value();
				
				Method [] methods = bean.getClass().getMethods();
				for (Method method : methods) {
					if(method.isAnnotationPresent(RequestMapping.class)){
						RequestMapping mrm = method.getAnnotation(RequestMapping.class);
						String [] mrmVal = mrm.value();
						if(mrmVal != null && mrmVal.length>0){
							String url = ((vrmVal != null && vrmVal.length>0) ?vrmVal[0]:"")+"/"+mrmVal[0];
							
							String resourceKey = PatternUtil.resourceKey(url);
							String resourcePattern = PatternUtil.resourcePattern(url);
							
							System.out.println(resourceKey+"\t"+resourcePattern);
						}
					}
				}
			}
		}
	}

}
