package com.eshop.service.impl;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshop.dao.impl.RecordDaoImpl;
import com.eshop.entity.Record;
import com.eshop.entity.Item;
import com.eshop.entity.Page;
import com.eshop.service.BasicService;

@Service
@Transactional
public class RecordServiceImpl implements BasicService<Record> {
	@Autowired
	private RecordDaoImpl recordDao;

	@Override
	public List<Record> findAll() {

		return null;
	}

	@Override
	public List<Record> findListByKey(String key) {

		return null;
	}

	@Override
	public Record findById(long id) {

		return null;
	}

	@Override
	public Record findByKey(String key) {
		return null;
	}

	public Page<Item> findInfoByKey(int pageNo, long key, String isPay) throws NumberFormatException, ParseException {
		return recordDao.findInfoByKey(pageNo, key, isPay);
	}

	@Override
	public void save(Record record) {
		recordDao.save(record);
	}

	@Override
	public void update(Record record) {
		recordDao.update(record);
	}

	@Override
	public void deleteById(long id) {
		recordDao.deleteById(id);
	}
}
