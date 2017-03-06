package com.invotiate.users.registration.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Proxy;

@Entity
@Table(name = "Currency")
@Proxy(lazy = false)
public class Currency implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "idCurrency")
	private Long idCurrency;
	@Column(name = "currencyName")
	private String currencyName;
	@Column(name = "isActive")
	private boolean isActive;
	@Column(name = "createdOn")
	private Date createdOn;
	@Column(name = "modifiedOn")
	private Date modifiedOn;

	public Currency() { }

	public Currency(Long idCurrency, String currencyName, boolean isActive, Date createdOn, Date modifiedOn) {
		this.idCurrency = idCurrency;
		this.currencyName = currencyName;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
	}

	public Long getIdCurrency() {
		return idCurrency;
	}

	public void setIdCurrency(Long idCurrency) {
		this.idCurrency = idCurrency;
	}

	public String getCurrencyName() {
		return currencyName;
	}

	public void setCurrencyName(String currencyName) {
		this.currencyName = currencyName;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
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

//	@Override
//	public String toString() {
//		return "Currency [idCurrency=" + idCurrency + ", currencyName=" + currencyName + ", isActive=" + isActive
//				+ ", createdOn=" + createdOn + ", modifiedOn=" + modifiedOn + "]";
//	}

}
