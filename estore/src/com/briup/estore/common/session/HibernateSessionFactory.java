package com.briup.estore.common.session;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateSessionFactory {
	private static SessionFactory factory;
	private static ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();
	static{
		Configuration config = new Configuration();
		config.configure();
		factory = config.buildSessionFactory();
	}
	//获取当前线程session
	public static Session getSession(){
		Session session = threadLocal.get();
		if(session == null || !session.isOpen()){
			session = factory.openSession();
			threadLocal.set(session);
		}
		return session;
	}
	
}
