package com.invoproj.beans.servicebeans.registration;

import java.util.List;

import javax.validation.constraints.Pattern;

public class User {
	
	private String idUser;
	@Pattern(regexp ="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!\"#$%&'()*+,-./:;<=>?@\\[\\]^_`{|}~])(?=\\S+$).{8,15}$", message="Password should be less than 15 and greater than 8 Characters.It should contain atleast one alphabet,number and special character")
	private String password;
	private String eMail;
	private String active;
	private List<SecurityQA> securityQAs;
	public String getIdUser() {
		return idUser;
	}
	public void setIdUser(String idUser) {
		this.idUser = idUser;
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
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	
	
	
}
