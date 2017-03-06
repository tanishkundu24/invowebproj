package com.invoproj.beans.servicebeans;

import java.util.List;

public class SecurityAnsResponse {
	private String statusCode;
	private String status;
	private String error;
	private String vError;
	private List<SecurityAns> securityQuestions;
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
	public List<SecurityAns> getSecurityQuestions() {
		return securityQuestions;
	}
	public void setSecurityQuestions(List<SecurityAns> securityQuestions) {
		this.securityQuestions = securityQuestions;
	}
	public String getvError() {
		return vError;
	}
	public void setvError(String vError) {
		this.vError = vError;
	}
	

}
