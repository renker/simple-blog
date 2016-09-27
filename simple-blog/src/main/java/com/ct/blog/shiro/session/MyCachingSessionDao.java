package com.ct.blog.shiro.session;

import java.io.Serializable;
import java.util.concurrent.ConcurrentHashMap;

import org.apache.shiro.cache.AbstractCacheManager;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheException;
import org.apache.shiro.cache.MapCache;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.CachingSessionDAO;

public class MyCachingSessionDao extends CachingSessionDAO{
	public MyCachingSessionDao() {
        setCacheManager(new AbstractCacheManager() {
            @Override
            protected Cache<Serializable, Session> createCache(String name) throws CacheException {
                return new MapCache<Serializable, Session>(name, new ConcurrentHashMap<Serializable, Session>());
            }
        });
    }
	
	// 创建session时触发
	protected Serializable doCreate(Session session) {
        Serializable sessionId = generateSessionId(session);
        assignSessionId(session, sessionId);
        return sessionId;
    }

	// 读取session时触发
	protected Session doReadSession(Serializable sessionId) {
		 return null; 	//should never execute because this implementation relies on parent class to access cache, which
	        			//is where all sessions reside - it is the cache implementation that determines if the
	        			//cache is memory only or disk-persistent, etc.
	}
	
	// 更新session时触发
	protected void doUpdate(Session session) {
        //does nothing - parent class persists to cache.
    }
	
	// 删除session时触发
    protected void doDelete(Session session) {
        //does nothing - parent class removes from cache.
    }

}
