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

public class Currency implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String idCurrency;
	private String currencyName;
	private String createdOn;
	private String modifiedOn;
	private String active;

	public Currency() { }

	public Currency(String currencyName) {
		this.currencyName = currencyName;
	}

	public String getCurrencyName() {
		return currencyName;
	}

	public void setCurrencyName(String currencyName) {
		this.currencyName = currencyName;
	}

	public String getIdCurrency() {
		return idCurrency;
	}

	public void setIdCurrency(String idCurrency) {
		this.idCurrency = idCurrency;
	}

	public String getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(String createdOn) {
		this.createdOn = createdOn;
	}

	public String getModifiedOn() {
		return modifiedOn;
	}

	public void setModifiedOn(String modifiedOn) {
		this.modifiedOn = modifiedOn;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


}
