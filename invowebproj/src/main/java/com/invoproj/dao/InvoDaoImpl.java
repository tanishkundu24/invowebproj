package com.invoproj.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.invoproj.beans.City;
import com.invoproj.beans.User;


public class InvoDaoImpl implements InvoDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public void addCity(City city) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(city);
		System.out.println("Person saved successfully, Person Details="+city);
	}

	public void updateCity(City city) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(city);
		System.out.println("Person saved successfully, Person Details="+city);
	}

	public List<City> listCitys() {
		Session session = this.sessionFactory.getCurrentSession();
		List<City> personsList = session.createQuery("from City").list();
		System.out.println("Cities List");
		System.out.println("-----------");
		for(City city : personsList){
			System.out.println(city.getName());
		}
		return personsList;
	}

	public City getCityById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		City p = (City) session.load(City.class, new Integer(id));
		System.out.println("City loaded successfully, City details="+p);
		return p;
	}

	public void removeCity(int id) {
		
		Session session = this.sessionFactory.getCurrentSession();
		City p = (City) session.load(City.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		System.out.println("City deleted successfully, person details="+p);
		
	}

	public String getPassword(String emailId) {
		String password="";
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "FROM User U WHERE U.eMail = :email_id";
		Query query = session.createQuery(hql);
		query.setParameter("email_id",emailId);
		List<User> results = query.list();
		if(results.size()>0)
		{
			password=results.get(0).getPassword();
		}
		System.out.println("Cities List");
		System.out.println("-----------");
		return password;
	}

}
