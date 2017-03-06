package com.invotiate.users.registration.model;

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

import org.hibernate.annotations.Proxy;

@Entity
@Table(name = "Address")
//@Proxy(lazy = false)
public class Address implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "idAddress")
	private Long idAddress;
	@Column(name = "line1")
	private String line1;
	@Column(name = "line2")
	private String line2;
	@Column(name = "city")
	private String city;
	@Column(name = "pinCode")
	private int pinCode;
	//@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	//@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	//@JoinColumn(name = "idUserProfile", nullable = false)
	//@JoinColumn(name = "idUserProfile")
	//private UserProfile userProfile;
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	@JoinColumn(name = "idCountry")
	private Country country;
	@Column(name = "type")
	private String type;// 'PRNT', 'CRNT', 'BILG'
	@Column(name = "isActive")
	private boolean isActive;
	@Column(name = "createdOn")
	private Date createdOn;
	@Column(name = "modifiedOn")
	private Date modifiedOn;

	public Address() {
	}

	public Address(Long idAddress, String line1, String line2, String city, int pinCode, UserProfile userProfile,
			Country country, String type, boolean isActive, Date createdOn, Date modifiedOn) {
		this.idAddress = idAddress;
		this.line1 = line1;
		this.line2 = line2;
		this.city = city;
		this.pinCode = pinCode;
//		this.userProfile = userProfile;
		this.country = country;
		this.type = type;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
	}

	public Long getIdAddress() {
		return idAddress;
	}

	public void setIdAddress(Long idAddress) {
		this.idAddress = idAddress;
	}

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

	public int getPinCode() {
		return pinCode;
	}

	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}

//	public UserProfile getUserProfile() {
//		return userProfile;
//	}
//
//	public void setUserProfile(UserProfile userProfile) {
//		this.userProfile = userProfile;
//	}

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((city == null) ? 0 : city.hashCode());
		result = prime * result + ((country == null) ? 0 : country.hashCode());
		result = prime * result + ((createdOn == null) ? 0 : createdOn.hashCode());
		result = prime * result + ((idAddress == null) ? 0 : idAddress.hashCode());
		result = prime * result + (isActive ? 1231 : 1237);
		result = prime * result + ((line1 == null) ? 0 : line1.hashCode());
		result = prime * result + ((line2 == null) ? 0 : line2.hashCode());
		result = prime * result + ((modifiedOn == null) ? 0 : modifiedOn.hashCode());
		result = prime * result + pinCode;
		result = prime * result + ((type == null) ? 0 : type.hashCode());
//		result = prime * result + ((userProfile == null) ? 0 : userProfile.hashCode());
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
		Address other = (Address) obj;
		if (city == null) {
			if (other.city != null)
				return false;
		} else if (!city.equals(other.city))
			return false;
		if (country == null) {
			if (other.country != null)
				return false;
		} else if (!country.equals(other.country))
			return false;
		if (createdOn == null) {
			if (other.createdOn != null)
				return false;
		} else if (!createdOn.equals(other.createdOn))
			return false;
		if (idAddress == null) {
			if (other.idAddress != null)
				return false;
		} else if (!idAddress.equals(other.idAddress))
			return false;
		if (isActive != other.isActive)
			return false;
		if (line1 == null) {
			if (other.line1 != null)
				return false;
		} else if (!line1.equals(other.line1))
			return false;
		if (line2 == null) {
			if (other.line2 != null)
				return false;
		} else if (!line2.equals(other.line2))
			return false;
		if (modifiedOn == null) {
			if (other.modifiedOn != null)
				return false;
		} else if (!modifiedOn.equals(other.modifiedOn))
			return false;
		if (pinCode != other.pinCode)
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
//		if (userProfile == null) {
//			if (other.userProfile != null)
//				return false;
//		} else if (!userProfile.equals(other.userProfile))
//			return false;
		return true;
	}

//	@Override
//	public String toString() {
//		return "Address [idAddress=" + idAddress + ", line1=" + line1 + ", line2=" + line2 + ", city=" + city
//				+ ", pinCode=" + pinCode + ", userProfile=" + userProfile + ", country=" + country + ", type=" + type
//				+ ", isActive=" + isActive + ", createdOn=" + createdOn + ", modifiedOn=" + modifiedOn + "]";
//	}

}
