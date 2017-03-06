package com.invoproj.beans.servicebeans;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Proxy;

public class SecurityQuestion implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long idSecurityQuestion;
	private String question;
	private boolean active;
	private Date createdOn;
	private Date modifiedOn;

	public SecurityQuestion() { }

	public SecurityQuestion(Long idSecurityQuestion, String question, boolean active, Date createdOn,
			Date modifiedOn) {
		this.idSecurityQuestion = idSecurityQuestion;
		this.question = question;
		this.active = active;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
	}

	public Long getIdSecurityQuestion() {
		return idSecurityQuestion;
	}

	public void setIdSecurityQuestion(Long idSecurityQuestion) {
		this.idSecurityQuestion = idSecurityQuestion;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public Date getModifiedOn() {
		return modifiedOn;
	}

	public void setModifiedOn(Date modifiedOn) {
		this.modifiedOn = modifiedOn;
	}
//
//	@Override
//	public String toString() {
//		return "SecurityQuestion [idSecurityQuestion=" + idSecurityQuestion + ", question=" + question + ", isActive="
//				+ isActive + ", createdOn=" + createdOn + ", modifiedOn=" + modifiedOn + "]";
//	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

}
