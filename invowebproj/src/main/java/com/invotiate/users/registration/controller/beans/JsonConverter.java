package com.invotiate.users.registration.controller.beans;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.ObjectWriter;

import com.invotiate.users.registration.model.Address;
import com.invotiate.users.registration.model.Country;
import com.invotiate.users.registration.model.Currency;
import com.invotiate.users.registration.model.LegalEntity;
import com.invotiate.users.registration.model.Package;
import com.invotiate.users.registration.model.SecurityQA;
import com.invotiate.users.registration.model.SecurityQuestion;
import com.invotiate.users.registration.model.User;
import com.invotiate.users.registration.model.UserProfile;

public class JsonConverter {
	public static void main(String[] args) throws JsonGenerationException, JsonMappingException, IOException {
		requestJsonForStatusMasterService();

	}

	private static void requestJsonForStatusMasterService()
			throws IOException, JsonGenerationException, JsonMappingException {
		ObjectWriter ow = new ObjectMapper().writer().withDefaultPrettyPrinter();

		String json = ow.writeValueAsString(createUserPrifile());
		System.out.println(json);
	}

	public static UserProfile createUserPrifile() {
		UserProfile userProfile = new UserProfile();
		userProfile.setName("D Name");
		User user = new User();
		user.seteMail("d@gmail.com");
		user.setPassword("passwrd");
		user.setActive(true);
		user.setCreatedOn(new Date());
		// user.setModifiedOn(new Date());
		List<SecurityQA> securityQAs = new ArrayList<SecurityQA>();
		SecurityQuestion sQuestion = new SecurityQuestion();
		sQuestion.setIdSecurityQuestion(new Long(5));
		SecurityQA securityQA = new SecurityQA();
		securityQA.setSecurityQuestion(sQuestion);
		securityQA.setAnswer("aaaa");
		securityQA.setqOrder(1);
		securityQA.setActive(true);
		securityQA.setCreatedOn(new Date());
		// securityQA.setModifiedOn(new Date());
//		securityQA.setUser(user);
		securityQAs.add(securityQA);

		SecurityQuestion sQuestion2 = new SecurityQuestion();
		sQuestion2.setIdSecurityQuestion(new Long(2));
		SecurityQA securityQA2 = new SecurityQA();
		securityQA2.setSecurityQuestion(sQuestion2);
		securityQA2.setAnswer("bbbbb");
		securityQA2.setqOrder(2);
		securityQA2.setActive(true);
//		securityQA2.setUser(user);
		securityQAs.add(securityQA2);

		SecurityQuestion sQuestion3 = new SecurityQuestion();
		sQuestion3.setIdSecurityQuestion(new Long(3));
		SecurityQA securityQA3 = new SecurityQA();
		securityQA3.setSecurityQuestion(sQuestion3);
		securityQA3.setAnswer("cccccc");
		securityQA3.setqOrder(3);
		securityQA3.setActive(true);
//		securityQA3.setUser(user);
		securityQAs.add(securityQA3);
//		user.setSecurityQAs(securityQAs);

		userProfile.setUser(user);
		userProfile.setfName("D fName");
		userProfile.setmName("D mName");
		userProfile.setlName("D lName");

		Address address = new Address();
		address.setLine1("Sector12");
		address.setLine2("MG road");
		address.setCity("Noida");
		address.setPinCode(123456);
		Country country = new Country();
		country.setIdCountry(new Long(1));

		address.setCountry(country);
		address.setType("PRNT");
		address.setActive(true);

		Address address2 = new Address();
		address2.setLine1("Vaishali");
		address2.setLine2("MG road");
		address2.setCity("Ghaziabad");
		address2.setPinCode(201010);
		country.setIdCountry(new Long(1));

		address2.setCountry(country);
		address2.setType("CRNT");
		address2.setActive(true);
		address.setCreatedOn(new Date());
		// address.setModifiedOn(new Date());

		List<Address> addList = new ArrayList<Address>();
//		address.setUserProfile(userProfile);
//		address2.setUserProfile(userProfile);
		addList.add(address);
		addList.add(address2);
		userProfile.setAddresses(addList);

		LegalEntity legalEntity = new LegalEntity();
		legalEntity.setIndustry("IT");
		legalEntity.setLegalEntityName("Adobe");
		Currency currency = new Currency();
		currency.setIdCurrency(new Long(1));
		legalEntity.setDefaultCurrency(currency);
		legalEntity.setCountry(country);
		legalEntity.setHsaRight(true);
		legalEntity.setActive(true);
		legalEntity.setCreatedOn(new Date());
		LegalEntity legalEntity2 = new LegalEntity();
		legalEntity2.setIndustry("IT");
		legalEntity2.setLegalEntityName("Oracle");
		currency.setIdCurrency(new Long(1));
		legalEntity2.setDefaultCurrency(currency);
		legalEntity2.setCountry(country);
		legalEntity2.setHsaRight(true);
		legalEntity2.setActive(true);

		List<LegalEntity> legalEntities = new ArrayList<LegalEntity>();
//		legalEntity.setUserProfile(userProfile);
//		legalEntity2.setUserProfile(userProfile);
		legalEntities.add(legalEntity);
		legalEntities.add(legalEntity2);
		userProfile.setLegalEntities(legalEntities);

		userProfile.setBkKeeperAcLegal(true);
		userProfile.setConsultant(true);
		userProfile.setValidated(false);
		Package pkg = new Package();
		pkg.setIdPackage(new Long(5));
		pkg.setPackageName("PKG1");
		pkg.setPkgXref("PKG1");
		userProfile.setSubscribedPackage(pkg);
		userProfile.setActive(true);
		userProfile.setCreatedOn(new Date());
		// userProfile.setModifiedOn(new Date());

		return userProfile;
	}
}
