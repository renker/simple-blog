package com.ct.blog.shiro.authz;

import java.io.Serializable;
import java.util.Collection;

public interface MyAuthorizationInfo extends Serializable{
	
	Collection<Object> getRoles();
	Collection<String> getStringRoles();
	Collection<String> getStringPermissions();
}
