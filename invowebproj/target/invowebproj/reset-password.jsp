<%@ page isELIgnored ="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" ng-app="invotiateModule">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Invotiate reset password</title>

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

<body ng-controller="ResetController">

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
                                    <h3>Reset your password</h3>

                                </div>
                                <div class="infoico">
                                    <img src="<c:url value="//resources/images/info.png"/>" data-toggle="tooltip" data-placement="top" title="All Information goes here." />

                                </div>
                            </div>
                            <div class="form-bottom">
                                <form name="resetForm" ng-submit="submitForm()" class="login-form" novalidate>
                               
                                 <%-- <input type="hidden" name="usrEmail"  ng-model="usremail"  id="usrEmail" ng-value='email=<c:out value="${usrmail }"></c:out>'> --%>
                                <input type="hidden" name="usrOtp"  ng-model="usrotp"  id="usrOtp" ng-value='otp=<c:out value="${usrotp }"></c:out>'>
                                    <div>
                                    <p class="errormsg">{{passwordMismatch}}</p>
                                        <div class="form-group" ng-class="{ 'has-error' : resetForm.txtNewPassword.$invalid && (resetForm.txtNewPassword.$dirty || submitted)}">
                                            <input type="password" name="txtNewPassword" placeholder="New password" ng-model="password" class="form-username form-control" id="txtNewPassword" ng-required="true">
                                            <p ng-show="resetForm.txtNewPassword.$error.required && (resetForm.password.$dirty || submitted)" class="help-block">New password is required.</p>
                                        </div>
                                        <div class="form-group" ng-class="{ 'has-error' : resetForm.txtConfirmPassword.$invalid && (resetForm.txtConfirmPassword.$dirty || submitted)}">
                                            <input type="password" name="txtConfirmPassword" placeholder="Confirm password" ng-model="confirmpassword" class="form-username form-control" id="txtConfirmPassword" ng-required="true" ng-compare="txtNewPassword">
                                            <p ng-show="resetForm.txtConfirmPassword.$error.required && (resetForm.confirmpassword.$dirty || submitted)" class="help-block">Confirm password is required.</p>
                                            <p ng-show="resetForm.txtConfirmPassword.$error.compare && (userForm.confirmpassword.$dirty || submitted)" class="help-block">Confirm password doesnot match.</p>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn">Submit</button>
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
    <script src="<c:url value="//resources/js/reset-password.js" /> " ></script>
    <script src="<c:url value="//resources/js/jquery-1.11.1.min.js" /> " ></script>
    <script src="<c:url value="//resources/js/bootstrap.min.js" /> " ></script>


    <!--[if lt IE 10]>
        <script src="assets/js/placeholder.js"></script>
    <![endif]-->

</body>

</html>
