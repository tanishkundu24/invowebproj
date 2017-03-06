package com.invoproj.beans.servicebeans;

import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class UserProfile /*implements Serializable*/ {

	@Size(min=1,max=40,message="Name should be greater than one character and less than 40 characters")
	@Pattern(regexp = "^([a-zA-Z]+)$" ,message="Name should contain only alpha charcters")
	private String name;
	
	
	@Size(min=1,max=40,message="First Name should be greater than one character and less than 40 characters")
	@Pattern(regexp = "^([a-zA-Z]+)$" ,message="Name should contain only alpha charcters")
	private String fName;
	
	@Size(min=1,max=1,message="Middle Name should be exactly one character")
	@Pattern(regexp = "^([a-zA-Z]+)$" ,message="Name should contain only alpha charcters")
	private String mName;
	
	@Size(min=1,max=20,message="Last Name should be greater than one character and less than 20 characters")
	@Pattern(regexp = "^([a-zA-Z]+)$" ,message="Name should contain only alpha charcters")
	private String lName;
	
	private String phoneNo;
	
	private boolean isBkKeeperAcLegal;
	
	@Valid
	private List<Address> addresses;
	@Valid
	private List<LegalEntity> legalEntities;
	
	@Valid
	private User user;

	public UserProfile() {
	}

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

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
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


	public boolean isBkKeeperAcLegal() {
		return isBkKeeperAcLegal;
	}

	public void setBkKeeperAcLegal(boolean isBkKeeperAcLegal) {
		this.isBkKeeperAcLegal = isBkKeeperAcLegal;
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

}
