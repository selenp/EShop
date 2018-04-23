package com.eshop.dao;

import java.util.List;

public interface BasicDao<T> {
	public List<T> findAll();

	public List<T> findListByKey(String key);

	public T findById(long id);

	public T findByKey(String key);

	public void save(T t);
	
	public void update(T t);
	
	public void deleteById(long id);
}
