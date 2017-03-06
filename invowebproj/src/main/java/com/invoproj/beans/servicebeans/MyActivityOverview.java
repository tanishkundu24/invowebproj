package com.invoproj.beans.servicebeans;

import java.io.Serializable;
import java.math.BigDecimal;

public class MyActivityOverview implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5499304359949357503L;
	private BigDecimal liveInvoiceCount;
	private BigDecimal savedInvoiceCount;
	private BigDecimal expiredInvoiceCount;
	private BigDecimal completedInvoiceCount;
	private BigDecimal rejectedInvoiceCount;
	
	
	public BigDecimal getLiveInvoiceCount() {
		return liveInvoiceCount;
	}
	public void setLiveInvoiceCount(BigDecimal liveInvoiceCount) {
		this.liveInvoiceCount = liveInvoiceCount;
	}
	public BigDecimal getSavedInvoiceCount() {
		return savedInvoiceCount;
	}
	public void setSavedInvoiceCount(BigDecimal savedInvoiceCount) {
		this.savedInvoiceCount = savedInvoiceCount;
	}
	public BigDecimal getExpiredInvoiceCount() {
		return expiredInvoiceCount;
	}
	public void setExpiredInvoiceCount(BigDecimal expiredInvoiceCount) {
		this.expiredInvoiceCount = expiredInvoiceCount;
	}
	public BigDecimal getCompletedInvoiceCount() {
		return completedInvoiceCount;
	}
	public void setCompletedInvoiceCount(BigDecimal completedInvoiceCount) {
		this.completedInvoiceCount = completedInvoiceCount;
	}
	public BigDecimal getRejectedInvoiceCount() {
		return rejectedInvoiceCount;
	}
	public void setRejectedInvoiceCount(BigDecimal rejectedInvoiceCount) {
		this.rejectedInvoiceCount = rejectedInvoiceCount;
	}
	

}
