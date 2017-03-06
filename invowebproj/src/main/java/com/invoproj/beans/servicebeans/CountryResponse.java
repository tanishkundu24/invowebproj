package com.invoproj.beans.servicebeans;

import java.util.List;

public class CountryResponse {
	
	private String statusCode;
	private String status;
	private List<Country> masterDatas;
	private String error;
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
	public List<Country> getMasterDatas() {
		return masterDatas;
	}
	public void setMasterDatas(List<Country> masterDatas) {
		this.masterDatas = masterDatas;
	}

}
