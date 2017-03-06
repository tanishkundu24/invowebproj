package com.invoproj.beans;

import com.invoproj.constants.InvokeDetails;

public class RequestSetup {
	
	private String request;
	private InvokeDetails.REQTYPE method;
	
	public RequestSetup(String request,InvokeDetails.REQTYPE method)
	{
		this.request=request;
		this.method=method;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public InvokeDetails.REQTYPE getMethod() {
		return method;
	}
	public void setMethod(InvokeDetails.REQTYPE method) {
		this.method = method;
	}
	
}
