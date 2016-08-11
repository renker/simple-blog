package com.ct.blog.common;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
public class Page<T> implements Serializable{
	private static final long serialVersionUID = 1L;
	/* 当前页数  */
	private Integer currentPage = 1;
	/* 第页显示条数 */
	private Integer pageSize = 10;
	/* 总页数 */
	private Integer allPage = 0;
	/* 总记录条数 */
	private Integer allRecord = 0;
	/* 结果集 */
	private List<T> results = new ArrayList<T>();
	/* 以什么字段排序 */
	private String field;
	/* 排序规则  "asc"or"desc" */
	private String rule;
	
	public Page() {
		super();
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getAllPage() {
		return (int)Math.ceil(Double.parseDouble(allRecord.toString())/pageSize);
	}
	public void setAllPage(Integer allPage) {
		this.allPage = allPage;
	}
	public Integer getAllRecord() {
		return allRecord;
	}
	public void setAllRecord(Integer allRecord) {
		this.allRecord = allRecord;
	}
	public List<T> getResults() {
		return results;
	}
	public void setResults(List<T> results) {
		this.results = results;
	}
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public String getRule() {
		return rule;
	}
	public void setRule(String rule) {
		this.rule = rule;
	}
	
}
