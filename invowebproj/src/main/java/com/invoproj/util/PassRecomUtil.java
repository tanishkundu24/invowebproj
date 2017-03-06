package com.invoproj.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.invoproj.beans.servicebeans.UserDetails;

public class PassRecomUtil {
	
	public static boolean pwdValidator(String password,String userId)
	{
	String regex3="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!\"#$%&'()*+,-./:;<=>?@\\[\\]^_`{|}~])(?=\\S+$).{8,15}$";
	
	boolean valid=true;
	/*1 small-case letter, 1 Capital letter, 1 digit, 1 special character 
 	and the length should be between 6-10 characters */
	boolean rule1=password.matches(regex3);
	Pattern pattern = Pattern.compile("([A-Z]|[a-z]|\\d)\\1{2}");
    Matcher matcher = pattern.matcher(password);
    /* Three repeating characters*/
	boolean rule2=  matcher.find();
	/* Should not contain User Id */
	boolean rule3=false;
	if(userId!=null)
		rule3=password.contains(userId);
	return (rule1 && !rule2 && !rule3);
	}
}
/*Password must be at least 8 characters, no more than 15 characters, 
must include at least one upper case letter, one lower case letter, and one numeric digit
String regex1= "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$";

Password must contain at least one letter, 
* at least one number, and be longer than six charaters
String regex2= "^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$";

/* It expects atleast 1 small-case letter, 1 Capital letter, 1 digit, 1 special character 
* and the length should be between 6-10 characters
*/