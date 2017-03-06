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

public class Country implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private String idCountry;
	private String countryName;
	private String createdOn;
	private String modifiedOn;
	private String active;

	public Country() { }

	public Country(String countryName) {
		this.countryName = countryName;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	@Override
	public String toString() {
		return "Country [countryName=" + countryName + "]";
	}

	public String getIdCountry() {
		return idCountry;
	}

	public void setIdCountry(String idCountry) {
		this.idCountry = idCountry;
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
