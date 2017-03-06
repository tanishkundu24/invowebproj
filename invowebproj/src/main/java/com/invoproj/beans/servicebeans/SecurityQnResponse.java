package com.invoproj.beans.servicebeans;

import java.util.List;

public class SecurityQnResponse {
	
	private String statusCode;
	private String status;
	private String error;
	private List<SecurityQuestion> securityQuestion;
	public String getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}
	public List<SecurityQuestion> getSecurityQuestion() {
		return securityQuestion;
	}
	public void setSecurityQuestion(List<SecurityQuestion> securityQuestion) {
		this.securityQuestion = securityQuestion;
	}
	
}
