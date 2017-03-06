package com.invotiate.users.registration.model;

import java.util.Date;

public class UserRole {
	private Long idUserRole;
	private Role idRole;
	private User idUser;
	private boolean isActive;
	private Date createdOn;
	private Date modifiedOn;

	public UserRole() { }

	public UserRole(Long idUserRole, Role idRole, User idUser, boolean isActive, Date createdOn, Date modifiedOn) {
		this.idUserRole = idUserRole;
		this.idRole = idRole;
		this.idUser = idUser;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
	}

	public Long getIdUserRole() {
		return idUserRole;
	}

	public void setIdUserRole(Long idUserRole) {
		this.idUserRole = idUserRole;
	}

	public Role getIdRole() {
		return idRole;
	}

	public void setIdRole(Role idRole) {
		this.idRole = idRole;
	}

	public User getIdUser() {
		return idUser;
	}

	public void setIdUser(User idUser) {
		this.idUser = idUser;
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
		return "UserRole [idUserRole=" + idUserRole + ", idRole=" + idRole + ", idUser=" + idUser + ", isActive="
				+ isActive + ", createdOn=" + createdOn + ", modifiedOn=" + modifiedOn + "]";
	}

}
