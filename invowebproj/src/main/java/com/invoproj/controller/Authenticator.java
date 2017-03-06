package com.invoproj.controller;

import java.security.Principal;

import com.invoproj.constants.View;

public class Authenticator {
	
	public static String authenticationCheck(String page,Principal p)
	{
		return p!=null?page:View.REDIRECT+View.HOME;//"redirect:home";
	}

}
