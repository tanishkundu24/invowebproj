package com.invoproj.beans.servicebeans.registration;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class LegalEntity {
	
	@Pattern(regexp = "^([a-zA-Z0-9 .]+)$" ,message="Company Name should contain only alpha charcters, numbers, spaces and dots")
	@Size(min=1,max=30,message="Company Name should be less than 30 characters")
	private String legalEntityName;
	private Country country;
	private Currency defaultCurrency;
	private String industry;
	private String hsaRight;
	private String active;
	public String getLegalEntityName() {
		return legalEntityName;
	}
	public void setLegalEntityName(String legalEntityName) {
		this.legalEntityName = legalEntityName;
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
	public String getHsaRight() {
		return hsaRight;
	}
	public void setHsaRight(String hsaRight) {
		this.hsaRight = hsaRight;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	
	

}
