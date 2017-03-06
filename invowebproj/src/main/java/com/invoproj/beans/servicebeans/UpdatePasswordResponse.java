package com.invoproj.beans.servicebeans;

public class UpdatePasswordResponse {
	
	private String error;
	private int statusCode;
	private boolean status;
	
	public UpdatePasswordResponse(int statusCode, String error,boolean status){
		this.status = status;
		this.statusCode = statusCode;
		this.error = error;
	}
	public UpdatePasswordResponse() {
		
	}
	
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}
	public int getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}
	public boolean getStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}

}
