
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
@Table(name = "LegalEntity")
//@Proxy(lazy = false)
public class LegalEntity implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "idLegalEntity")
	private Long idLegalEntity;
	@Column(name = "legalEntityName")
	private String legalEntityName;
	// @OneToOne(cascade = CascadeType.ALL)
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	@JoinColumn(name = "idCountry", nullable = false)
	private Country country;
	// @OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	// @JoinColumn(name = "idUserProfile", nullable = false)
	// @JoinColumn(name = "idUserProfile")
	// private UserProfile userProfile;
	// @OneToOne(cascade = CascadeType.ALL)
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	@JoinColumn(name = "defaultCurrency")
	private Currency defaultCurrency;
	@Column(name = "industry")
	private String industry;
	@Column(name = "hsaRight")
	private boolean hsaRight;
	@Column(name = "isActive")
	private boolean isActive;
	@Column(name = "createdOn")
	private Date createdOn;
	@Column(name = "modifiedOn")
	private Date modifiedOn;

	public LegalEntity() {
	}

	public LegalEntity(Long idLegalEntity, String legalEntityName, Country country, UserProfile userProfile,
			Currency defaultCurrency, String industry, boolean hsaRight, boolean isActive, Date createdOn,
			Date modifiedOn) {
		this.idLegalEntity = idLegalEntity;
		this.legalEntityName = legalEntityName;
		this.country = country;
//		this.userProfile = userProfile;
		this.defaultCurrency = defaultCurrency;
		this.industry = industry;
		this.hsaRight = hsaRight;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
	}

	public Long getIdLegalEntity() {
		return idLegalEntity;
	}

	public void setIdLegalEntity(Long idLegalEntity) {
		this.idLegalEntity = idLegalEntity;
	}

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

//	public UserProfile getUserProfile() {
//		return userProfile;
//	}
//
//	public void setUserProfile(UserProfile userProfile) {
//		this.userProfile = userProfile;
//	}

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

	public boolean isHsaRight() {
		return hsaRight;
	}

	public void setHsaRight(boolean hsaRight) {
		this.hsaRight = hsaRight;
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
		result = prime * result + ((country == null) ? 0 : country.hashCode());
		result = prime * result + ((createdOn == null) ? 0 : createdOn.hashCode());
		result = prime * result + ((defaultCurrency == null) ? 0 : defaultCurrency.hashCode());
		result = prime * result + (hsaRight ? 1231 : 1237);
		result = prime * result + ((idLegalEntity == null) ? 0 : idLegalEntity.hashCode());
		result = prime * result + ((industry == null) ? 0 : industry.hashCode());
		result = prime * result + (isActive ? 1231 : 1237);
		result = prime * result + ((legalEntityName == null) ? 0 : legalEntityName.hashCode());
		result = prime * result + ((modifiedOn == null) ? 0 : modifiedOn.hashCode());
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
		LegalEntity other = (LegalEntity) obj;
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
		if (defaultCurrency == null) {
			if (other.defaultCurrency != null)
				return false;
		} else if (!defaultCurrency.equals(other.defaultCurrency))
			return false;
		if (hsaRight != other.hsaRight)
			return false;
		if (idLegalEntity == null) {
			if (other.idLegalEntity != null)
				return false;
		} else if (!idLegalEntity.equals(other.idLegalEntity))
			return false;
		if (industry == null) {
			if (other.industry != null)
				return false;
		} else if (!industry.equals(other.industry))
			return false;
		if (isActive != other.isActive)
			return false;
		if (legalEntityName == null) {
			if (other.legalEntityName != null)
				return false;
		} else if (!legalEntityName.equals(other.legalEntityName))
			return false;
		if (modifiedOn == null) {
			if (other.modifiedOn != null)
				return false;
		} else if (!modifiedOn.equals(other.modifiedOn))
			return false;
//		if (userProfile == null) {
//			if (other.userProfile != null)
//				return false;
//		} else if (!userProfile.equals(other.userProfile))
//			return false;
		return true;
	}

	// @Override
	// public String toString() {
	// return "LegalEntity [idLegalEntity=" + idLegalEntity + ",
	// legalEntityName=" + legalEntityName + ", country="
	// + country + ", userProfile=" + userProfile + ", defaultCurrency=" +
	// defaultCurrency + ", industry="
	// + industry + ", hsaRight=" + hsaRight + ", isActive=" + isActive + ",
	// createdOn=" + createdOn
	// + ", modifiedOn=" + modifiedOn + "]";
	// }

}
