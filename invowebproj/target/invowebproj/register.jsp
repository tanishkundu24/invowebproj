<%@ page isELIgnored ="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" ng-app="invotiateModule">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Invotiate Register</title>

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

<body ng-controller="RegisterController">

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
                                    <h3>Create my Invotiate Account</h3>
                                </div>
                                <div class="infoico"><img src="<c:url value="//resources/images/info.png"/>" data-toggle="tooltip" data-placement="top" title="All Information goes here." />
                                </div>
                               
                            </div>
                            <div class="form-bottom1">
                                <form name="regForm" ng-submit="submitForm()" class="registration-form" novalidate>
                                    <p class="errormsg" ng-cloak>{{regError}}</p>
                                    <div>

                                        <div class="form-group">

                                           <div class="col-xs-13" ng-class="{ 'has-error' : regForm.txtFirstName.$invalid && (regForm.txtFirstName.$dirty || submitted)}">
                                               <c:choose>
               <c:when test="${not empty firstName}">
                <input type="text" name="txtFirstName" ng-model="firstName" placeholder="First Name" class="form-first-name form-control" id="txtFirstName" maxlength="40" ng-required="true" value="${firstName}" ng-initial>
               </c:when>
                <c:otherwise>
                 <input type="text" name="txtFirstName" ng-model="firstName" placeholder="First Name" class="form-first-name form-control" id="txtFirstName" maxlength="40" ng-required="true">
                </c:otherwise>
                </c:choose>
                                            </div>
                                            <div class="col-xs-13">
                                                <input type="text" name="txtMiddleName" placeholder="Middle Name" class="form-first-name form-control" id="txtMiddleName" ng-model="midName">
                                            </div>
                                            <div class="col-xs-13" ng-class="{ 'has-error' : regForm.txtLastName.$invalid && (regForm.txtLastName.$dirty || submitted)}">
                                                <c:choose>
               <c:when test="${not empty lastName}">
               <input type="text" name="txtLastName" ng-model="lastName" placeholder="Last Name" class="form-first-name form-control" id="txtLastName" maxlength="20" ng-required="true" value="${lastName}" ng-initial>
               </c:when>
               <c:otherwise>
               <input type="text" name="txtLastName" ng-model="lastName" placeholder="Last Name" class="form-first-name form-control" id="txtLastName" maxlength="20" ng-required="true">
               </c:otherwise>
               </c:choose>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                           
                                            <div class="col-xs-14 mr" ng-class="{ 'has-error' : regForm.txtEmailId.$invalid && (regForm.txtEmailId.$dirty || submitted)}">
                                            <c:choose>
											    <c:when test="${not empty emailAdd}">
											    	<input type="email" name="txtEmailId" placeholder="Email Address" ng-model="email" class="form-first-name form-control" id="txtEmailId" ng-required="true" value="${emailAdd}" ng-initial>
											    </c:when>
											    <c:otherwise>
											       <input type="email" name="txtEmailId" placeholder="Email Address" ng-model="email" class="form-first-name form-control" id="txtEmailId" ng-pattern="emailFormat" ng-required="true" ><%-- value="${dummy}" ng-initial> --%>
											    </c:otherwise>
										    </c:choose>
                                                
                                            </div>
                                            <div class="col-xs-14" ng-class="{ 'has-error' : regForm.txtPhoneNo.$invalid && (regForm.txtPhoneNo.$dirty || submitted)}">
                                                <input type="text" name="txtPhoneNo" placeholder="Phone No" ng-model="phone" ng-pattern="phoneFormat" maxlength="10" class="form-first-name form-control" id="txtPhoneNo">
                                            </div>
                                        </div>
                                        <div class="form-group" ng-class="{ 'has-error' : regForm.txtLegalEntityName.$invalid && (regForm.txtLegalEntityName.$dirty || submitted)}">
                                            <input type="text" name="txtLegalEntityName" placeholder="Legal Entity Name" ng-model="legalEntityName" class="form-last-name form-control" id="txtLegalEntityName" ng-required="true">
                                        </div>
                                        <div class="form-group" ng-class="{ 'has-error' : regForm.txtAddress1.$invalid && (regForm.txtAddress1.$dirty || submitted)}">

                                            <input type="text" name="txtAddress1" placeholder="Address1" ng-model="uAddress1" class="form-last-name form-control" id="txtAddress1" ng-required="true" maxlength="40">
                                        </div>
                                        <div class="form-group">

                                            <input type="text" name="txtAddress2" placeholder="Address2" ng-model="uAddress2" class="form-last-name form-control" id="txtAddress2" maxlength="40">
                                        </div>
                                        <div class="form-group">

                                            <input type="text" name="txtAddress3" placeholder="Address3" ng-model="uAddress3" class="form-last-name form-control" id="txtAddress3" maxlength="40">
                                        </div>
                                        <div class="form-group">
                                            <div class="col-xs-14 mr"  ng-class="{ 'has-error' : regForm.ddlCountry.$invalid && (regForm.ddlCountry.$dirty || submitted)}">
                                             <select class="form-control input-lg" id="ddlCountry" name="ddlCountry" ng-model="country"  ng-required="true">
											        <option value="" selected="selected">Select Country of Registration </option>
                                                    	<c:forEach items="${countryList}" var="item">
													   		<option value="${item.idCountry}" >${item.countryName}</option>
														</c:forEach>
                                                </select>
                                            </div>
                                            <div class="col-xs-14" ng-class="{ 'has-error' : regForm.ddlCurrency.$invalid && (regForm.ddlCurrency.$dirty || submitted)}">

                                                <select class="form-control input-lg" id="ddlCurrency" name="ddlCurrency" ng-model="currency"  ng-required="true">

                                                	<option value="" selected="selected">Select Currency</option>
                                                    <c:forEach items="${currencyList}" var="item">
													   <option value="${item.idCurrency}">${item.currencyName}</option>
													</c:forEach>
                                                </select>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <div class="col-xs-14 mr" ng-class="{ 'has-error' : regForm.ddlIndustry.$invalid && (regForm.ddlIndustry.$dirty || submitted)}">
                                                <select class="form-control input-lg" id="ddlIndustry" name="ddlIndustry" ng-model="industry"  ng-required="true">
                                                    <option value="" >Select Industry</option>
                                                    <c:forEach items="${industryValue}" var="item">
													   <option value="${item.idIndustry}" >${item.industryName}</option>
													</c:forEach>
                                                </select>
                                            </div>
                                            <div class="col-xs-14">

                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <div class="col-xs-9 mtb">
                                                <!--I am a book keeper/ Accountant/ Legal Firm-->
                                              I manage more than one legal entity
                                               
                                            </div>
                                            <div class="col-xs-2 frtr">
                                                <label class="switch">
                                                    <input type="checkbox" ng-model="confirmed" ng-change="change()" data-toggle="{{confirmed ? 'modal' : ''}}" data-target="#lglIdentity">
                                                    <div class="slider round"></div>
                                                </label>
                                            </div>

                                        </div>
                                        <div class="form-group" ng-class="{ 'has-error' : regForm.txtPassword.$invalid && (regForm.txtPassword.$dirty || submitted)}">
                                            <div class="col-xs-14 mr">
                                                <input type="password" name="txtPassword" ng-model="password" placeholder="Create Password" class="form-email form-control" id="txtPassword" ng-required="true">
                                            </div>
                                            <div class="col-xs-14">
                                                <p ng-show="resetForm.txtPassword.$error.required && (resetForm.password.$dirty || submitted)" class="help-block" ng-cloak>password is required.</p>
                                            </div>

                                        </div>
                                        <div class="form-group" ng-class="{ 'has-error' : regForm.txtCnfmPassword.$invalid && (regForm.txtCnfmPassword.$dirty || submitted)}">
                                            <div class="col-xs-14 mr">
                                                <input type="password" name="txtCnfmPassword" ng-model="confirmpassword" placeholder="Confirm Password" class="form-email form-control" id="txtCnfmPassword" ng-compare="txtPassword" ng-required="true">
                                            </div>
                                            <div class="col-xs-14">
                                                <p ng-show="resetForm.txtCnfmPassword.$error.required && (resetForm.confirmpassword.$dirty || submitted)" class="help-block" ng-cloak>Confirm password is required.</p>
                                                <p ng-show="resetForm.txtCnfmPassword.$error.compare && (userForm.confirmpassword.$dirty || submitted)" class="help-block" ng-cloak>Confirm password doesnot match.</p>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <div class="col-xs-12 terms">
                                                <span>By Clicking Create Account, I agree to the <a data-target="#mdlTC" data-toggle="modal">Terms Of Service</a> and  <a data-target="#mdlPP" data-toggle="modal">Privacy Policy</a></span>
                                            </div>
                                        </div>
                                        <!--<div class="form-group">

            <textarea name="form-about-yourself" placeholder="About yourself..."
                      class="form-about-yourself form-control" id="form-about-yourself"></textarea>
        </div>-->

                                        <div class="form-group">
                                            <button type="submit" class="btn">Create Account</button>
                                        </div>
                                        <div class="form-group mb">
                                            <div id="signup">
                                                <span>Already a member?</span><a ng-href="login" class="asignup">Sign In</a>
                                                <!--<button type="submit" class="btnsignup">Sign In</button>-->
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


    <!-- Modal Pop Up for Legal Entity-->
    <form name="modalForm">
        <div id="lglIdentity" class="modal fade" tabindex="-1" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                        <h4 class="modal-title fl">Add Another Legal Entity</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="text" name="txtEntityName" placeholder="Legal Entity Name" ng-model="EntityName" class="form-first-name form-control" id="txtEntityName" ng-required="true">
                            <!--<p ng-show="modalForm.txtEntityName.$error.required && (modalForm.EntityName.$dirty)" class="help-block">Entity name required.</p>-->
                        </div>
                        <div class="form-group">
                            <select class="form-control input-lg" id="ddlCountry" ng-model="eCountry" name="ddlCountry" ng-required="true">
                                <option value="" selected="selected">Select Country of Registration </option>
                               <c:forEach items="${countryList}" var="item">
						   		<option value="${item.idCountry}" >${item.countryName}</option>
							</c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control input-lg" id="ddlDefCurrency" ng-model="eCurrency" name="ddlDefCurrency" ng-required="true">
								<option value="" selected="selected">Default Currency</option>
                                <c:forEach items="${currencyList}" var="item">
							   <option value="${item.idCurrency}">${item.currencyName}</option>
								</c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control input-lg" id="ddlIndustry1" ng-model="eindustry" name="ddlIndustry1" ng-required="true">
                                <option value="" >Select Industry</option>
                                <c:forEach items="${industryValue}" var="item">
							   <option value="${item.idIndustry}" >${item.industryName}</option>
								</c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <div id="chq">
                                <div class="chk"><input type="checkbox" ng-required="true" ng-model="chkAck" /></div>
                                <div class="legalspan"><small> I acknowledge and resume all liability of negotiating on behalf of the client.</small></div>
                            </div>
                        </div>
                    <div style="clear:both;"></div>
                    <div class="modal-footer fc">
                        <button class="btn" id="btnToggleTip" ng-click="modalValidate()" >Save</button>
                        <button class="btn" id="btnAddMore" ng-click="addMoreLegal()">Add More</button>
                    </div>
                </div>

                </div>
            </div>
        </div>
    </form>
    <!-- END of Modal Pop Up for Legal Entity-->
    <!--Modal pop up for Privacy Policy-->
    <div id="mdlPP" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                    <h4 class="modal-title fl">Privacy Policy</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <p class="terms abheight">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit nibh ut sem sagittis elementum. Sed nec augue porta, sollicitudin nisi ut, feugiat nulla. Praesent vitae mi at quam vehicula dapibus. Quisque aliquet ante et tellus semper, sit amet consectetur odio volutpat. Donec posuere est ex. Donec consequat orci eu metus lacinia molestie. Ut dapibus et neque sit amet lacinia. Suspendisse malesuada magna sed felis congue condimentum sit amet at ipsum. Quisque ut velit sed sapien scelerisque tincidunt. Integer ac urna semper, sodales turpis non, eleifend enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit nibh ut sem sagittis elementum. Sed nec augue porta, sollicitudin nisi ut, feugiat nulla. Praesent vitae mi at quam vehicula dapibus. Quisque aliquet ante et tellus semper, sit amet consectetur odio volutpat. Donec posuere est ex. Donec consequat orci eu metus lacinia molestie. Ut dapibus et neque sit amet lacinia. Suspendisse malesuada magna sed felis congue condimentum sit amet at ipsum. Quisque ut velit sed sapien scelerisque tincidunt. Integer ac urna semper, sodales turpis non, eleifend enim.</p>
                        
                    </div>
                    <div style="clear:both;"></div>
                  
                </div>

            </div>
        </div>
    </div>
    <!--End of modal pop up for Privacy Policy-->
    <!--Modal pop up for Terms condition-->
    <div id="mdlTC" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                    <h4 class="modal-title fl">Terms &amp; Conditions</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <p my-directive class="terms abheight">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit nibh ut sem sagittis elementum. Sed nec augue porta, sollicitudin nisi ut, feugiat nulla. Praesent vitae mi at quam vehicula dapibus. Quisque aliquet ante et tellus semper, sit amet consectetur odio volutpat. Donec posuere est ex. Donec consequat orci eu metus lacinia molestie. Ut dapibus et neque sit amet lacinia. Suspendisse malesuada magna sed felis congue condimentum sit amet at ipsum. Quisque ut velit sed sapien scelerisque tincidunt. Integer ac urna semper, sodales turpis non, eleifend enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer blandit nibh ut sem sagittis elementum. Sed nec augue porta, sollicitudin nisi ut, feugiat nulla. Praesent vitae mi at quam vehicula dapibus. Quisque aliquet ante et tellus semper, sit amet consectetur odio volutpat. Donec posuere est ex. Donec consequat orci eu metus lacinia molestie. Ut dapibus et neque sit amet lacinia. Suspendisse malesuada magna sed felis congue condimentum sit amet at ipsum. Quisque ut velit sed sapien scelerisque tincidunt. Integer ac urna semper, sodales turpis non, eleifend enim.</p>
                        
                    </div>
                    <div style="clear:both;"></div>
                    <div class="form-group" ng-show="false" id="divtc">
                        <div id="chq" >
                            <div class="chk"><input type="checkbox" ng-model="chkTC" /></div>
                            <div class="span"><small> I agree to the Terms of Services</small></div>
                        </div>
                    </div>
                    <div style="clear:both;"></div>
                </div>

            </div>
        </div>
    </div>
    <!--End of modal pop up for Terms condition-->
    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">

                <div class="col-sm-8 col-sm-offset-2">


                </div>

            </div>
        </div>
    </footer>

    <!-- Javascript -->
    <!--<script src="js/Jquery-2.1.4.js"></script>-->
    <!--<script src="js/angular.min.js"></script>-->

	<script src="<c:url value="//resources/js/angular.js" /> " ></script>
    <script src="<c:url value="//resources/js/register.js" /> " ></script>
    <script src="<c:url value="//resources/js/jquery-1.11.1.min.js" /> " ></script>
    <script src="<c:url value="//resources/js/bootstrap.min.js" /> " ></script>

    <!--[if lt IE 10]>
        <script src="assets/js/placeholder.js"></script>
    <![endif]-->

</body>

</html>