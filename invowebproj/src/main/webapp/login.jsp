<%@ page isELIgnored ="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" ng-app="invotiateModule" >

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <meta name="_csrf" content="${_csrf.token}"/>
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <title>Invotiate Login</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="<c:url value="//resources/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="//resources/css/form-elements.css" />">
    <link rel="stylesheet" href="<c:url value="//resources/css/style.css" />" >

   
    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="<c:url value="//resources/assets/ico/favicon.png" />" >
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="//resources/images/fevicon.png" />" >
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="//resources/images/fevicon.png" />" >
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="//resources/images/fevicon.png"/>" >
    <link rel="apple-touch-icon-precomposed" href="<c:url value="//resources/images/fevicon.png"/>" > 

</head>

<body ng-controller="LoginController">

    <!-- Top content -->
    <div class="top-content">

        <div class="inner-bg">
            <div class="container">
            <div class="row1">
                    
                    <div class="col-sm-5 logcenter">

                        <div class="form-box">
                            <div><h3 class="hcom"><strong>Invotiate</strong></h3></div>
                            <div class="form-top">
                                <div class="form-top-left">
                                    <h3>Login</h3>

                                </div>
                                <div class="infoico">
                                    <img src="<c:url value="//resources/images/info.png"/>" data-toggle="tooltip" data-placement="top" title="All Information goes here." />

                                </div>
                            </div>

                            <div class="form-bottom">
                                <form name="loginForm" ng-submit="submitForm()" class="login-form" novalidate>
                                    <p class="errormsg" ng-cloak>{{invalidCredential}}</p>
                                     <p class="infomsg" ng-cloak>{{acLocked}}</p>
                                    <div class="form-group">
                                        <div id="signin">
                                            <span>Sign in with</span><a href="https://www.linkedin.com/oauth/v2/authorization?client_id=78khj4l1adiigv&redirect_uri=http://54.67.51.41:8080/invowebproj/login&response_type=code&state=C1nm2Y"><img src="<c:url value="//resources/images/linkedin.png" />" alt="linkedin" title="linkedin" /></a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div id="example-seven">
                                            <span>Or</span>
                                        </div>
                                    </div>
                                    <div class="form-group" ng-class="{ 'has-error' : loginForm.txtUserName.$invalid && (loginForm.txtUserName.$dirty || submitted)}">
                                        <input type="email" name="txtUserName" placeholder="Enter Email Address" ng-model="email" ng-pattern="emailFormat" class="form-username form-control" id="txtUserName" ng-required="true">
                                        <p ng-show="loginForm.txtUserName.$error.required && (loginForm.email.$dirty || submitted)" class="help-block" ng-cloak>Email is required.</p>
                                        <p ng-show="(loginForm.txtUserName.$error.email || loginForm.txtUserName.$error.pattern) && (loginForm.email.$dirty || submitted)" class="help-block" ng-cloak>Enter a valid email.</p>
                                    </div>
                                    <div class="form-group" ng-class="{ 'has-error' : loginForm.txtPassword.$invalid && (loginForm.txtPassword.$dirty || submitted)}">
                                        <input type="password" name="txtPassword" placeholder="Enter Password" ng-model="password" class="form-password form-control" id="txtPassword" ng-required="true">
                                        <span class="aforget"><a ng-href="password-verification" class="forgetpass">Forgot?</a></span>
                                        <p ng-show="loginForm.txtPassword.$error.required && (loginForm.txtPassword.$dirty || submitted)" class="help-block" ng-cloak>Password is required.</p>
                                        <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}" ng-model="_csrf"/>
										<input type="hidden" name="requestedService"  value="login" ng-model="requestedService">
                                        <!-- <button type="submit" class="forgetpass">Forgot?</button> -->
                                    </div>
                                    <div class="form-group">
                                        <div id="chq">
                                            <div class="chk"><input type="checkbox" name="rememberme"  ng-model="rememberme"/></div>
                                            <div class="span"><small> Remember me for 30 days</small></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn">Login</button>
                                    </div>
                                    <div class="form-group mb">
                                        <div id="signup">
                                            <span>New to Invotiate?</span><a ng-href="register" class="asignup">Sign Up</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>


                    </div>
                    

                  

                    
                </div>

            </div>
        </div>

    </div>

    <!-- Footer 
    <footer>
        <div class="container">
            <div class="row">

                <div class="col-sm-8 col-sm-offset-2">
                   
                   
                </div>

            </div>
        </div>
    </footer>
-->
    <!-- Javascript -->
    <!--<script src="js/Jquery-2.1.4.js"></script>-->
    <!--<script src="js/angular.min.js"></script>-->
    <script src="<c:url value="//resources/js/angular.js" /> " ></script>
    <script src="<c:url value="//resources/js/login.js" /> " ></script>
    <script src="<c:url value="//resources/js/jquery-1.11.1.min.js" /> " ></script>
    <script src="<c:url value="//resources/js/bootstrap.min.js" /> " ></script>
   
    <!--[if lt IE 10]>
        <script src="assets/js/placeholder.js"></script>
    <![endif]-->

</body>

</html>

<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="utf-8">
        <meta id="viewport" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <title>AEP CC GOALS</title>
        <link rel="icon" type="image/png" href="img/fav.png"/>
        <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic' rel='stylesheet' type='text/css'/>
        <link rel="stylesheet" href="css/main.css" />
        <!--[if lte IE 9]>
          <script type="text/javascript" src="js/html5shiv.js"></script>
        <![endif]-->

</head>
<style>

td {padding-left:10px;padding-right:10px;border: 1px solid #9ACD32;font-size:11px;}
</style>
    <body><div class="jquery-script-ads" align="center">
    <script type="text/javascript"><!--
google_ad_client = "ca-pub-2783044520727903";
/* jQuery_demo */
google_ad_slot = "2780937993";
google_ad_width = 728;
google_ad_height = 90;
function goSubmit()
{
	document.forms[0].submit();
}
</script>

</div>
        <form:form id="sectional" action="serviceCall" method="POST">
        	<input type="hidden" name="requestedService" id="requestedService" value="test">
         	<input type="submit" value="submit">
        </form:form>
    </body> 
</html> --%>
