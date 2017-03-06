package com.invoproj.beans.servicebeans.registration;

import javax.validation.constraints.Size;

public class Address {
	
	@Size(min=1,max=40,message="Address1 should be less than 40 characters")
	private String line1;
	@Size(min=1,max=40,message="Address2 should be less than 40 characters")
	private String line2;
	@Size(min=1,max=40,message="Address3 should be less than 40 characters")
	private String city;
	private String pinCode;
	private String type;
	private String active;
	private Country country;
	public String getLine1() {
		return line1;
	}
	public void setLine1(String line1) {
		this.line1 = line1;
	}
	public String getLine2() {
		return line2;
	}
	public void setLine2(String line2) {
		this.line2 = line2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPinCode() {
		return pinCode;
	}
	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public Country getCountry() {
		return country;
	}
	public void setCountry(Country country) {
		this.country = country;
	}
	
	

}