package com.hp.bean;

import java.io.Serializable;
import java.util.List;

public class PageResult implements Serializable{
	
	private long total;//总的记录数
	
	private List rows;//数据集合
	
	private long totalPages;;//总的页面

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public List getRows() {
		return rows;
	}

	public void setRows(List rows) {
		this.rows = rows;
	}

	public long getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(long totalPages) {
		this.totalPages = totalPages;
	}

	public PageResult(long total, List rows, long totalPages) {
		super();
		this.total = total;
		this.rows = rows;
		this.totalPages = totalPages;
	}
}
