package com.invoproj.util;

import java.util.HashMap;

import com.invoproj.beans.RequestSetup;
import com.invoproj.constants.InvokeDetails;

public class URLFinder {
	
	public static HashMap<String,RequestSetup> urlMap;
	static
	{
		urlMap=new HashMap<String,RequestSetup>();
		urlMap.put("test", new RequestSetup(InvokeDetails.URL1, InvokeDetails.REQTYPE.GET));
		urlMap.put("saveUserDetails", new RequestSetup(InvokeDetails.URL2, InvokeDetails.REQTYPE.GET));
		urlMap.put("verifyMail", new RequestSetup(InvokeDetails.URL3, InvokeDetails.REQTYPE.GET));
		urlMap.put("registr", new RequestSetup(InvokeDetails.URL_REG, InvokeDetails.REQTYPE.POST));
		urlMap.put("industry", new RequestSetup(InvokeDetails.URL_IND, InvokeDetails.REQTYPE.GET));
		urlMap.put("currency", new RequestSetup(InvokeDetails.URL_CUR, InvokeDetails.REQTYPE.GET));
		urlMap.put("country", new RequestSetup(InvokeDetails.URL_CNTRY, InvokeDetails.REQTYPE.GET));
		urlMap.put("otpSendMail", new RequestSetup(InvokeDetails.URL_OTP_CONFIRM_MAIL, InvokeDetails.REQTYPE.GET));
		urlMap.put("otpGenMail", new RequestSetup(InvokeDetails.URL_OTP_GENERATE_MAIL, InvokeDetails.REQTYPE.GET));
		urlMap.put("getSecQn", new RequestSetup(InvokeDetails.URL_SEC_ALL_QN, InvokeDetails.REQTYPE.GET));
		urlMap.put("getSecQnAns", new RequestSetup(InvokeDetails.URL_SEC_ALL_QN_ANS, InvokeDetails.REQTYPE.GET));
		urlMap.put("validateOTP", new RequestSetup(InvokeDetails.URL_OTP_VALIDATE, InvokeDetails.REQTYPE.GET));
		urlMap.put("linkedInAuth", new RequestSetup(InvokeDetails.LINKED_IN_AUTH, InvokeDetails.REQTYPE.GET));
		urlMap.put("fetchRegDetails", new RequestSetup(InvokeDetails.FETCH_REG_DETAILS, InvokeDetails.REQTYPE.GET));
		urlMap.put("submitInvoiceForm", new RequestSetup(InvokeDetails.SUBMIT_INVOICE_FORM, InvokeDetails.REQTYPE.POST));
		urlMap.put("updateUserPassword", new RequestSetup(InvokeDetails.UPDATE_USER_PASSWORD, InvokeDetails.REQTYPE.GET));
	}
	public static RequestSetup getURL(String request)
	{
		return urlMap.get(request);
	}
}
