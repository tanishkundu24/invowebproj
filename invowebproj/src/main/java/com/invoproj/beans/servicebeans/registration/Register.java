package com.invoproj.beans.servicebeans.registration;

import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Register {

	private String name;
	@Valid
	private User user;
	
	@Size(min=1,max=40,message="First Name should be greater than one character and less than 40 characters")
	@Pattern(regexp = "^([a-zA-Z]+)$" ,message="Name should contain only alpha charcters")
	private String fName;
	
	@Size(min=1,max=1,message="Middle Name should be exactly one character")
	@Pattern(regexp = "^([a-zA-Z]+)$" ,message="Name should contain only alpha charcters")
	private String mName;
	
	@Size(min=1,max=20,message="Last Name should be greater than one character and less than 20 characters")
	@Pattern(regexp = "^([a-zA-Z]+)$" ,message="Name should contain only alpha charcters")
	private String lName;
	
	@Valid
	private List<Address> addresses;
	
	@Valid
	private List<LegalEntity> legalEntities;
	
	@Pattern(regexp = "\\d{10}",message="Phone number should be 10 digits and should not contain alpha charcters")
	private String phoneNo;
	private SubscribedPackage subscribedPackage;
	private String active;
	private String validated;
	private String consultant;
	private String bkKeeperAcLegal;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public SubscribedPackage getSubscribedPackage() {
		return subscribedPackage;
	}
	public void setSubscribedPackage(SubscribedPackage subscribedPackage) {
		this.subscribedPackage = subscribedPackage;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public String getValidated() {
		return validated;
	}
	public void setValidated(String validated) {
		this.validated = validated;
	}
	public String getConsultant() {
		return consultant;
	}
	public void setConsultant(String consultant) {
		this.consultant = consultant;
	}
	public String getBkKeeperAcLegal() {
		return bkKeeperAcLegal;
	}
	public void setBkKeeperAcLegal(String bkKeeperAcLegal) {
		this.bkKeeperAcLegal = bkKeeperAcLegal;
	}
	public List<Address> getAddresses() {
		return addresses;
	}
	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
	}
	public List<LegalEntity> getLegalEntities() {
		return legalEntities;
	}
	public void setLegalEntities(List<LegalEntity> legalEntities) {
		this.legalEntities = legalEntities;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	
	

}
