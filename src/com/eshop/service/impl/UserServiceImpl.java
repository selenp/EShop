package com.eshop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshop.dao.impl.UserDaoImpl;
import com.eshop.entity.User;
import com.eshop.service.BasicService;

@Service
@Transactional
public class UserServiceImpl implements BasicService<User> {
	@Autowired
	private UserDaoImpl userDao;

	@Override
	public List<User> findAll() {

		return null;
	}

	@Override
	public User findById(long id) {

		return null;
	}

	@Override
	public User findByKey(String key) {
		return userDao.findByKey(key);
	}

	@Override
	public void save(User user) {
		userDao.save(user);

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
