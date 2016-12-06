package com.briup.estore.common;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateTest {
	public static void main(String[] args) {
		Configuration config = new Configuration();
		//读取配置文件
		config.configure();
		SessionFactory factory = config.buildSessionFactory();
		
		//读取映射文件 测试映射文件中的属性和列是否对应，关系
		Session session = 
				factory.openSession();
		String hql = "from Book";
		session.createQuery(hql).list();
	}
}
