package com.invotiate.users.registration.model;

import java.util.Date;
import java.util.List;

public class UserPermission {
	private Long idUser;
	private String userName;
	private String password;
	private String eMail;
	private List<SecurityQA> securityQAs;
	private boolean isActive;
	private Date createdOn;
	private Date modifiedOn;

	public UserPermission() { }

	public UserPermission(Long idUser, String userName, String password, String eMail, List<SecurityQA> securityQAs,
			boolean isActive, Date createdOn, Date modifiedOn) {
		this.idUser = idUser;
		this.userName = userName;
		this.password = password;
		this.eMail = eMail;
		this.securityQAs = securityQAs;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
	}

	public Long getIdUser() {
		return idUser;
	}

	public void setIdUser(Long idUser) {
		this.idUser = idUser;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public List<SecurityQA> getSecurityQAs() {
		return securityQAs;
	}

	public void setSecurityQAs(List<SecurityQA> securityQAs) {
		this.securityQAs = securityQAs;
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

	@Override
	public String toString() {
		return "User [idUser=" + idUser + ", userName=" + userName + ", password=" + password + ", eMail=" + eMail
				+ ", securityQAs=" + securityQAs + ", isActive=" + isActive + ", createdOn=" + createdOn
				+ ", modifiedOn=" + modifiedOn + "]";
	}

}
