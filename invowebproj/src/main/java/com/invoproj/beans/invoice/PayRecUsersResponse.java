package com.invoproj.beans.invoice;

import java.util.List;

import com.invoproj.beans.servicebeans.Country;

public class PayRecUsersResponse {

	private String statusCode;
	private String status;
	private List<UserInfo> masterDatas;
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
	public List<UserInfo> getMasterDatas() {
		return masterDatas;
	}
	public void setMasterDatas(List<UserInfo> masterDatas) {
		this.masterDatas = masterDatas;
	}

}
