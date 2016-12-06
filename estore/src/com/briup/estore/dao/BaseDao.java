package com.briup.estore.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

import com.briup.estore.common.session.HibernateSessionFactory;

/**
 * 基础dao
 * 其他dao要继承该类
 * */
@SuppressWarnings("unchecked")
public class BaseDao<M extends Serializable> {
	//获取会话
	public Session getSession(){
		return HibernateSessionFactory.getSession();
	}
	//保存
	public void save(M model){
		getSession().save(model);
	}
	//保存或者更新
	public void saveOrUpdate(M model){
		getSession().saveOrUpdate(model);
	}
	//删除
	public void delete(M model){
		getSession().delete(model);
	}
	//通过id查寻
	public M findById(Long id){
		return (M) getSession().get(getEntityClass(), id);
	}
	//" from Book where price >?" 9
	public List<M> findbyHql(String hql,Object...args){
		Query query = getSession().createQuery(hql);
		for(int i=0;i<args.length;i++){
			query.setParameter(i, args[i]);
		}
		return query.list();
	}
	public List<M> findByCriteria(Criteria criteria){
		return criteria.list();
	}
	
	// qbc  query by criteria
	public List<M> findAll(){
		//创建了泛型实参所对一个类的一个模板
		Criteria criteria
			= getSession().createCriteria(getEntityClass());
		return criteria.list();
		//criteria.add(Restrictions.eq("name", "briup"));
		//criteria.add(Restrictions.isNull("price"));
		// select * from book where name ='briup' and price is null;
	}
	
	/**
	 * 获取子类中泛型实参的类型
	 * */
	public Class<M> getEntityClass(){
		//获取父类类型
		ParameterizedType type = 
				(ParameterizedType) this.getClass().getGenericSuperclass();
		//从父类类型中获取第一个参数，并将其转换为Class<M>
		return (Class<M>) type.getActualTypeArguments()[0];
	}
	
	
}
