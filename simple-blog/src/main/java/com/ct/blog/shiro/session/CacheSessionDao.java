package com.ct.blog.shiro.session;

import java.io.Serializable;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.ValidatingSession;
import org.apache.shiro.session.mgt.eis.CachingSessionDAO;

public class CacheSessionDao extends CachingSessionDAO{
	
	// 创建session时触发
	protected Serializable doCreate(Session session) {
		//TODO 处理session 信息
		return session.getId();
	}

	// 读取session时触发
	protected Session doReadSession(Serializable sessionId) {
		return null;
	}
	
	// 更新session时触发
	protected void doUpdate(Session session) {
		// 会话已过期 没必要更新
		if(session instanceof ValidatingSession && !((ValidatingSession) session).isValid()){
			return;
		}
		
		//TODO 处理会话信息
	}

	// 删除session时触发
	protected void doDelete(Session session) {
		
	}

}
