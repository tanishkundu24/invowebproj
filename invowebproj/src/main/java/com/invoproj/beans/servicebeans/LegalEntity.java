
package com.invoproj.beans.servicebeans;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Proxy;

public class LegalEntity implements Serializable {

	private Country country;
	private Currency defaultCurrency;
	private String industry;
	@Pattern(regexp = "^([a-zA-Z]+)$" ,message="Company Name should contain only alpha charcters")
	@Size(min=1,max=30,message="Company Name should be less than 30 characters")
	private String legalEntityName;

	public LegalEntity() {
	}

	public LegalEntity(String legalEntityName, Country country, 
			Currency defaultCurrency, String industry) {
		this.country = country;
		this.defaultCurrency = defaultCurrency;
		this.industry = industry;
	}


	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	public Currency getDefaultCurrency() {
		return defaultCurrency;
	}

	public void setDefaultCurrency(Currency defaultCurrency) {
		this.defaultCurrency = defaultCurrency;
	}

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}


	public String getLegalEntityName() {
		return legalEntityName;
	}

	public void setLegalEntityName(String legalEntityName) {
		this.legalEntityName = legalEntityName;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((country == null) ? 0 : country.hashCode());
		result = prime * result + ((defaultCurrency == null) ? 0 : defaultCurrency.hashCode());
		result = prime * result + ((industry == null) ? 0 : industry.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		LegalEntity other = (LegalEntity) obj;
		if (country == null) {
			if (other.country != null)
				return false;
		} else if (!country.equals(other.country))
			return false;
		if (defaultCurrency == null) {
			if (other.defaultCurrency != null)
				return false;
		} else if (!defaultCurrency.equals(other.defaultCurrency))
			return false;
		if (industry == null) {
			if (other.industry != null)
				return false;
		} else if (!industry.equals(other.industry))
			return false;
		return true;
	}


}
