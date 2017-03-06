<%@ page isELIgnored ="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" ng-app="invotiateModule">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Invotiate forgot password</title>

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

<body class="fntsize" ng-controller="resetPassController">

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
                                    <h3>Forgot Password?</h3>

                                </div>
                                <div class="infoico">
                                    <img src="<c:url value="//resources/images/info.png"/>" data-toggle="tooltip" data-placement="top" title="All Information goes here." />

                                </div>
                            </div>
                            <div class="form-bottom1">
                            
                                <form name="secForm" role="form" class="login-form" ng-submit="submitAnswerForm()" novalidate>
                                    <p class="errormsg" ng-cloak>{{invalidAnswer}}</p>
                                    <p class="errormsg" ng-cloak>{{invalidUserId}}</p>
                                    <p class="errormsg" ng-cloak>{{qNotSetup}}</p>
                                    <div>
                                        <!--End Of Security Question-->
                                        <div>
                                            <div class="form-group" ng-class="{ 'has-error' :secForm.txtEmailId.$error.unique || secForm.txtEmailId.$invalid && (secForm.txtEmailId.$dirty || submitted)}">
                                                <div class="col-lg-4 heigt">Userid:</div>
                                                <div class="col-lg-8 fltright">
                                                    <div class="col-lg-10 rlt"><input type="email" name="txtEmailId" placeholder="Email Address" ng-model="email" ng-pattern="emailFormat" class="form-first-name form-control" id="txtEmailId" ng-required="true">
                                                    </div>
                                                    <span class="anextlnk pdright"><a ng-click="verifyEmail()" class="anext">Next</a></span>

                                                </div>

                                                <p ng-show="secForm.txtEmailId.$error.required && (secForm.email.$dirty || submitted)" class="help-block" ng-cloak>Email is required.</p>
                                                <p ng-show="secForm.txtEmailId.$error.email && (secForm.email.$dirty || submitted)" class="help-block" ng-cloak>Enter a valid email.</p>
                                            </div>
                                            <div style="clear:both;height:5px;"></div>
                                            <div ng-show="vEmail">
                                                <div class="form-group">
                                                    <div class="col-lg-4 heigt">Your Secret Question:</div>
                                                    <div class="col-lg-8 heigt" ng-cloak><strong>{{uQuestion}}</strong></div>
                                                </div>
                                                <div class="form-group" ng-class="{ 'has-error' : secForm.txtAnswer.$invalid && (secForm.txtAnswer.$dirty || submitted)}">
                                                    <div class="col-lg-4 heigt">&nbsp;</div>
                                                    <div class="col-lg-8 fltright">
                                                        <div class="col-lg-10 rlt"><input type="text" name="txtAnswer" placeholder="Answer" ng-model="answer" class="form-username form-control" id="txtAnswer" ng-required="true"></div>
                                                        <span class="aforget pdright"><button type="submit" class="newsub">Submit</button></span>
                                                    </div>
                                                    <p ng-show="secForm.txtAnswer.$error.required && (secForm.answer.$dirty || submitted)" class="help-block" ng-cloak>Answer required.</p>
                                                </div>
                                            </div>
                                            <div style="clear:both;height:5px;"></div>
                                        </div>
                                        <!--End Of Security Question-->



                                    </div>

                                </form>

                                <form name="resetForm" role="form" class="login-form" ng-show="hideResetForm" ng-submit="submitForm()" novalidate>
                                    <div>
                                        <div>
                                            <div class="form-group" ng-class="{ 'has-error' : resetForm.txtConfirmPassword.$invalid && (resetForm.txtConfirmPassword.$dirty || submittedr)}">
                                                <div class="col-lg-4 heigt">Password:</div>
                                                <div class="col-lg-8 fltright">
                                                    <div class="col-lg-10 rlt"><input type="password" name="txtNewPassword" placeholder="Password" ng-model="password" class="form-username form-control" id="txtNewPassword" ng-required="true"></div>


                                                </div>
                                                <p ng-show="resetForm.txtNewPassword.$error.required && (resetForm.password.$dirty || submittedr)" class="help-block" ng-cloak>Password is required.</p>
                                            </div>
                                            <div style="clear:both;height:5px;"></div>
                                            <div class="form-group" ng-class="{ 'has-error' : resetForm.txtConfirmPassword.$invalid && (resetForm.txtConfirmPassword.$dirty || submittedr)}">
                                                <div class="col-lg-4 heigt">Confirm Password:</div>
                                                <div class="col-lg-8 fltright">
                                                    <div class="col-lg-10 rlt">
                                                        <input type="password" name="txtConfirmPassword" placeholder="Confirm password" ng-model="confirmpassword" class="form-username form-control" id="txtConfirmPassword" ng-required="true" ng-compare="txtNewPassword">
                                                    </div>


                                                </div>
                                                <p ng-show="resetForm.txtConfirmPassword.$error.required && (resetForm.confirmpassword.$dirty || submittedr)" class="help-block" ng-cloak>Confirm-password is required.</p>
                                                <p ng-show="resetForm.txtConfirmPassword.$error.compare && (userForm.confirmpassword.$dirty || submittedr)" class="help-block" ng-cloak>Confirm-password doesnot match.</p>
                                            </div>
                                            <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}" ng-model="_csrf"/>
											<input type="hidden" name="requestedService"  value="login" ng-model="requestedService">
                                            <div style="clear:both;height:5px;"></div>
                                            <div class="form-group">
                                                <div class="col-lg-4 heigt"></div>
                                                <div class="col-lg-8 fltright">
                                                    <div class="col-lg-10 rlt">

                                                        <button type="submit" class="btn">Submit</button>

                                                    </div>
                                                </div>

                                            </div>
                                            <div style="clear:both;height:5px;"></div>
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
    <script src="<c:url value="//resources/js/forgotpassword.js" /> " ></script>
    <script src="<c:url value="//resources/js/jquery-1.11.1.min.js" /> " ></script>
    <script src="<c:url value="//resources/js/bootstrap.min.js" /> " ></script>


    <!--[if lt IE 10]>
        <script src="assets/js/placeholder.js"></script>
    <![endif]-->

</body>

</html>
