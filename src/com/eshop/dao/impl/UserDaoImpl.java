package com.eshop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.eshop.dao.BasicDao;
import com.eshop.entity.User;

@Repository
public class UserDaoImpl implements BasicDao<User> {
	@Autowired
	private SessionFactory sessionFactory;

	private Session getCurrentSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public List<User> findAll() {

		return null;
	}

	@Override
	public User findById(long id) {

		return null;
	}

	/**
	 * �����û�������ע��
	 */
	@Override
	public void save(User user) {
		getCurrentSession().save(user);
	}

	/**
	 * ���ݵ�¼����ѯ�û������ڵ�¼���û���Ϣ��ѯ
	 */
	@Override
	public User findByKey(String key) {
		String hql = "from User where username=?0";
		Query query = getCurrentSession().createQuery(hql).setParameter(0, key);
		User user = (User) query.uniqueResult();
		return user;
	}

	@Override
	public List<User> findListByKey(String key) {

		return null;
	}

	@Override
	public void update(User t) {
		
	}

	@Override
	public void deleteById(long id) {
		// TODO Auto-generated method stub
		
	}

}
