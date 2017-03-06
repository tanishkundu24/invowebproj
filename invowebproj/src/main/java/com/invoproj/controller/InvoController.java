
package com.invoproj.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.google.gson.Gson;
import com.invoproj.beans.FetchType;
import com.invoproj.beans.GeneralResponse;
import com.invoproj.beans.SecurityQn;
import com.invoproj.beans.servicebeans.CountryResponse;
import com.invoproj.beans.servicebeans.CurrencyResponse;
import com.invoproj.beans.servicebeans.IndustryResponse;
import com.invoproj.beans.servicebeans.LoginForm;
import com.invoproj.beans.servicebeans.SecurityAnsResponse;
import com.invoproj.beans.servicebeans.UserDetails;
import com.invoproj.beans.servicebeans.linkedIn.LinkedInResponse;
import com.invoproj.beans.servicebeans.linkedIn.Result;
import com.invoproj.beans.servicebeans.registration.Register;
import com.invoproj.cache.OFACCache;
import com.invoproj.config.ApplicationContextProvider;
import com.invoproj.constants.View;
import com.invoproj.service.InvoService;
import com.invoproj.util.PassRecomUtil;

@Controller
public class InvoController {
	
	private InvoService invoService;
	
	@Autowired(required=true)
	@Qualifier(value="InvoService")
	public void setInvoService(InvoService invoService) {
		this.invoService = invoService;
	}

