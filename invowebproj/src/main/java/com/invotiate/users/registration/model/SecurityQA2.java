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

@Entity
@Table(name = "SecurityQA")
//@Table(name = "SecurityQA", uniqueConstraints = {@UniqueConstraint(columnNames = "idSecurityQA")})
//@JsonIgnoreProperties(ignoreUnknown = false)
//@Proxy(lazy = false)
public class SecurityQA2 implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "idSecurityQA")
	private Long idSecurityQA;
	//@ManyToOne(optional = false)
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	//@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	//@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.PERSIST)
	//@JoinColumn(name = "idUser", nullable = false)// nullable throwing error while find entity
	@JoinColumn(name = "idUser")// idUser null in SecurityQA while save entity
	private User user;
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	@JoinColumn(name = "question")
	private SecurityQuestion securityQuestion;
	@Column(name = "answer")
	private String answer;
	@Column(name = "qOrder")
	private int qOrder;
	@Column(name = "isActive")
	private boolean isActive;
	@Column(name = "createdOn")
	private Date createdOn;
	@Column(name = "modifiedOn")
	private Date modifiedOn;

	public SecurityQA2() {
	}

	public Long getIdSecurityQA() {
		return idSecurityQA;
	}

	public void setIdSecurityQA(Long idSecurityQA) {
		this.idSecurityQA = idSecurityQA;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public SecurityQuestion getSecurityQuestion() {
		return securityQuestion;
	}

	public void setSecurityQuestion(SecurityQuestion securityQuestion) {
		this.securityQuestion = securityQuestion;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getqOrder() {
		return qOrder;
	}

	public void setqOrder(int qQrder) {
		this.qOrder = qQrder;
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
		result = prime * result + ((answer == null) ? 0 : answer.hashCode());
		result = prime * result + ((createdOn == null) ? 0 : createdOn.hashCode());
		result = prime * result + ((idSecurityQA == null) ? 0 : idSecurityQA.hashCode());
		result = prime * result + (isActive ? 1231 : 1237);
		result = prime * result + ((modifiedOn == null) ? 0 : modifiedOn.hashCode());
		result = prime * result + qOrder;
		result = prime * result + ((securityQuestion == null) ? 0 : securityQuestion.hashCode());
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
		SecurityQA2 other = (SecurityQA2) obj;
		if (answer == null) {
			if (other.answer != null)
				return false;
		} else if (!answer.equals(other.answer))
			return false;
		if (createdOn == null) {
			if (other.createdOn != null)
				return false;
		} else if (!createdOn.equals(other.createdOn))
			return false;
		if (idSecurityQA == null) {
			if (other.idSecurityQA != null)
				return false;
		} else if (!idSecurityQA.equals(other.idSecurityQA))
			return false;
		if (isActive != other.isActive)
			return false;
		if (modifiedOn == null) {
			if (other.modifiedOn != null)
				return false;
		} else if (!modifiedOn.equals(other.modifiedOn))
			return false;
		if (qOrder != other.qOrder)
			return false;
		if (securityQuestion == null) {
			if (other.securityQuestion != null)
				return false;
		} else if (!securityQuestion.equals(other.securityQuestion))
			return false;
		if (user == null) {
			if (other.user != null)
				return false;
		} else if (!user.equals(other.user))
			return false;
		return true;
	}

//	@Override
//	public String toString() {
//		return "SecurityQA [idSecurityQA=" + idSecurityQA + ", user=" + user + ", securityQuestion=" + securityQuestion
//				+ ", answer=" + answer + ", qOrder=" + qOrder + ", isActive=" + isActive + ", createdOn=" + createdOn
//				+ ", modifiedOn=" + modifiedOn + "]";
//	}

}
