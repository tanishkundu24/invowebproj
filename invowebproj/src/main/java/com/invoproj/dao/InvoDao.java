package com.invoproj.dao;

import java.util.List;

import com.invoproj.beans.City;

public interface InvoDao {
	public void addCity(City c);
	public void updateCity(City p);
	public List<City> listCitys();
	public City getCityById(int id);
	public void removeCity(int id);
    public String getPassword(String emailId);
}
