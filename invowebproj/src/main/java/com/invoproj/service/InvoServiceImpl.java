package com.invoproj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.invoproj.beans.RequestSetup;
import com.invoproj.beans.servicebeans.MyActivityResponse;
import com.invoproj.beans.servicebeans.UpdatePasswordResponse;
import com.invoproj.constants.InvokeDetails;
import com.invoproj.dao.InvoDao;
import com.invoproj.util.RestMethodHelper;
import com.invoproj.util.URLFinder;

@Service
public class InvoServiceImpl implements InvoService {
	
	@Autowired(required=true)
	@Qualifier(value="InvoDao")
	private InvoDao invoDao;
	
	

	/*
	@Transactional
	public void updateCity(City city) {
		this.testDao.updateCity(city);
	}

	@Transactional
	public List<City> listCities() {
		return this.testDao.listCitys();
	}

	@Transactional
	public City getCityById(int id) {
		return this.testDao.getCityById(id);
	}

	@Transactional
	public void removeCity(int id) {
		this.testDao.removeCity(id);
	}*/

	public InvoDao getInvoDao() {
		return invoDao;
	}



	public void setInvoDao(InvoDao invoDao) {
		this.invoDao = invoDao;
	}


	/*public String serviceCall(String request,Map<String,String> allRequestParams) {
		
		RequestSetup requestSetup=URLFinder.getURL(request);
		RestMethodHelper restMethodHelper=new RestMethodHelper();
		String response=null;
		if(requestSetup.getMethod().equals(InvokeDetails.REQTYPE.GET))
		{
			response=restMethodHelper.doGET(requestSetup.getRequest());
		}
		else
		{
			ObjectMapper mapper = new ObjectMapper();
			try {
				String jsonString=new Gson().toJson(allRequestParams);
				City obj = mapper.readValue(jsonString, City.class);
				response=restMethodHelper.doPOST(requestSetup.getRequest(), jsonString);
			} catch (JsonParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JsonMappingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return response;
	}*/
	public String serviceCall(String request,String jsonString) {
		
		System.out.println("Service call getting executed");
		RequestSetup requestSetup=URLFinder.getURL(request);
		RestMethodHelper restMethodHelper=new RestMethodHelper();
		String response=null;
		if(requestSetup.getMethod().equals(InvokeDetails.REQTYPE.GET))
			if(jsonString!=null)
			response=restMethodHelper.doGET(requestSetup.getRequest()+"/"+jsonString);
			else
			response=restMethodHelper.doGET(requestSetup.getRequest());	
		else
			response=restMethodHelper.doPOST(requestSetup.getRequest(), jsonString);
		return response;
	}


	@Cacheable("task")
	public String cacheserviceCall(String request, String jsonString) {
		
		return serviceCall(request,jsonString);
	}



	public String serviceCallWithReqParam(String request, String requestParam) {
		
		System.out.println("Service call with request parameter getting executed");
		RequestSetup requestSetup=URLFinder.getURL(request);
		RestMethodHelper restMethodHelper=new RestMethodHelper();
		String response=null;
		if(requestSetup.getMethod().equals(InvokeDetails.REQTYPE.GET))
			if(requestParam!=null)
			response=restMethodHelper.doGET(requestSetup.getRequest()+requestParam);
			else
			response=restMethodHelper.doGET(requestSetup.getRequest());	
		return response;
	}



	public String serviceCallWithReqParamArray(String request, List<String> requestParms) {
		System.out.println("Service call with request parameter list getting executed");
		RequestSetup requestSetup=URLFinder.getURL(request);
		RestMethodHelper restMethodHelper=new RestMethodHelper();
		String response=null;
		StringBuffer sb=new StringBuffer();
		for (String string : requestParms) {
			if(string!=null)
			{
			sb.append("/");
			sb.append(string);
			}
		}
		if(requestSetup.getMethod().equals(InvokeDetails.REQTYPE.GET))
			if(requestParms!=null)
			response=restMethodHelper.doGET(requestSetup.getRequest()+sb.toString());
			else
			response=restMethodHelper.doGET(requestSetup.getRequest());	
		return response;
	}


	@Transactional
	public String serviceCallWithDao(String parameter) {
		 return invoDao.getPassword(parameter);
	}
	
	public boolean callUpdatePassService(String request,String pass, String email){
		
		RestTemplate rest = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		HttpEntity<String> entity = null;

		UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(InvokeDetails.UPDATE_USER_PASSWORD)
		        .queryParam("password", pass)
		        .queryParam("email", email);

		
		headers.set("content-type", "application/json");
		entity = new HttpEntity<String>(headers);
	
	    ResponseEntity<UpdatePasswordResponse> response = null;
		
		try{
			response = rest.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, UpdatePasswordResponse.class);
			
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
		return response.getBody().getStatus();
	}
	
}