	@RequestMapping(value = "/serviceCall", method = RequestMethod.POST)
	public @ResponseBody String login(@Valid LoginForm loginForm,Model model,BindingResult result) { 
		if(result.hasErrors())
		{
			
		}
		OFACCache ofacCache = ApplicationContextProvider.getApplicationContext().getBean("OFACCache", OFACCache.class);
		ofacCache.cacheOFACList();
		return View.RESET_PWD;//"reset-password";
	}
	@RequestMapping(value = "/reset-password", method = RequestMethod.GET)
	public String resetPassword(Model model, Principal p,@RequestParam(required=false) String email,@RequestParam(required=false) String otp)
	{
		List<String> requestParameterList=new ArrayList<String>();
		if(email!=null)
		requestParameterList.add(email);
		if(otp!=null)
		requestParameterList.add(otp);
		String response=this.invoService.serviceCallWithReqParamArray("validateOTP",requestParameterList);
		if(!response.equals("FAILURE"))
		{
			model.addAttribute("usrmail", email);
			model.addAttribute("usrotp", otp);
			return View.RESET_PWD;//"reset-password";
		}
		else
		{
			return View.REDIRECT+View.ERROR;//"redirect:error";
		}
		
	}
	@RequestMapping(value = "/privacypolicy", method = RequestMethod.GET)
	public String privacyPolicy(Model model, Principal p)
	{
		return View.PRIVACY_POLICY;//"privacypolicy";
	}
	@RequestMapping(value = "/termscondition", method = RequestMethod.GET)
	public String termscondition(Model model, Principal p)
	{
		return View.TERMS_COND;//"termscondition";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model)
	{
		System.out.println("calling login1 in controller");
		return View.LOGIN;//"login";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET,params = {"code", "state"})
	public String login(Model model,@RequestParam String code, @RequestParam String state,RedirectAttributes redirectAttributes)
	{
		System.out.println("calling login2 in controller");
		List<String> requestParameterList=new ArrayList<String>();
		if(code!=null)
		requestParameterList.add(code);
		if(state!=null)
		requestParameterList.add(state);
		String view="redirect:register";
		String response=this.invoService.serviceCallWithReqParamArray("linkedInAuth",requestParameterList);
		System.out.println("Response-->"+response);
		try {
			LinkedInResponse linkedInResponse = new ObjectMapper().readValue(response, LinkedInResponse.class);
		    Result result= new ObjectMapper().readValue(linkedInResponse.getResult(), Result.class);
		    System.out.println("linkedInResponse-->"+linkedInResponse);
		    System.out.println("result-->"+result);
			System.out.println("***Response mapped to bean***");
			if(linkedInResponse.getResult()!=null)
		    {
		    	System.out.println("Result123-->"+linkedInResponse.getResult());
		    	String pwd=this.invoService.serviceCallWithDao(result.getEmailAddress());
		    	
				if(pwd!=null && !("").equals(pwd))
		    	{
					Authentication authentication = new UsernamePasswordAuthenticationToken(result.getEmailAddress(), pwd,
						    AuthorityUtils.createAuthorityList("ROLE_USER"));
						SecurityContextHolder.getContext().setAuthentication(authentication);
					view= View.WELCOME;//"welcome";
		    	}
				else
				{
					/*redirectAttributes.addFlashAttribute("emailAdd", result.getEmailAddress());
					System.out.println("setting redirect Attribute -->"+result.getEmailAddress());
					view= View.REDIRECT+View.REGISTER;//"register";*/	
					
					 redirectAttributes.addFlashAttribute("emailAdd", result.getEmailAddress());
				     redirectAttributes.addFlashAttribute("firstName", result.getFirstName());
				     redirectAttributes.addFlashAttribute("lastName", result.getLastName());
				     redirectAttributes.addFlashAttribute("industry", result.getIndustry());
				     System.out.println("setting redirect Attribute -->"+result.getEmailAddress());
				     view= View.REDIRECT+View.REGISTER;//"register";
				}
		    }
		} catch (JsonParseException e) {
			System.out.println(e);
		} catch (JsonMappingException e) {
			System.out.println(e);
		} catch (IOException e) {
			System.out.println(e);
		}
		System.out.println("End of the catch");
		return view;
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model)
	{
		System.out.println("calling login in controller");
		return View.LOGOUT;//"logout";
	}
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String error(@RequestParam(required=false) String msg,Model model, Principal p)
	{
		model.addAttribute("msg", "OTP Expired!!");
		return View.ERROR;//"error";
	}
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String loginSuccess(@RequestParam(required=false) String msg,Model model, Principal p)
	{
		model.addAttribute("msg", msg);
		return Authenticator.authenticationCheck(View.WELCOME,p);
	}
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(@RequestParam(required=false) String msg,Model model, Principal p,HttpServletRequest request) 
	{
		String industryDetails=this.invoService.serviceCall("industry",null);
		String currencyDetails=this.invoService.serviceCall("currency",null);
		String countryDetails=this.invoService.serviceCall("country",null);
		ObjectMapper mapper = new ObjectMapper();
		IndustryResponse industryResponse=null;
		CountryResponse countryResponse=null;
		CurrencyResponse currencyResponse=null;
		try
		{
		industryResponse = mapper.readValue(industryDetails, IndustryResponse.class);
		countryResponse = mapper.readValue(countryDetails, CountryResponse.class);
		currencyResponse = mapper.readValue(currencyDetails, CurrencyResponse.class);
		}
		catch(JsonParseException e)
		{
			System.out.println(e);
		}
		catch(JsonMappingException e)
		{
			System.out.println(e);
		}
		catch(IOException e)
		{
			System.out.println(e);
		}
		model.addAttribute("industryValue", industryResponse.getMasterDatas());
		model.addAttribute("countryList",countryResponse.getMasterDatas() );
		model.addAttribute("currencyList",currencyResponse.getMasterDatas());
		Map<String, ?> flashMap =RequestContextUtils.getInputFlashMap(request);
		/*if(flashMap !=null)
		{
		String emailAdd=(String)flashMap.get("emailAdd");
		System.out.println("Setting email Address-->"+emailAdd);
		model.addAttribute("emailAdd",emailAdd);
		}*/
		
		if(flashMap !=null)
		  {
		  model.addAttribute("emailAdd",(String)flashMap.get("emailAdd"));
		  model.addAttribute("firstName",(String)flashMap.get("firstName"));
		  model.addAttribute("lastName",(String)flashMap.get("lastName"));
		  model.addAttribute("industry",(String)flashMap.get("industry"));
		  }
		return View.REGISTER;//"register";
	}
	
	@RequestMapping(value = "/passwordValidator", method = RequestMethod.POST)
	public @ResponseBody GeneralResponse passwordValidator(@RequestBody @Valid UserDetails userDetails,BindingResult bindingResult) {
		
		GeneralResponse responseDetails=new GeneralResponse();
		if(PassRecomUtil.pwdValidator(userDetails.getPassword(),userDetails.getUserId()))
		{
			boolean response = this.invoService.callUpdatePassService("updateUserPassword", userDetails.getPassword(), userDetails.getUserId());
			if(response){
				this.invoService.serviceCall("otpSendMail", userDetails.getUserId());
				responseDetails.setStatus(true);
				responseDetails.setMsg("success");
			}else{
				responseDetails.setStatus(false);
				responseDetails.setMsg("error");
			}
		}
		else
		{
			responseDetails.setStatus(false);
			responseDetails.setMsg("error");
		}	
		return responseDetails;
	}
	@RequestMapping(value = "/sendVerifyMail", method = RequestMethod.POST)
	public @ResponseBody GeneralResponse sendVerifyMail(@RequestBody(required=false) UserDetails userDetails,Model model) { 
		this.invoService.serviceCall("otpGenMail", userDetails.getUserId());
		GeneralResponse responseDetails=new GeneralResponse();
		responseDetails.setStatus(true);
		return responseDetails;
	}
	@RequestMapping(value = "/postRegData", method = RequestMethod.POST)
	public @ResponseBody GeneralResponse postRegData(@RequestBody @Valid Register register,BindingResult result) throws Exception{ 
		GeneralResponse responseDetails=new GeneralResponse();
		if(result.hasErrors() ||!PassRecomUtil.pwdValidator(register.getUser().getPassword(),register.getUser().getIdUser()))
		{
			List<ObjectError> errorList=result.getAllErrors();
			System.out.println(errorList.get(0).getDefaultMessage());
			responseDetails.setStatus(false);
			responseDetails.setMsg(errorList.get(0).getDefaultMessage());
		}
		else
		{
			String response=this.invoService.serviceCall("registr",new ObjectMapper().writeValueAsString(register));
			if(!response.equals("FAILURE"))
			{
			responseDetails.setStatus(true);
			responseDetails.setMsg("success");
			}
			else
			{
				responseDetails.setStatus(false);
				responseDetails.setMsg("EmailId already Exists!!");
			}
		
		}
		return responseDetails;
	}
	@RequestMapping(value = "/password-verification", method = RequestMethod.GET)
	public String verifyMail(Model model,Principal p)
	{
		return View.PASSWORD_VERIFICATION;//"password-verification";
	}
	@RequestMapping(value = "/activateUser", method = RequestMethod.POST)
	public String activateUser(@RequestBody(required=false) UserDetails userDetails,Model model) { 
		this.invoService.serviceCall("verifyMail",new Gson().toJson(userDetails));
		return View.HOME;//"home";
	}
	@RequestMapping(value = "/loginSuccess", method = RequestMethod.POST)
	public @ResponseBody GeneralResponse sendVerifyMail() { 
		GeneralResponse responseDetails=new GeneralResponse();
		responseDetails.setStatus(true);
		return responseDetails;
	}
	@RequestMapping(value = "/securityQuestionsVerification", method = RequestMethod.POST)
	public @ResponseBody GeneralResponse securityQuestionsVerification(@RequestBody(required=false) SecurityQn securityQn,Model model,HttpSession session) throws JsonParseException, JsonMappingException, IOException {
		GeneralResponse responseDetails=new GeneralResponse();
		String actualAns=(String) session.getAttribute("secAns");
		if(securityQn.getAnswer().equals(actualAns))
		{
			responseDetails.setStatus(true);
			responseDetails.setMsg("success");
		}
		return responseDetails;
	}
	@RequestMapping(value = "/forgotPwd", method = RequestMethod.GET)
	public String forgotPwd(Model model,Principal p) throws JsonParseException, JsonMappingException, IOException
	{
		return View.FORGOT_PWD;//"forgotpassword";
	}
	@RequestMapping(value = "/securityQuestion", method = RequestMethod.GET)
	public @ResponseBody GeneralResponse securityQuestions(Model model,Principal p,@RequestParam String mailId,HttpSession session) throws JsonParseException, JsonMappingException, IOException
	{
		GeneralResponse responseDetails=new GeneralResponse();
		String response=this.invoService.serviceCallWithReqParam("getSecQn", mailId);
		SecurityAnsResponse securityResponse=null;
		if(!response.equals("FAILURE"))
		{
		securityResponse = new ObjectMapper().readValue(response, SecurityAnsResponse.class);
		}
		else
		{
			securityResponse=new SecurityAnsResponse();
			securityResponse.setStatus("error");
		}
		if(securityResponse.getStatus().equals("successful"))
		{
			responseDetails.setStatus(true);
			if(securityResponse.getSecurityQuestions().size()>0)
			responseDetails.setMsg(securityResponse.getSecurityQuestions().get(0).getSecurityQuestion().getQuestion());
			else
				responseDetails.setMsg("NoQuestions");
			session.setAttribute("secAns", securityResponse.getSecurityQuestions().get(0).getAnswer());
		}
		else
		{
			responseDetails.setStatus(false);
		}
		return responseDetails;//authenticationCheck("securityquestion",p);
	}
	
}
