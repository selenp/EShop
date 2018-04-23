package com.eshop.dao.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.eshop.dao.BasicDao;
import com.eshop.entity.Record;
import com.eshop.entity.Item;
import com.eshop.entity.Page;

@Repository
public class RecordDaoImpl implements BasicDao<Record> {
	@Autowired
	private SessionFactory sessionFactory;

	private Session getCurrentSession() {
		return this.sessionFactory.getCurrentSession();
	}

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

	/**
	 * ��ѯ���ﳵ and ��ʷ��¼
	 * 
	 * @param key
	 *            �û�id
	 * @param isPay
	 *            �Ƿ���֧����0��δ֧������ѯ���ﳵ��1����֧������ѯ��ʷ��¼��
	 * @return
	 * @throws NumberFormatException
	 * @throws ParseException
	 */
	public Page<Item> findInfoByKey(int pageNo, long key, String isPay) throws NumberFormatException, ParseException {
		String hql = "select r.uid, r.fid, f.title, f.price, f.duration, f.date, f.image, r.time, r.id "
				+ "from Film as f, Record as r "
				+ "where r.fid = f.id and r.isPay = ?0 and r.uid = ?1 order by r.time desc";
		Query querySize = getCurrentSession().createQuery(hql).setParameter(0, isPay).setParameter(1, key);
		Query query = getCurrentSession().createQuery(hql).setParameter(0, isPay).setParameter(1, key)
				.setFirstResult((pageNo - 1) * Page.pageSize).setMaxResults(Page.pageSize);
		List queryResult = query.list();
		List sizeList = querySize.list();
		int total = 0;
		if (sizeList != null) {
			total = sizeList.size();
		}
		List<Item> list = new ArrayList<>();
		if (queryResult != null) {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			for (int i = 0; i < queryResult.size(); i++) {
				Object[] object = (Object[]) queryResult.get(i);
				long uid = Long.parseLong(object[0].toString());
				long fid = Long.parseLong(object[1].toString());
				String title = object[2].toString();
				String date = object[5].toString();
				String duration = object[4].toString();
				double price = Double.parseDouble(object[3].toString());
				String image = object[6].toString();
				String time = new SimpleDateFormat("yyyy-MM-dd hh:mm")
						.format(new Date(Long.parseLong(object[7].toString())));
				long rid = Long.parseLong(object[8].toString());
				Item info = new Item(uid, fid, title, date, duration, price, image, time, rid);
				list.add(info);
			}
		}
		Page<Item> page = new Page<>(total, pageNo, list);
		if (total % Page.pageSize != 0) {
			page.setTotalPages((total / Page.pageSize) + 1);
		} else {
			page.setTotalPages(total / Page.pageSize);
		}
		return page;
	}

	/** 
	 * ���������¼��������ӹ��ﳵ
	 */
	@Override
	public void save(Record record) {
		getCurrentSession().save(record);
	}

	/** 
	 * ���²�����¼�����ڽ�֧����־λ��1����ʾ֧��
	 */
	@Override
	public void update(Record record) {
		String hql = "update Record r set r.isPay = '1',r.time=?0 where uid = ?1";
		Query query = getCurrentSession().createQuery(hql).setParameter(0, new Date().getTime()).setParameter(1,
				record.getUid());
		query.executeUpdate();
	}

	/**  
	 * ɾ��������¼�������Ƴ����ﳵ�еĵ�Ӱ
	 */
	@Override
	public void deleteById(long id) {
		Record record = new Record();
		record.setId(id);
		getCurrentSession().delete(record);
	}

}
