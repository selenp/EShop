package com.eshop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshop.dao.impl.FilmDaoImpl;
import com.eshop.entity.Film;
import com.eshop.service.BasicService;

@Service
@Transactional
public class FilmServiceImpl implements BasicService<Film> {
	@Autowired
	private FilmDaoImpl filmDao;

	@Override
	public List<Film> findAll() {

		return null;
	}

	@Override
	public List<Film> findListByKey(String key) {
		return filmDao.findListByKey(key);
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

	}

	@Override
	public void update(Film t) {
		
	}

	@Override
	public void deleteById(long id) {
		// TODO Auto-generated method stub
		
	}

}
