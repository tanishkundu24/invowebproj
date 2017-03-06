package com.invoproj.service;

import java.util.List;

import com.invoproj.beans.servicebeans.MyActivityData;
import com.invoproj.beans.servicebeans.MyActivityOverview;

public interface MyActivityService {
	
	public List<MyActivityData> callMyActivityDataService(String action, Long legalEntityId);
	public MyActivityOverview callMyActivityOverviewService(String action, Long legalEntityId);
	public List<MyActivityData> showArchivedItems(Long legalEntityId);
	public List<MyActivityData> callMyActivityDataServiceWithReqParam(Long legalEntityId, String negoaction, String offerstatus, String negotype);
	public List<MyActivityData> callMyActivityDataServiceWithPopUpParam(Long legalEntityId, String fromdate, String todate, String negoaction, String offerstatus, String negotype);
	public String createFile(List<MyActivityData> datalist, String format, String path);
	public boolean callInvoiceEmailService(String path, String format);
	public boolean archiveInvoice(Long invoiceId);

}
