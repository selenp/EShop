package com.eshop.entity;

import java.io.Serializable;
import java.util.List;

/**
 * 分页实体
 * 
 * @param <T> 泛型
 */
public class Page<T> implements Serializable {
	// 页面大小
	public static final int pageSize = 5;
	// 总页数
	private int totalPages;
	// 当前页码
	private int currentPage;
	// 结果集存放List
	private List<T> result;

	public Page() {
	}

	public Page(int totalPages, int currentPage, List<T> result) {
		setTotalPages(totalPages);
		setCurrentPage(currentPage);
		setResult(result);
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public List<T> getResult() {
		return result;
	}

	public void setResult(List<T> result) {
		this.result = result;
	}
}
