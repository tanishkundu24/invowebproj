package com.invoproj.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.invoproj.beans.FetchType;
import com.invoproj.beans.invoice.FilteredUserData;
import com.invoproj.beans.invoice.Identifiers;
import com.invoproj.beans.invoice.InvoiceData;
import com.invoproj.beans.invoice.PayRecUsersResponse;
import com.invoproj.beans.invoice.PayableReceivable;
import com.invoproj.beans.invoice.UserInfo;
import com.invoproj.beans.invoice.UsersInfo;
import com.invoproj.constants.View;
import com.invoproj.service.InvoService;
import com.invoproj.util.FilePath;

@Controller
public class InvoiceController {
	
	private InvoService invoService;
	
	
	@Autowired(required=true)
	@Qualifier(value="InvoService")
	public void setInvoService(InvoService invoService) {
		this.invoService = invoService;
	}
	
	@RequestMapping(value = "/createInvoice", method = RequestMethod.GET)
	public String createInvoice(Model model, Principal p, HttpSession httpSession)
	{
		PayRecUsersResponse payRecUsersResponse=new PayRecUsersResponse();
		payRecUsersResponse.setMasterDatas(test());
		UsersInfo usersInfo=new UsersInfo();
		usersInfo.setUserInfoList(payRecUsersResponse.getMasterDatas());
		httpSession.setAttribute("usersInfo", usersInfo);
		return View.CREATEINVOICE;
	}
	@RequestMapping(value = "/saveInvoiceDetails", method = RequestMethod.POST)
	public String saveInvoiceDetails(@RequestBody(required=false) PayableReceivable invoiceDetails,Model model,BindingResult result,HttpSession session)
	{
	    //This should be set after the save service call and id returned by the client. Right now it is hardcoded.
		session.setAttribute("invoiceFile", new Long(1));
	    session.setAttribute("creditFile", new Long(2));
		return View.CREATEINVOICE;
	}
	@RequestMapping(value = "/submitInvoiceDetails", method = RequestMethod.POST)
	public String submitInvoiceDetails(@RequestBody(required=false) PayableReceivable invoiceDetails,Model model,BindingResult result,HttpSession session) throws JsonGenerationException, JsonMappingException, IOException
	{
		String response=this.invoService.serviceCall("submitInvoiceForm",new ObjectMapper().writeValueAsString(invoiceDetails));
		invoiceDetails.getIdFileInvo().setIdFile((Long)session.getAttribute("invoiceFile"));
		invoiceDetails.getIdFileInvo().setActive(false);
		invoiceDetails.getIdFileCrNt().setIdFile((Long)session.getAttribute("creditFile"));
		invoiceDetails.getIdFileCrNt().setActive(false);
		return View.CREATEINVOICE;
	}
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public @ResponseBody
	String uploadFileHandler(@RequestParam("name") String name,
			@RequestParam("file") MultipartFile file, HttpSession httpSession) {
        String userId=(String) httpSession.getAttribute("userId");
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(FilePath.getuploadPath(userId));
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + FilePath.fileName);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				return "You successfully uploaded file=" + name;
			} catch (Exception e) {
				return "You failed to upload " + name + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload " + name
					+ " because the file was empty.";
		}
	}
	@RequestMapping(value = "/fetchUserRecords", method = RequestMethod.POST)
	public @ResponseBody UsersInfo fetchUserRecords(@Valid FetchType fetchType,Model model,BindingResult result,HttpSession session, Principal p) throws JsonGenerationException, JsonMappingException, IOException { 
		/*String response=this.invoService.serviceCall("fetchUsers",fetchType.getUserId());
		PayRecUsersResponse payRecUsersResponse=new ObjectMapper().readValue(response, PayRecUsersResponse.class);*/
		PayRecUsersResponse payRecUsersResponse=new PayRecUsersResponse();
		payRecUsersResponse.setMasterDatas(test());
		UsersInfo usersInfo=new UsersInfo();
		usersInfo.setUserInfoList(payRecUsersResponse.getMasterDatas());
		session.setAttribute("usersInfo", usersInfo);
		return usersInfo;//"reset-password";
	}
	
	@RequestMapping(value = "/filterUserRecords", method = RequestMethod.POST)
	public @ResponseBody InvoiceData filterUserRecords(@RequestBody(required=false) UserInfo receivedUserInfo,Model model,HttpSession session, Principal p) throws JsonGenerationException, JsonMappingException, IOException { 
		@SuppressWarnings("unchecked")
		UsersInfo usersInfoList=(UsersInfo)session.getAttribute("usersInfo");
		List<UserInfo> updatedInfoList=usersInfoList.getUserInfoList().stream().filter(userInfo -> solvePredicates(userInfo,receivedUserInfo)).collect(Collectors.toList());
		FilteredUserData fd=new FilteredUserData();
		InvoiceData invData=new InvoiceData();
		Integer count=1;
		List<Identifiers> industries = new ArrayList<Identifiers>();
		List<Identifiers> firstNames= new ArrayList<Identifiers>();
		List<Identifiers> middleNames= new ArrayList<Identifiers>();
		List<Identifiers> lastNames= new ArrayList<Identifiers>();
		List<Identifiers> titles= new ArrayList<Identifiers>();
		List<Identifiers> phones= new ArrayList<Identifiers>();
		List<Identifiers> emails= new ArrayList<Identifiers>();
		List<Identifiers> lEntities= new ArrayList<Identifiers>();
		for (UserInfo userInfo : updatedInfoList) {
			
			firstNames.add(new Identifiers(userInfo.getFirstName(),count.toString()));
			lastNames.add(new Identifiers(userInfo.getLastName(),count.toString()));
			middleNames.add(new Identifiers(userInfo.getMiddleName(),count.toString()));
			industries.add(new Identifiers("Industry1",count.toString()));
			lEntities.add(new Identifiers(userInfo.getLegalEntityName(),count.toString()));
			titles.add(new Identifiers(userInfo.getTitle(),count.toString()));
			phones.add(new Identifiers(userInfo.getPhoneNo(),count.toString()));
			emails.add(new Identifiers(userInfo.getDepartment(),count.toString()));
			count++;
		}
		invData.setEmails(emails);
		invData.setFirstNames(firstNames);
		invData.setIndustries(industries);
		invData.setLastNames(lastNames);
		invData.setlEntities(lEntities);
		invData.setMiddleNames(middleNames);
		invData.setPhones(phones);
		invData.setTitles(titles);
		fd.setInvoiceData(invData);
		return invData;
	}
	private boolean solvePredicates(UserInfo userInfo,UserInfo receievedUserInfo)
	{
		return compareValues(userInfo.getCountry(),receievedUserInfo.getCountry())
				&& compareValues(userInfo.getDepartment(),receievedUserInfo.getDepartment())
				&& compareValues(userInfo.getEmailAddress(),receievedUserInfo.getEmailAddress())
				&& compareValues(userInfo.getFirstName(),receievedUserInfo.getFirstName())
				&& compareValues(userInfo.getLastName(),receievedUserInfo.getLastName())
				&& compareValues(userInfo.getLegalEntityName(),receievedUserInfo.getLegalEntityName())
				&& compareValues(userInfo.getMiddleName(),receievedUserInfo.getMiddleName())
				&& compareValues(userInfo.getTitle(),receievedUserInfo.getTitle())
				&& compareValues(userInfo.getPhoneNo(),receievedUserInfo.getPhoneNo());
	}
	private boolean compareValues(String value1, String value2)
	{
		boolean flag=value1!=null?(value1==""?true:(value2!=null && value2!=""?value1.equals(value2):false)):(value2==null)?true:false;
		return flag;
	}
	private List<UserInfo> test()
	{
		List<UserInfo> userInfoList =new ArrayList<UserInfo>();
		UserInfo userInfo1 =new UserInfo();
		userInfo1.setCountry("India");
		userInfo1.setTitle("SoftEngg");
		UserInfo userInfo2 =new UserInfo();
		userInfo2.setCountry("US");
		userInfo2.setTitle("HardEngg");
		UserInfo userInfo3 =new UserInfo();
		userInfo3.setCountry("Pakistan");
		userInfo3.setTitle("SoftEngg");
		UserInfo userInfo4 =new UserInfo();
		userInfo4.setCountry("India");
		userInfo4.setTitle("AutoEngg");
		userInfoList.add(userInfo1);
		userInfoList.add(userInfo2);
		userInfoList.add(userInfo3);
		userInfoList.add(userInfo4);
		return userInfoList;
		
	}

}
