package com.eshop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.eshop.dao.BasicDao;
import com.eshop.entity.Film;

@Repository
public class FilmDaoImpl implements BasicDao<Film> {
	@Autowired
	private SessionFactory sessionFactory;

	private Session getCurrentSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public List<Film> findAll() {
		return null;
	}

	@Override
	public Film findById(long id) {

		return null;
	}

	@Override
	public Film findByKey(String key) {

		return null;
	}

	@Override
	public void save(Film t) {
		getCurrentSession().save(t);
	}

	/* 
	 * 根据类别查询电影
	 * key：{0：漫威，1：DC，2：其他}
	 */
	@Override
	public List<Film> findListByKey(String key) {
		String hql = "from Film where type=?0 order by id desc";
		Query query = getCurrentSession().createQuery(hql).setParameter(0, Integer.parseInt(key));
		List<Film> list = query.list();
		return list;
	}

	@Override
	public void update(Film t) {
		
	}

	@Override
	public void deleteById(long id) {
		// TODO Auto-generated method stub

	}

}
