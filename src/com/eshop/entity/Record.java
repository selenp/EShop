package com.eshop.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 记录实体，映射数据库record表
 *
 */
@Entity
@Table(name = "record")
public class Record implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(name = "uid")
	private long uid;
	@Column(name = "fid")
	private long fid;
	@Column(name = "isPay")
	private String isPay;
	@Column(name = "time")
	private long time;

	public Record() {
		super();
	}

	public Record(long uid, long fid, String isPay, long time) {
		this.uid = uid;
		this.fid = fid;
		this.isPay = isPay;
		this.time = time;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
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

	public String getIsPay() {
		return isPay;
	}

	public void setIsPay(String isPay) {
		this.isPay = isPay;
	}

	public long getTime() {
		return time;
	}

	public void setTime(long time) {
		this.time = time;
	}

}
