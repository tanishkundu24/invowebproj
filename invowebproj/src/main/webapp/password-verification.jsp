<%@ page isELIgnored ="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" ng-app="invotiateModule" >

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Invotiate reset password verification</title>

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

<body ng-controller="VerifyController">

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
                                    <h3>Reset your password?</h3>

                                </div>
                                <div class="infoico">
                                    <img src="<c:url value="//resources/images/info.png"/>" data-toggle="tooltip" data-placement="top" title="All Information goes here." />

                                </div>
                            </div>
                            <div class="form-bottom">
                                <form name="verifyForm" ng-submit="submitForm()" class="login-form" novalidate>
                                    <div>
                                        <p class="successmsg" ng-cloak>{{emailSentSuccessfully}}</p>
                                        <div class="form-group">
                                            <div class="col-xs-12 terms">
                                                <span>Please provide the username or email address that you used when you signed up for invotiate account.</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-xs-12 terms">
                                                <span>We will send you an email that will allow you to reset your password.</span>
                                            </div>
                                        </div>
                                        <div class="form-group" ng-class="{ 'has-error' : verifyForm.txtEmailOrUserName.$invalid && (verifyForm.txtEmailOrUserName.$dirty || submitted)}">
                                            <input type="email" name="txtEmailOrUserName" ng-model="email" placeholder="Email Address or username" class="form-username form-control" ng-pattern="emailFormat" id="txtEmailOrUserName" ng-required="true">
                                            <p ng-show="verifyForm.txtEmailOrUserName.$error.required && (verifyForm.email.$dirty || submitted)" class="help-block" ng-cloak>Email is required.</p>
                                            <p ng-show="(verifyForm.txtEmailOrUserName.$error.email|| verifyForm.txtEmailOrUserName.$error.pattern) && (verifyForm.email.$dirty || submitted)" class="help-block" ng-cloak>Enter a valid email.</p>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn">Send verification email</button>
                                        </div>
                                        <!--<div class="form-group" ng-class="{ 'has-error' : verifyForm.txtPhoneNo.$invalid && (verifyForm.txtPhoneNo.$dirty || submitted)}">
                                            <input type="text" name="txtPhoneNo" placeholder="Registered Phone No" ng-model="phone" class="form-password form-control" id="txtPhoneNo" ng-required="true">
                                            <p ng-show="verifyForm.txtPhoneNo.$error.required && (verifyForm.phone.$dirty || submitted)" class="help-block">Phone is required.</p>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn">Send validation code</button>
                                        </div>-->

                                    </div>
                                    
                                    <div class="form-group terms resetpwdhgt">
                                        <span><a ng-href="forgotPwd">Reset password using the secret question<sup>*</sup></a></span>
                                    </div>

                                </form>
                                 <form name="reSendMailForm" ng-show="hideResendForm" ng-submit="reSubmitForm()" class="login-form" novalidate>
                                    
                                    <div class="form-group" ng-cloak>
                                        <div class="col-lg-6 notreceived">Not received email</div>
                                        <div class="col-lg-4">
                                            <button type="button" class="resendbutton" ng-click="resendEmail()">Resend email</button>
                                           
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


    <!-- Javascript -->
    <!--<script src="js/Jquery-2.1.4.js"></script>-->
    <!--<script src="js/angular.min.js"></script>-->
    <script src="<c:url value="//resources/js/angular.js" /> " ></script>
    <script src="<c:url value="//resources/js/password-verify.js" /> " ></script>
    <script src="<c:url value="//resources/js/jquery-1.11.1.min.js" /> " ></script>
    <script src="<c:url value="//resources/js/bootstrap.min.js" /> " ></script>


    <!--[if lt IE 10]>
        <script src="assets/js/placeholder.js"></script>
    <![endif]-->

</body>

</html>