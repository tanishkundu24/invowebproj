package com.invoproj.service;

import java.util.List;
import java.util.Map;

import com.invoproj.beans.City;

public interface InvoService {
	
	/*public void addCity(City city);
	public void updateCity(City city);
	public List<City> listCities();
	public City getCityById(int id);
	public void removeCity(int id);*/
	public String serviceCall(String request,String jsonString);
	public String cacheserviceCall(String request,String jsonString);
	public String serviceCallWithReqParam(String request, String requestParam);
	public String serviceCallWithReqParamArray(String request, List<String> requestParms);
	public String serviceCallWithDao(String request);
	public boolean callUpdatePassService(String request,String pass, String email);
}
