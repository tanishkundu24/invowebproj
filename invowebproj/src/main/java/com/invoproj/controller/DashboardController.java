package com.invoproj.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.invoproj.constants.View;

@Controller
public class DashboardController {
	
	
	@RequestMapping(value = "/dashboard", method=RequestMethod.GET)
	public String myActivity(Model model, Principal p){
		
		return View.DASHBOARD;
	}

}
