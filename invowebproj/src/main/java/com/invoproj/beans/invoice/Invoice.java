package com.invoproj.beans.invoice;


import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "Invoice")
public class Invoice implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private Long idInvoice;
	private String invoiceNo;
	private Long idBatchInvoice;
	private Long idUserProfile;
	private String terms;
	private Date invoiceStartOn;
	private Date invoiceDueOn;
	private Long currencyType;
	private Integer invoiceAmt;
	private Integer originalAmt;
	private Integer netAmt;
	private String summary;
	private String fromTo;
	private String discountPremium;
	private String invoiceType;// 'APRD','DRFT','PAID'
	private String invoiceStatus;// 'LIVE','OVRD','UNSF'
	private String invoiceOption;// 'OPTN1','OPTN2','OPTN3'
	private boolean isActive;
	private Date createdOn;
	private Date modifiedOn;
    public String getInvoiceOption() {
        return invoiceOption;
    }

    public void setInvoiceOption(String invoiceOption) {
        this.invoiceOption = invoiceOption;
    }

    public String getInvoiceStatus() {
        return invoiceStatus;
    }

    public void setInvoiceStatus(String invoiceStatus) {
        this.invoiceStatus = invoiceStatus;
    }

    public String getInvoiceType() {
        return invoiceType;
    }

    public void setInvoiceType(String invoiceType) {
        this.invoiceType = invoiceType;
    }

	public Invoice() { }
	public Invoice(Long idInvoice, String invoiceNo, Long idBatchInvoice, Long idUserProfile, String terms,
			Date invoiceStartOn, Date invoiceDueOn, Long currencyType, Integer invoiceAmt, Integer originalAmt,
			Integer netAmt, String summary, String fromTo, String discountPremium, String type, String status,
			String option, boolean isActive, Date createdOn, Date modifiedOn) {
		this.idInvoice = idInvoice;
		this.invoiceNo = invoiceNo;
		this.idBatchInvoice = idBatchInvoice;
		this.idUserProfile = idUserProfile;
		this.terms = terms;
		this.invoiceStartOn = invoiceStartOn;
		this.invoiceDueOn = invoiceDueOn;
		this.currencyType = currencyType;
		this.invoiceAmt = invoiceAmt;
		this.originalAmt = originalAmt;
		this.netAmt = netAmt;
		this.summary = summary;
		this.fromTo = fromTo;
		this.discountPremium = discountPremium;
		//this.type = type;
		//this.status = status;
		//this.option = option;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
	}
	public Long getIdInvoice() {
		return idInvoice;
	}
	public void setIdInvoice(Long idInvoice) {
		this.idInvoice = idInvoice;
	}
	public String getInvoiceNo() {
		return invoiceNo;
	}
	public void setInvoiceNo(String invoiceNo) {
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
	public String getTerms() {
		return terms;
	}
	public void setTerms(String terms) {
		this.terms = terms;
	}
	public Date getInvoiceStartOn() {
		return invoiceStartOn;
	}
	public void setInvoiceStartOn(Date invoiceStartOn) {
		this.invoiceStartOn = invoiceStartOn;
	}
	public Date getInvoiceDueOn() {
		return invoiceDueOn;
	}
	public void setInvoiceDueOn(Date invoiceDueOn) {
		this.invoiceDueOn = invoiceDueOn;
	}
	public Long getCurrencyType() {
		return currencyType;
	}
	public void setCurrencyType(Long currencyType) {
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
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getFromTo() {
		return fromTo;
	}
	public void setFromTo(String fromTo) {
		this.fromTo = fromTo;
	}
	public String getDiscountPremium() {
		return discountPremium;
	}
	public void setDiscountPremium(String discountPremium) {
		this.discountPremium = discountPremium;
	}
	/*public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}*/
	/*public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}*/
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	public Date getCreatedOn() {
		return createdOn;
	}
	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}
	public Date getModifiedOn() {
		return modifiedOn;
	}
	public void setModifiedOn(Date modifiedOn) {
		this.modifiedOn = modifiedOn;
	}
	@Override
	public String toString() {
		return "Invoice [idInvoice=" + idInvoice + ", invoiceNo=" + invoiceNo + ", idBatchInvoice=" + idBatchInvoice
				+ ", idUserProfile=" + idUserProfile + ", terms=" + terms + ", invoiceStartOn=" + invoiceStartOn
				+ ", invoiceDueOn=" + invoiceDueOn + ", currencyType=" + currencyType + ", invoiceAmt=" + invoiceAmt
				+ ", originalAmt=" + originalAmt + ", netAmt=" + netAmt + ", summary=" + summary + ", fromTo=" + fromTo
				+ ", discountPremium=" + discountPremium + ", invoiceType=" + invoiceType + ", invoiceStatus=" + invoiceStatus + ", invoiceOption="
				+ invoiceOption + ", isActive=" + isActive + ", createdOn=" + createdOn + ", modifiedOn=" + modifiedOn + "]";
	}
}
