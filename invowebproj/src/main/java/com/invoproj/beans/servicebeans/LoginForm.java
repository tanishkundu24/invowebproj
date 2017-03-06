package com.invoproj.beans.servicebeans;

import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;

import com.invoproj.beans.CommonRequest;

public class LoginForm extends CommonRequest{
	
	@NumberFormat(style = Style.NUMBER)
	private String email;
	private String password;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

}
