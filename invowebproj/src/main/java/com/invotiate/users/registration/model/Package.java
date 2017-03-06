package com.invotiate.users.registration.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Proxy;

@Entity
@Table(name = "Package")
@Proxy(lazy = false)
public class Package implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "idPackage")
	private Long idPackage;
	@Column(name = "packageName")
	private String packageName;
	@Column(name = "pkgXref")
	private String pkgXref;
	@Column(name = "isActive")
	private boolean isActive;
	@Column(name = "createdOn")
	private Date createdOn;
	@Column(name = "modifiedOn")
	private Date modifiedOn;

	public Package() {
	}

	public Package(Long idPackage, String packageName, String pkgXref, boolean isActive, Date createdOn, Date modifiedOn) {
		this.idPackage = idPackage;
		this.packageName = packageName;
		this.pkgXref = pkgXref;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
	}

	public Long getIdPackage() {
		return idPackage;
	}

	public void setIdPackage(Long idPackage) {
		this.idPackage = idPackage;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public String getPkgXref() {
		return pkgXref;
	}

	public void setPkgXref(String pkgXref) {
		this.pkgXref = pkgXref;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

//	@Override
//	public String toString() {
//		return "Package [idPackage=" + idPackage + ", packageName=" + packageName + ", pkgXref=" + pkgXref + ", isActive=" + isActive
//				+ ", createdOn=" + createdOn + ", modifiedOn=" + modifiedOn + "]";
//	}

}
