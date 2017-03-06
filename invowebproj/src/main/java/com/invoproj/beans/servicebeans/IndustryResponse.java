package com.invoproj.beans.servicebeans;

import java.util.List;

public class IndustryResponse {
	
	private String statusCode;
	private String status;
	private List<Industry> masterDatas;
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
	public List<Industry> getMasterDatas() {
		return masterDatas;
	}
	public void setMasterDatas(List<Industry> masterDatas) {
		this.masterDatas = masterDatas;
	}
	
	

}
