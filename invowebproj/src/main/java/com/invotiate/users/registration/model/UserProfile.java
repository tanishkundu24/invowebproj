package com.invotiate.users.registration.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.Proxy;
import org.hibernate.validator.constraints.Range;

@Entity
@Table(name = "UserProfile")
@Proxy(lazy = false)
public class UserProfile implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "idUserProfile")
	private Long idUserProfile;
	@Column(name = "name")
	private String name;
	// @OneToOne(fetch = FetchType.LAZY)
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "idUser")
	private User user;
	@Column(name = "phoneNo")
	private String phoneNo;
	
	@Range(min=1, max=40)
	@Pattern(regexp = "^([a-zA-Z]+)$")
	@NotNull
	@Column(name = "fName")
	private String fName;
	
	@Size(min=1,max=1)
	@Pattern(regexp = "^([a-zA-Z]+)$")
	@NotNull
	@Column(name = "mName")
	private String mName;
	
	@Size(min=1,max=20)
	@Column(name = "lName")
	@Pattern(regexp = "^([a-zA-Z]+)$")
	@NotNull
	private String lName;
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	// @LazyCollection(LazyCollectionOption.FALSE)
	@Fetch(value = FetchMode.SUBSELECT)
	@JoinTable(name = "UserProfileAddress", joinColumns = @JoinColumn(name = "idUserProfile"), inverseJoinColumns = @JoinColumn(name = "idAddress"))
	private List<Address> addresses;
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	// @LazyCollection(LazyCollectionOption.FALSE)
	@Fetch(value = FetchMode.SUBSELECT)
	@JoinTable(name = "UserProfileLegalEntity", joinColumns = @JoinColumn(name = "idUserProfile"), inverseJoinColumns = @JoinColumn(name = "idLegalEntity"))
	private List<LegalEntity> legalEntities;
	@Column(name = "isBkKeeperAcLegal")
	private boolean isBkKeeperAcLegal;
	@Column(name = "isConsultant")
	private boolean isConsultant;
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	@JoinColumn(name = "subscribedPackage")
	private Package subscribedPackage;
	@Column(name = "isValidated")
	private boolean isValidated;
	@Column(name = "isActive")
	private boolean isActive;
	@Column(name = "createdOn")
	private Date createdOn;
	@Column(name = "modifiedOn")
	private Date modifiedOn;

	public UserProfile() {
	}

	public UserProfile(Long idUserProfile, String name, User user, String fName, String mName, String lName,
			List<Address> addresses, List<LegalEntity> legalEntities, boolean isBkKeeperAcLegal, boolean isConsultant,
			Package subscribedPackage, boolean isValidated, boolean isActive, Date createdOn, Date modifiedOn) {
		this.idUserProfile = idUserProfile;
		this.name = name;
		this.user = user;
		this.fName = fName;
		this.mName = mName;
		this.lName = lName;
		this.addresses = addresses;
		this.legalEntities = legalEntities;
		this.isBkKeeperAcLegal = isBkKeeperAcLegal;
		this.isConsultant = isConsultant;
		this.subscribedPackage = subscribedPackage;
		this.isValidated = isValidated;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
	}

	public Long getIdUserProfile() {
		return idUserProfile;
	}

	public void setIdUserProfile(Long idUserProfile) {
		this.idUserProfile = idUserProfile;
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

	public List<Address> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<Address> address) {
		this.addresses = address;
	}

	public List<LegalEntity> getLegalEntities() {
		return legalEntities;
	}

	public void setLegalEntities(List<LegalEntity> legalEntities) {
		this.legalEntities = legalEntities;
	}

	public boolean isBkKeeperAcLegal() {
		return isBkKeeperAcLegal;
	}

	public void setBkKeeperAcLegal(boolean isBkKeeperAcLegal) {
		this.isBkKeeperAcLegal = isBkKeeperAcLegal;
	}

	public boolean isConsultant() {
		return isConsultant;
	}

	public void setConsultant(boolean isConsultant) {
		this.isConsultant = isConsultant;
	}

	public Package getSubscribedPackage() {
		return subscribedPackage;
	}

	public void setSubscribedPackage(Package subscribedPackage) {
		this.subscribedPackage = subscribedPackage;
	}

	public boolean isValidated() {
		return isValidated;
	}

	public void setValidated(boolean isValidated) {
		this.isValidated = isValidated;
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
		result = prime * result + ((addresses == null) ? 0 : addresses.hashCode());
		result = prime * result + ((createdOn == null) ? 0 : createdOn.hashCode());
		result = prime * result + ((fName == null) ? 0 : fName.hashCode());
		result = prime * result + ((idUserProfile == null) ? 0 : idUserProfile.hashCode());
		result = prime * result + (isActive ? 1231 : 1237);
		result = prime * result + (isBkKeeperAcLegal ? 1231 : 1237);
		result = prime * result + (isConsultant ? 1231 : 1237);
		result = prime * result + (isValidated ? 1231 : 1237);
		result = prime * result + ((lName == null) ? 0 : lName.hashCode());
		result = prime * result + ((legalEntities == null) ? 0 : legalEntities.hashCode());
		result = prime * result + ((mName == null) ? 0 : mName.hashCode());
		result = prime * result + ((modifiedOn == null) ? 0 : modifiedOn.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((phoneNo == null) ? 0 : phoneNo.hashCode());
		result = prime * result + ((subscribedPackage == null) ? 0 : subscribedPackage.hashCode());
		result = prime * result + ((user == null) ? 0 : user.hashCode());
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
		UserProfile other = (UserProfile) obj;
		if (addresses == null) {
			if (other.addresses != null)
				return false;
		} else if (!addresses.equals(other.addresses))
			return false;
		if (createdOn == null) {
			if (other.createdOn != null)
				return false;
		} else if (!createdOn.equals(other.createdOn))
			return false;
		if (fName == null) {
			if (other.fName != null)
				return false;
		} else if (!fName.equals(other.fName))
			return false;
		if (idUserProfile == null) {
			if (other.idUserProfile != null)
				return false;
		} else if (!idUserProfile.equals(other.idUserProfile))
			return false;
		if (isActive != other.isActive)
			return false;
		if (isBkKeeperAcLegal != other.isBkKeeperAcLegal)
			return false;
		if (isConsultant != other.isConsultant)
			return false;
		if (isValidated != other.isValidated)
			return false;
		if (lName == null) {
			if (other.lName != null)
				return false;
		} else if (!lName.equals(other.lName))
			return false;
		if (legalEntities == null) {
			if (other.legalEntities != null)
				return false;
		} else if (!legalEntities.equals(other.legalEntities))
			return false;
		if (mName == null) {
			if (other.mName != null)
				return false;
		} else if (!mName.equals(other.mName))
			return false;
		if (modifiedOn == null) {
			if (other.modifiedOn != null)
				return false;
		} else if (!modifiedOn.equals(other.modifiedOn))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (phoneNo == null) {
			if (other.phoneNo != null)
				return false;
		} else if (!phoneNo.equals(other.phoneNo))
			return false;
		if (subscribedPackage == null) {
			if (other.subscribedPackage != null)
				return false;
		} else if (!subscribedPackage.equals(other.subscribedPackage))
			return false;
		if (user == null) {
			if (other.user != null)
				return false;
		} else if (!user.equals(other.user))
			return false;
		return true;
	}

	// @Override
	// public String toString() {
	// return "UserProfile [idUserProfile=" + idUserProfile + ", name=" + name +
	// ", user=" + user + ", fName=" + fName
	// + ", mName=" + mName + ", lName=" + lName + ", addresses=" + addresses +
	// ", legalEntity=" + legalEntities
	// + ", isBkKeeperAcLegal=" + isBkKeeperAcLegal + ", isConsultant=" +
	// isConsultant + ", subscribedPackage="
	// + subscribedPackage + ", isValidated=" + isValidated + ", isActive=" +
	// isActive + ", createdOn="
	// + createdOn + ", modifiedOn=" + modifiedOn + "]";
	// }

}
