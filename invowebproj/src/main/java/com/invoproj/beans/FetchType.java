package com.invoproj.beans;
import javax.validation.constraints.NotNull;

public class FetchType {
	
	@NotNull(message="Name should not be null")
	private String userId;
	@NotNull(message="Type should not be null")
	private String type;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	

}
