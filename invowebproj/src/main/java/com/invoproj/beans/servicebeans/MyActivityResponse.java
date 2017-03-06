package com.invoproj.beans.servicebeans;

import java.io.Serializable;
import java.util.List;


public class MyActivityResponse implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int statucCode;
	private String error ;
	private List<MyActivityData> activity;
	private MyActivityOverview ActivityOverviews;
	
	public MyActivityResponse(){
		
	}
	
	public MyActivityResponse(int statucCode, String error, List<MyActivityData> activity, MyActivityOverview ActivityOverviews) {
		this.statucCode = statucCode;
		this.error = error;
		this.activity = activity;
		this.ActivityOverviews = ActivityOverviews;
	}
	public int getStatucCode() {
		return statucCode;
	}
	public void setStatucCode(int statucCode) {
		this.statucCode = statucCode;
	}
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}
	public List<MyActivityData> getActivity() {
		return activity;
	}
	public void setActivity(List<MyActivityData> activity) {
		this.activity = activity;
	}

	public MyActivityOverview getActivityOverviews() {
		return ActivityOverviews;
	}

	public void setActivityOverviews(MyActivityOverview activityOverviews) {
		ActivityOverviews = activityOverviews;
	}

}
