package com.invoproj.beans.servicebeans;

import java.util.List;

public class CurrencyResponse {
	
	private String statusCode;
	private String status;
	private List<Currency> masterDatas;
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
	public List<Currency> getMasterDatas() {
		return masterDatas;
	}
	public void setMasterDatas(List<Currency> masterDatas) {
		this.masterDatas = masterDatas;
	}
	
	

}
