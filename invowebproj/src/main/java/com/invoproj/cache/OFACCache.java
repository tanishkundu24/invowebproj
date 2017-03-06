package com.invoproj.cache;

import java.util.HashMap;
import java.util.Map;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Component;

/*@Component*/
public class OFACCache {
	
	  private static Map<String,String> securityQA=new HashMap<String,String>();
	 /* @Cacheable("task")*/
	  public Map<String,String> cacheOFACList() {
		  //Connect to the database and pull the security questions and answers.
		  return securityQA;
	  }
	  static
	  {
		  securityQA.put("Which City you were born", "Chicago");
	  }

}
