package com.invoproj.constants;

public class InvokeDetails {
     
	public static String URL1="test";
	public static String URL2="";
	public static String URL3="";
	public static String URL_REG="http://localhost:8080/profileRegistration/registrProfile";
	public static String URL_IND="http://localhost:8080/profileRegistration/findAllEntity/Industry";
	public static String URL_CUR="http://localhost:8080/profileRegistration/findAllEntity/Currency";
	public static String URL_CNTRY="http://localhost:8080/profileRegistration/findAllEntity/Country";
	public static String URL_SEC_ALL_QN="http://localhost:8080/profileRegistration/findAllQuestionAnswer?eMail=";
	public static String URL_SEC_ALL_QN_ANS="http://localhost:8080/profileRegistration/findAllQuestionAnswer";
	public static String URL_OTP_CONFIRM_MAIL="http://localhost:8080/invotiate/fetch/otp/confirm";
	public static String URL_OTP_GENERATE_MAIL="http://localhost:8080/invotiate/fetch/otp/generate";
	public static String URL_OTP_VALIDATE="http://localhost:8080/invotiate/fetch/otp/validate";
	public static String LINKED_IN_AUTH="http://localhost:8080/invotiate/fetch/otp/userDetailsFromLinkedin";
	public static String FETCH_REG_DETAILS="http://localhost:8080/invotiate/fetch/otp/userDetailsFromLinkedin";
	public static String SUBMIT_INVOICE_FORM="http://localhost:8080/invoice/createPayableReceivable";
	public static String UPDATE_USER_PASSWORD="http://localhost:8080/profileRegistration/updateUserPassword";
	public static String MY_ACTIVITY_DATA="http://localhost:8080/invoice/filterAllInvoiceByParams";
	public static String MY_ACTIVITY_OVERVIEW="http://localhost:8080/invoice/viewOverviewInvoices";
	public static String MY_ACTIVITY_DATA_PARAMS="http://localhost:8080/invoice/filterAllInvoiceByParams";
	public static String MY_ACTIVITY_POPUP_PARAMS="http://localhost:8080/invoice/fetchAllInvoice";
	public static String ARCHIVE_INVOICE_URL="http://localhost:8080/invoice/archivedInvoice/";
	public static String SHOW_ARCHIVED_INVOICE_URL="http://localhost:8080/invoice/viewArchivedInvoices";
	
	
	// FOR DOWNLOADING 
	public static String ACTIVITY_PDF_DOWNLOAD = "http://localhost:8080/invowebproj/downloads/{file}/";
	public static String ACTIVITY_XLS_DOWNLOAD = "http://localhost:8080/invowebproj/downloads/{file}/";
	public static String ACTIVITY_TXT_DOWNLOAD = "http://localhost:8080/invowebproj/downloads/{file}/";
	public static String ACTIVITY_CSV_DOWNLOAD = "http://localhost:8080/invowebproj/downloads/{file}/";
	
	public static enum REQTYPE{GET,POST};

}

