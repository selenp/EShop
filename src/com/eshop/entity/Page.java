package com.eshop.entity;

import java.io.Serializable;
import java.util.List;

/**
 * ��ҳʵ��
 * 
 * @param <T> ����
 */
public class Page<T> implements Serializable {
	// ҳ���С
	public static final int pageSize = 5;
	// ��ҳ��
	private int totalPages;
	// ��ǰҳ��
	private int currentPage;
	// ��������List
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
