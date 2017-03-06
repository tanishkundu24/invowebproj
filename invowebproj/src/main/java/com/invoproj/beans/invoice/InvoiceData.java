package com.invoproj.beans.invoice;

import java.util.ArrayList;
import java.util.List;

public class InvoiceData {
	
	private List<Identifiers> industries = new ArrayList<Identifiers>();
	private List<Identifiers> firstNames= new ArrayList<Identifiers>();
	private List<Identifiers> middleNames= new ArrayList<Identifiers>();
	private List<Identifiers> lastNames= new ArrayList<Identifiers>();
	private List<Identifiers> titles= new ArrayList<Identifiers>();
	private List<Identifiers> phones= new ArrayList<Identifiers>();
	private List<Identifiers> emails= new ArrayList<Identifiers>();
	private List<Identifiers> lEntities= new ArrayList<Identifiers>();
	public List<Identifiers> getIndustries() {
		return industries;
	}
	public void setIndustries(List<Identifiers> industries) {
		this.industries = industries;
	}
	public List<Identifiers> getFirstNames() {
		return firstNames;
	}
	public void setFirstNames(List<Identifiers> firstNames) {
		this.firstNames = firstNames;
	}
	public List<Identifiers> getMiddleNames() {
		return middleNames;
	}
	public void setMiddleNames(List<Identifiers> middleNames) {
		this.middleNames = middleNames;
	}
	public List<Identifiers> getLastNames() {
		return lastNames;
	}
	public void setLastNames(List<Identifiers> lastNames) {
		this.lastNames = lastNames;
	}
	public List<Identifiers> getTitles() {
		return titles;
	}
	public void setTitles(List<Identifiers> titles) {
		this.titles = titles;
	}
	public List<Identifiers> getPhones() {
		return phones;
	}
	public void setPhones(List<Identifiers> phones) {
		this.phones = phones;
	}
	public List<Identifiers> getEmails() {
		return emails;
	}
	public void setEmails(List<Identifiers> emails) {
		this.emails = emails;
	}
	public List<Identifiers> getlEntities() {
		return lEntities;
	}
	public void setlEntities(List<Identifiers> lEntities) {
		this.lEntities = lEntities;
	}
	
	

}
