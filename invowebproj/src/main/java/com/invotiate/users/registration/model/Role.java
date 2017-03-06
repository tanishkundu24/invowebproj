package com.invotiate.users.registration.model;

import java.util.Date;

public class Role {
	private Long idRole;
	private String name;
	private boolean isActive;
	private Date createdOn;
	private Date modifiedOn;

	public Role() { }

	public Role(Long idRole, String name, boolean isActive, Date createdOn, Date modifiedOn) {
		this.idRole = idRole;
		this.name = name;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
	}

	public Long getIdRole() {
		return idRole;
	}

	public void setIdRole(Long idRole) {
		this.idRole = idRole;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
		return "Role [idRole=" + idRole + ", name=" + name + ", isActive=" + isActive + ", createdOn=" + createdOn
				+ ", modifiedOn=" + modifiedOn + "]";
	}
}
