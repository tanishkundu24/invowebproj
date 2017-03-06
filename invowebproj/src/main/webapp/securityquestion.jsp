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

<body ng-controller="SQuestionsController">

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
                                    <h3>Security Questions</h3>

                                </div>
                                <div class="infoico">
                                    <img src="<c:url value="//resources/images/info.png"/>" data-toggle="tooltip" data-placement="top" title="All Information goes here." />

                                </div>
                            </div>
                            <div class="form-bottom">
                                <form name="secquesForm" ng-submit="submitForm()" class="login-form" novalidate>
                                    <div>
                                    	<p class="errormsg" ng-cloak>{{incorrectAns}}</p>
                                    	<p class="infomsg" ng-cloak>{{acLocked}}</p>
                                        <div class="form-group">
                                            <div class="col-xs-12 terms1">
                                                <span>Select new security questions and answers.</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-xs-12 terms">
                                                <span>These questions will be used to verify your identity and help to recover your password if you ever forget it.</span>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="form-group" ng-class="{ 'has-error' : secquesForm.ddlSecques1.$invalid && (secquesForm.ddlSecques1.$dirty || submitted)}">
                                                <select class="form-control input-lg" id="ddlSecques1" name="ddlSecques1"  ng-model="question1"  ng-required="true">
                                                    <!--<option value="Secirity Question1" selected="selected">Secirity Question1 </option>
                                                    <option value="Secirity Question2">Secirity Question2 </option>-->
                                                   <option value=''>Select Question</option>
                                                    <c:forEach items="${qn}" var="item">
                                                    <option value="${item.idSecurityQuestion}"><c:out value="${item.question}"/></option>
                                                    </c:forEach>
                                                </select>
                                                <p ng-show="secquesForm.ddlSecques1.$error.required && (secquesForm.question1.$dirty || submitted)" class="help-block" ng-cloak>Select Question.</p>
                                            </div>
                                            <div class="form-group" ng-class="{ 'has-error' : secquesForm.txtAnswer1.$invalid && (secquesForm.txtAnswer1.$dirty || submitted)}">
                                                <input type="text" name="txtAnswer1" placeholder="answer" ng-model="answer1" class="form-last-name form-control" id="txtAnswer1" ng-required="true">
                                                <p ng-show="secquesForm.txtAnswer1.$error.required && (secquesForm.answer1.$dirty || submitted)" class="help-block" ng-cloak>Answer is required.</p>
                                            </div>

                                            <!--<div class="form-group" ng-class="{ 'has-error' : secquesForm.ddlSecques2.$invalid && (secquesForm.ddlSecques2.$dirty || submitted)}">
                                                <select class="form-control input-lg" id="ddlSecques2" name="ddlSecques2" ng-model="question2" ng-options="ddlSecques2.QuestionId as ddlSecques2.Name for ddlSecques2 in QuestionList2" ng-required="true">
                                                  
                                                    <option value=''>Select Question</option>
                                                </select>
                                                <p ng-show="secquesForm.ddlSecques2.$error.required && (secquesForm.question2.$dirty || submitted)" class="help-block">Select Question2.</p>
                                            </div>
                                            <div class="form-group" ng-class="{ 'has-error' : secquesForm.txtAnswer2.$invalid && (secquesForm.txtAnswer2.$dirty || submitted)}">
                                                <input type="text" name="txtAnswer2" placeholder="answer" ng-model="answer2" class="form-last-name form-control" id="txtAnswer2" ng-required="true">
                                                <p ng-show="secquesForm.txtAnswer2.$error.required && (secquesForm.answer2.$dirty || submitted)" class="help-block">Answer is required.</p>
                                            </div>
                                            <div class="form-group" ng-class="{ 'has-error' : secquesForm.ddlSecques3.$invalid && (secquesForm.ddlSecques3.$dirty || submitted)}">
                                                <select class="form-control input-lg" id="ddlSecques3" name="ddlSecques3" ng-model="question3" ng-options="ddlSecques3.QuestionId as ddlSecques3.Name for ddlSecques3 in QuestionList3" ng-required="true">
                                                    
                                                    <option value=''>Select Question</option>
                                                </select>
                                                <p ng-show="secquesForm.ddlSecques3.$error.required && (secquesForm.question3.$dirty || submitted)" class="help-block">Select Question3.</p>
                                            </div>
                                            <div class="form-group" ng-class="{ 'has-error' : secquesForm.txtAnswer3.$invalid && (secquesForm.txtAnswer3.$dirty || submitted)}">
                                                <input type="text" name="txtAnswer3" placeholder="answer" ng-model="answer3" class="form-last-name form-control" id="txtAnswer3" ng-required="true">
                                                <p ng-show="secquesForm.txtAnswer3.$error.required && (secquesForm.answer3.$dirty || submitted)" class="help-block">Answer is required.</p>
                                            </div>-->
                                            
                                            <div class="form-group">
                                                <div class="col-xs-15 mr">
                                                    <button type="reset" class="btn">Cancel</button>
                                                </div>
                                                <div class="col-xs-15">
                                                    <button type="submit" class="btn">Continue</button>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-14 mr height">

                                                </div>
                                                <div class="col-xs-14">

                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-xs-14 mr height">

                                            </div>
                                            <div class="col-xs-14">

                                            </div>
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

    </div>
	    </div>

    <!-- Javascript -->
    <!--<script src="js/Jquery-2.1.4.js"></script>-->
    <!--<script src="js/angular.min.js"></script>-->
    
    <script src="<c:url value="//resources/js/angular.js" /> " ></script>
    <script src="<c:url value="//resources/js/securityquestion.js" /> " ></script>
    <script src="<c:url value="//resources/js/jquery-1.11.1.min.js" /> " ></script>
    <script src="<c:url value="//resources/js/bootstrap.min.js" /> " ></script>



    <!--[if lt IE 10]>
        <script src="assets/js/placeholder.js"></script>
    <![endif]-->

</body>

</html>
