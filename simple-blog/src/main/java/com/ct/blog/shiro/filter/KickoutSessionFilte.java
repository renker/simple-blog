package com.ct.blog.shiro.filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authz.AuthorizationFilter;

public class KickoutSessionFilte extends AuthorizationFilter{

	protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue)
			throws Exception {
		Subject subject = getSubject(request, response);
		if(subject.isAuthenticated()){
			
		}
		return false;
	}

}
