package com.invoproj.beans.servicebeans;

import java.io.Serializable;

public class ActivityListParams implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Long legalEntityId;
	private String negoaction;
	private String offerstatus;
	private String negotype;
	private String format;
	private String fromdate;
	private String todate;
	private String action;
	private Long invoiceNo;
	
	//UI PDF related properties
	private String status;
	private String frmto;
	private String ofrdt;
	private String duedt;
	private String curr;
	private String amt;
	private String netamt;
	private String disprem;
	
	
	public ActivityListParams(){}
	
	public Long getLegalEntityId() {
		return legalEntityId;
	}
	public void setLegalEntityId(Long legalEntityId) {
		this.legalEntityId = legalEntityId;
	}
	public String getNegoaction() {
		return negoaction;
	}
	public void setNegoaction(String negoaction) {
		this.negoaction = negoaction;
	}
	public String getOfferstatus() {
		return offerstatus;
	}
	public void setOfferstatus(String offerstatus) {
		this.offerstatus = offerstatus;
	}
	public String getNegotype() {
		return negotype;
	}
	public void setNegotype(String negotype) {
		this.negotype = negotype;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	public String getFromdate() {
		return fromdate;
	}

	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}

	public String getTodate() {
		return todate;
	}

	public void setTodate(String todate) {
		this.todate = todate;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public Long getInvoiceNo() {
		return invoiceNo;
	}

	public void setInvoiceNo(Long invoiceNo) {
		this.invoiceNo = invoiceNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getFrmto() {
		return frmto;
	}

	public void setFrmto(String frmto) {
		this.frmto = frmto;
	}

	public String getOfrdt() {
		return ofrdt;
	}

	public void setOfrdt(String ofrdt) {
		this.ofrdt = ofrdt;
	}

	public String getDuedt() {
		return duedt;
	}

	public void setDuedt(String duedt) {
		this.duedt = duedt;
	}

	public String getCurr() {
		return curr;
	}

	public void setCurr(String curr) {
		this.curr = curr;
	}

	public String getAmt() {
		return amt;
	}

	public void setAmt(String amt) {
		this.amt = amt;
	}

	public String getNetamt() {
		return netamt;
	}

	public void setNetamt(String netamt) {
		this.netamt = netamt;
	}

	public String getDisprem() {
		return disprem;
	}

	public void setDisprem(String disprem) {
		this.disprem = disprem;
	}
	

}
