package com.eshop.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * ��¼�ҵ���߼�ʵ�壬��ʾһ����¼�����ﳵ��¼or��ʷ��¼��
 *
 */
public class Item implements Serializable {
	private long rid; // ��¼id
	private long uid; // �û�id
	private long fid; // ��Ӱid 
	private String title; // ��Ӱ��
	private String date; // ��ӳ����
	private String duration; // ʱ��
	private double price; // �۸�
	private String image; // ����ͼƬ
	private String time; // ֧��ʱ��

	public Item() {

	}

	public Item(long uid, long fid, String title, String date, String duration, double price, String image, String time,
			long rid) {
		this.uid = uid;
		this.fid = fid;
		this.title = title;
		this.date = date;
		this.duration = duration;
		this.price = price;
		this.image = image;
		this.time = time;
		this.rid = rid;
	}

	public long getRid() {
		return rid;
	}

	public void setRid(long rid) {
		this.rid = rid;
	}

	public long getUid() {
		return uid;
	}

	public void setUid(long uid) {
		this.uid = uid;
	}

	public long getFid() {
		return fid;
	}

	public void setFid(long fid) {
		this.fid = fid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

}
