package com.invoproj.beans.servicebeans;

import java.io.Serializable;


public class MyActivityData implements Serializable {	
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long idPayableReceivable;
	private String payableReceivable;
	private String fromTo;
	private String invoiceType;
	private Long idInvoice;
	private Long invoiceNo;
	private Long idBatchInvoice;
	private Long idUserProfile;
	private String invoiceStartOn;
	private String invoiceDueOn;
	private String currencyType;
	private Integer invoiceAmt;
	private Integer originalAmt;
	private Integer netAmt;
	private String discountPremium;
	private String invoiceStatus;
	private String color;
	
	public MyActivityData() {
		
	}
	
	
	
	public MyActivityData(Long idPayableReceivable, String payableReceivable, String fromTo, String invoiceType,
			Long idInvoice, Long invoiceNo, Long idBatchInvoice, Long idUserProfile, String invoiceStartOn,
			String invoiceDueOn, String currencyType, Integer invoiceAmt, Integer originalAmt, Integer netAmt,
			String discountPremium, String invoiceStatus, String color) {
		this.idPayableReceivable = idPayableReceivable;
		this.payableReceivable = payableReceivable;
		this.fromTo = fromTo;
		this.invoiceType = invoiceType;
		this.idInvoice = idInvoice;
		this.invoiceNo = invoiceNo;
		this.idBatchInvoice = idBatchInvoice;
		this.idUserProfile = idUserProfile;
		this.invoiceStartOn = invoiceStartOn;
		this.invoiceDueOn = invoiceDueOn;
		this.currencyType = currencyType;
		this.invoiceAmt = invoiceAmt;
		this.originalAmt = originalAmt;
		this.netAmt = netAmt;
		this.discountPremium = discountPremium;
		this.invoiceStatus = invoiceStatus;
		this.color = color;
	}



	public Long getIdPayableReceivable() {
		return idPayableReceivable;
	}
	public void setIdPayableReceivable(Long idPayableReceivable) {
		this.idPayableReceivable = idPayableReceivable;
	}
	public String getPayableReceivable() {
		return payableReceivable;
	}
	public void setPayableReceivable(String payableReceivable) {
		this.payableReceivable = payableReceivable;
	}
	public String getFromTo() {
		return fromTo;
	}
	public void setFromTo(String fromTo) {
		this.fromTo = fromTo;
	}
	public String getInvoiceType() {
		return invoiceType;
	}
	public void setInvoiceType(String invoiceType) {
		this.invoiceType = invoiceType;
	}
	public Long getIdInvoice() {
		return idInvoice;
	}
	public void setIdInvoice(Long idInvoice) {
		this.idInvoice = idInvoice;
	}
	public Long getInvoiceNo() {
		return invoiceNo;
	}
	public void setInvoiceNo(Long invoiceNo) {
		this.invoiceNo = invoiceNo;
	}
	public Long getIdBatchInvoice() {
		return idBatchInvoice;
	}
	public void setIdBatchInvoice(Long idBatchInvoice) {
		this.idBatchInvoice = idBatchInvoice;
	}
	public Long getIdUserProfile() {
		return idUserProfile;
	}
	public void setIdUserProfile(Long idUserProfile) {
		this.idUserProfile = idUserProfile;
	}
	public String getInvoiceStartOn() {
        
		return invoiceStartOn;
	}
	public void setInvoiceStartOn(String invoiceStartOn) {
		this.invoiceStartOn = invoiceStartOn;
	}
	public String getInvoiceDueOn() {
		return invoiceDueOn;
	}
	public void setInvoiceDueOn(String invoiceDueOn) {
		this.invoiceDueOn = invoiceDueOn;
	}
	public String getCurrencyType() {
		return currencyType;
	}
	public void setCurrencyType(String currencyType) {
		this.currencyType = currencyType;
	}
	public Integer getInvoiceAmt() {
		return invoiceAmt;
	}
	public void setInvoiceAmt(Integer invoiceAmt) {
		this.invoiceAmt = invoiceAmt;
	}
	public Integer getOriginalAmt() {
		return originalAmt;
	}
	public void setOriginalAmt(Integer originalAmt) {
		this.originalAmt = originalAmt;
	}
	public Integer getNetAmt() {
		return netAmt;
	}
	public void setNetAmt(Integer netAmt) {
		this.netAmt = netAmt;
	}
	public String getDiscountPremium() {
		return discountPremium;
	}
	public void setDiscountPremium(String discountPremium) {
		this.discountPremium = discountPremium;
	}
	public String getInvoiceStatus() {
		return invoiceStatus;
	}
	public void setInvoiceStatus(String invoiceStatus) {
		this.invoiceStatus = invoiceStatus;
	}



	public String getColor() {
		return color;
	}



	public void setColor(String color) {
		this.color = color;
	}

}
