package com.ct.blog.person.condition;
import com.ct.blog.person.em.PersonStatus;

public class PersonCondition {
	private String account;
	private Integer status;
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(PersonStatus status) {
		this.status = status.getValue();
	}
	
}
