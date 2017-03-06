<%@ page isELIgnored ="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" ng-app="invotiateModule">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Invotiate Create Invoice </title>
    <!-- Bootstrap -->
    <!-- <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
       <link rel="stylesheet" href="<c:url value="//resources/css/switcher.css" />" >
    <link rel="stylesheet" href="<c:url value="//resources/vendors/bootstrap/css/bootstrap.min.css" />" >
    <link rel="stylesheet" href="<c:url value="//resources/vendors/font-awesome/css/font-awesome.min.css" />" >
    <link rel="stylesheet" href="<c:url value="//resources/vendors/bootstrap/css/style.css" />" >
    <link rel="stylesheet" href="<c:url value="//resources/vendors/bootstrap/css/custom.min.css" />" >
   
    
</head>
<body class="nav-md" ng-controller="InvoiceController">
 <div class="container body">
        <div class="main_container mainbdy">

            <div class="col-md-3 left_col">
                <div class="container-fluid flulft" style="width:100%;">
                    <div class="left_col scroll-view">
                        <div class="navbar nav_title leftalign" style="border: 0;">
                            <a href="dashboard.html" class="site_title"><span>Invotiate</span></a>

                        </div>
                        <div class="clearfix"></div>
                        <!-- menu profile quick info -->
                        <!--<div class="profile clearfix">
                          <div class="profile_pic">
                            <img src="images/img.jpg"  alt="..." class="img-circle profile_img">
                          </div>
                          <div class="profile_info">
                            <span>Welcome,</span>
                            <h2>John Doe</h2>
                          </div>
                        </div>-->
                        <!-- /menu profile quick info -->
                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                            <div class="menu_section">

                                <ul class="nav side-menu">


                                    <li>
                                        <a><i class="fa fa-user-o"></i> Profile <span class="fa fa-chevron-circle-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a ng-href="javascript:void(0)">Profile Settings</a></li>
                                            <li><a ng-href="javascript:void(0)">Billing &amp; Pricing</a></li>

                                        </ul>
                                    </li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-bell-o"></i>Notifications </a></li>
                                    <li><a ng-href="dashboard.html"><i class="fa fa-dashboard"></i>Dashboard </a></li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-line-chart"></i>My Activity </a></li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-upload"></i>File Upload </a></li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-calendar"></i>Calendar </a></li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-phone"></i>Connect </a></li>
                                    <li>
                                        <a><i class="fa fa-support"></i>Help<span class="fa fa-chevron-circle-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="javascript:void(0)">Initiate Offer</a></li>
                                            <li><a href="javascript:void(0)">Bulk Upload</a></li>
                                            <li><a href="javascript:void(0)">Negotiate Terms</a></li>
                                            <li><a href="javascript:void(0)">My Activity</a></li>
                                            <li><a href="javascript:void(0)">My Dash Board</a></li>
                                            <li><a href="javascript:void(0)">My Connections</a></li>
                                            <li><a href="javascript:void(0)">FAQS</a></li>
                                            <li><a href="javascript:void(0)">Support</a></li>

                                        </ul>
                                    </li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-sign-out"></i>Logout </a></li>

                                </ul>
                            </div>

                        </div>
                        <!-- /sidebar menu -->

                    </div>
                </div>
            </div>


            <!-- page content -->
            <div class="right_col" role="main" style="padding:10px 11px 0px 10px;">
                <form class="form-horizontal form-label-left" name="invoiceForm" novalidate>
                    <!-- top navigation -->
                    <div class="top_nav">
                        <div class="nav_menu">
                            <nav>
                                <div class="col-md-1 col-sm-1 col-xs-12">
                                    <div class="nav toggle">
                                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                                    </div>
                                </div>
                                <div class="col-md-7 col-sm-7 col-xs-12 form-group pull-left top_search tpsrch">

                                    <div class="input-group" style="width:100%;">
                                        <div class="input-append search-input-area">
                                            <input class="" id="appendedInputButton" type="text">
                                            <button class="btn" type="button">Go </button>
                                        </div>
                                    </div>


                                </div>
                                <div id="tprgt" class="col-md-4 col-sm-4 col-xs-12" style="">
                                    <div id="tpbtn" style="">
                                        <button type="button" class="btnntp btn-outline-success waves-effect animateitm" style="">Invotiate Now</button>
                                    </div>
                                    <div style="width:100px;float:right;">

                                        <select class="form-control txtbdrtpdrw" style="border:none;padding:0px 0px;">
                                            <option>abc ltd</option>
                                            <option>Company 1</option>
                                            <option>Company 2</option>
                                        </select>
                                        <!--<ul class="nav navbar-nav navbar-right" style="width:100%;">
                                            <li class="">
                                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="line-height:8px;white-space:nowrap;">
                                                    Abc Limited
                                                    <span class="fa fa-angle-down"></span>
                                                </a>
                                                <ul class="dropdown-menu dropdown-usermenu pull-right">
                                                    <li><a href="javascript:;"> Company1</a></li>
                                                    <li><a href="javascript:;"> Company2</a></li>

                                                </ul>
                                            </li>

                                        </ul>-->
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                    <!-- /top navigation -->
                    <div class="">

                        <div class="page-title">
                            <div class="title_left">
                                <h3 style="margin:-5px 0;">Create</h3>
                            </div>

                            <div class="title_right">
                                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search" style="margin-top:0px;margin-bottom:0px;padding-top:0px;padding-bottom:0px;">
                                    <div class="input-group">
                                        &nbsp;
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel rd">
                                    <div class="pnl">
                                        <div class="x_title">
                                            <h2 class="hrt">Overview </h2>

                                            <div class="clearfix"></div>
                                        </div>

                                        <div class="row top_tiles" style="margin:0px 0px 11px 0;padding-bottom: 20px;">
                                            <div class="col-md-3 col-sm-3 col-xs-6 tile tilel">
                                                <div class="tilelspan">
                                                    <h3 class="bspadinw">40</h3>
                                                    <span class="bspadi-small">Invotiated Invoices</span>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-3 col-xs-6 tile tilel">
                                                <div class="tilelspan">
                                                    <h3 class="bspadinw">4%</h3>
                                                    <span class="tilelspan bspadi-small">Last 5 Successful Negotiation Bids</span>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-3 col-xs-6 tile tilel">
                                                <div class="tilelspan">
                                                    <h3 class="bspadinw">2.3%</h3>
                                                    <span class="bspadi-small">Average Negotiation Bid</span>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-3 col-xs-6 tile tilel">
                                                <div class="tilelspan">
                                                    <h3 class="bspadinw">8%</h3>
                                                    <span class="bspadi-small">Success Rate</span>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="clearfix"></div>


                                    <div>


                                        <div class="page-title prdtop">

                                            <div class="title_left pdrilft">
                                                <h3 class="h3sz" ng-cloak>{{ currentDate | date : 'dd MMM, yyyy' }}</h3>
                                            </div>

                                            <div class="title_right mrgbtm">
                                                <div class="col-md-2 col-sm-2 col-xs-12 form-group pull-right top_search mrgbtm" style="padding:10px 25px 0 0;margin:0px;text-align:right;">
                                                    <button type="reset" value="Reset" class="btn btn-selected btnround" data-color="default"><i class="fa fa-refresh"></i> Reset</button>
                                                    <!--<div class="input-group mrgbtm rfbtn">
                                                        <button type="reset" class="btn btn-default cancel">
                                                            <i class="fa fa-refresh"></i><span>Reset</span>
                                                        </button>
                                                    </div>-->
                                                </div>
                                            </div>

                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="clearfix"></div>
                                        <p class="infomsg" style="text-align:center;" ng-cloak>{{invSuccess}}</p>
                                        <div class="form-group mrgbttm sflft">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-11">This offer is</label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                                <div class="col-md-4 col-sm-12 col-xs-12 form-group">
                                                    <div id="payable" class="btn-group" data-toggle="buttons">
                                                        <label class="btn btn-default active" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                            <input checked="checked" name="options" id="option1" value="To" ng-model="pay" type="radio" class="hiderdbtnapp"> Payable
                                                        </label>
                                                        <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                            <input name="options" id="option2" type="radio" value="From" ng-model="pay" class="hiderdbtnapp"> Receivable
                                                        </label>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm">
                                        
                                            <label class="control-label col-md-3 col-sm-3 col-xs-11">To / From</label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;" ng-class="{ 'has-error' : invoiceForm.txtFirstName.$invalid && (invoiceForm.txtFirstName.$dirty || submitted)}">
                                                    <sup class="colspadd">*</sup> <input type="text" style="margin-left:7px;" name="txtFirstName" id="txtFirstName" ng-model="firstName" ng-pattern="alphaFormat" placeholder="First Name" typeahead="txtFirstName.id as txtFirstName.name for txtFirstName in invoiceData.firstNames | filter:$viewValue | limitTo:8" typeahead-input-formatter="formatLabelFN($model)" class="form-control txtbdr" maxlength="40" ng-required="true">
                                                    <input type="hidden" ng-model="firstNameid" value="{{firstName| json}}" />
                                                </div>
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;" ng-class="{ 'has-error' : invoiceForm.txtMiddleName.$invalid && (invoiceForm.txtMiddleName.$dirty || submitted)}">
                                                    <input type="text" name="txtMiddleName" style="margin-left:7px;" id="txtMiddleName" ng-model="middleName" ng-pattern="alphaFormat" placeholder="Middle Name" typeahead="txtMiddleName.id as txtMiddleName.name for txtMiddleName in invoiceData.middleNames | filter:$viewValue | limitTo:8" typeahead-input-formatter="formatLabelMN($model)" class="form-control txtbdr" maxlength="20">
                                                    <input type="hidden" ng-model="middleNameid" value="{{middleName| json}}" />
                                                </div>
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;" ng-class="{ 'has-error' : invoiceForm.txtLastName.$invalid && (invoiceForm.txtLastName.$dirty || submitted)}">
                                                    <input type="text" placeholder="Last Name" style="margin-left:7px;" name="txtLastName" id="txtLastName" ng-model="lastName" ng-pattern="alphaFormat" typeahead="txtLastName.id as txtLastName.name for txtLastName in invoiceData.lastNames | filter:$viewValue | limitTo:8" typeahead-input-formatter="formatLabelLN($model)" class="form-control txtbdr" maxlength="20">
                                                    <input type="hidden" ng-model="lastNameid" value="{{lastName| json}}" />
                                                </div>
                                                <!--<input class="form-control" placeholder="Default Input" type="text">-->
                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12"> </label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;" ng-class="{ 'has-error' : invoiceForm.txtTitle.$invalid && (invoiceForm.txtTitle.$dirty || submitted)}">
                                                    <input type="text" placeholder="Enter Title" style="margin-left:7px;" name="txtTitle" id="txtTitle" ng-model="title" ng-pattern="alphaFormat" typeahead="txtTitle.id as txtTitle.name for txtTitle in invoiceData.titles | filter:$viewValue | limitTo:8" typeahead-input-formatter="formatLabelET($model)" class="form-control txtbdr" maxlength="20">
                                                    <input type="hidden" ng-model="titleid" value="{{title| json}}" />
                                                </div>

                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12"> </label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;" ng-class="{ 'has-error' : invoiceForm.txtLegalEntityName.$invalid && (invoiceForm.txtLegalEntityName.$dirty || submitted)}">
                                                    <sup class="colspadd">*</sup> <input type="text" style="margin-left:7px;" name="txtLegalEntityName" id="txtLegalEntityName" ng-model="legalEntityName" ng-pattern="alphaCommaFStop" typeahead="txtLegalEntityName.id as txtLegalEntityName.name for txtLegalEntityName in invoiceData.lEntities | filter:$viewValue | limitTo:8" typeahead-input-formatter="formatLabelLENT($model)" placeholder="Legal Entity Name" class="form-control txtbdr" maxlength="40" ng-required="true">
                                                    <input type="hidden" ng-model="legalEntityNameid" value="{{legalEntityName| json}}" />
                                                </div>
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;" ng-class="{ 'has-error' : invoiceForm.txtDepartment.$invalid && (invoiceForm.txtDepartment.$dirty || submitted)}">
                                                    <input type="text" placeholder="Industry"  style="margin-left:7px;" name="txtDepartment" id="txtDepartment" ng-model="department" ng-pattern="alphaFormat" class="form-control txtbdr" maxlength="20" typeahead="txtDepartment.id as txtDepartment.name for txtDepartment in invoiceData.industries | filter:$viewValue | limitTo:8" typeahead-input-formatter="formatLabelI($model)">
                                                    <input type="hidden" ng-model="deptid" value="{{department| json}}" />
                                                    <!--<input class="col-md-3 col-sm-12 col-xs-12 form-group"  type="text" ng-model="selected" placeholder="choose state" typeahead="industries.id as industries.name for industries in industries | filter:$viewValue | limitTo:8" typeahead-input-formatter="formatLabel($model)">-->
                                                </div>

                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12"> </label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;" ng-class="{ 'has-error' : invoiceForm.ddlCountry.$invalid && (invoiceForm.ddlCountry.$dirty || submitted)}">
                                                   <sup class="colspadd">*</sup> <select class="form-control txtbdr" style="margin-left:7px;" id="ddlCountry" name="ddlCountry" ng-model="country" ng-options="ddlCountry.Name for ddlCountry in CountryList track by ddlCountry.CountryId" ng-required="true">

                                                        <option value="">Country</option>
                                                    </select>


                                                </div>

                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12"> </label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;" ng-class="{ 'has-error' : invoiceForm.txtPhoneNo.$invalid && (invoiceForm.txtPhoneNo.$dirty || submitted)}">
                                                    <input type="text" name="txtPhoneNo" id="txtPhoneNo" style="margin-left:7px;" ng-model="phone" ng-pattern="phoneFormat" typeahead="txtPhoneNo.id as txtPhoneNo.name for txtPhoneNo in invoiceData.phones | filter:$viewValue | limitTo:8" typeahead-input-formatter="formatLabelPN($model)" maxlength="15" placeholder="Phone (111) 111-1111" class="form-control txtbdr">
                                                    <input type="hidden" ng-model="phoneid" value="{{phone| json}}" />
                                                </div>

                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12"> </label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;" ng-class="{ 'has-error' : invoiceForm.txtEmailId.$invalid && (invoiceForm.txtEmailId.$dirty || submitted)}">
                                                   <sup class="colspadd">*</sup> <input type="text"  style="margin-left:7px;" name="txtEmailId" id="txtEmailId" placeholder="Email Address" ng-model="email" ng-pattern="emailFormat" typeahead="txtEmailId.id as txtEmailId.name for txtEmailId in invoiceData.emails | filter:$viewValue | limitTo:8" typeahead-input-formatter="formatLabelEID($model)" class="form-control txtbdr" ng-required="true">
                                                    <input type="hidden" ng-model="emailid" value="{{email| json}}" />
                                                </div>

                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Invoice No. </label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;" ng-class="{ 'has-error' : invoiceForm.txtInvoice.$invalid && (invoiceForm.txtInvoice.$dirty || submitted)}">
                                                    <sup class="colspadd">*</sup> <input type="text" name="txtInvoice"  style="margin-left:7px;" id="txtInvoice" placeholder="Invoice No" ng-model="invoice" typeahead="txtInvoice.id as txtInvoice.name for txtInvoice in invoiceData.invoices | filter:$viewValue | limitTo:8" typeahead-input-formatter="formatLabelIN($model)" class="form-control txtbdr" ng-required="true">
                                                    <input type="hidden" ng-model="invoiceid" value="{{invoice| json}}" />
                                                </div>

                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Invoice Date</label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;">
                                                    <input type="text" name="date"  style="margin-left:7px;" placeholder="mm/dd/yyyy" class="form-control txtbdrr" ng-click="showinvcalendar($event)" uib-datepicker-popup="{{dateformat}}" min-date="mindate" max-date="maxdate" ng-model="invDate" is-open="showdp1" style="cursor:pointer;">
                                                    <!--<input type="hidden" ng-model="invDateid" value="{{invDate| json}}" />-->
                                                    <!--<input type="hidden" name="invDate" id="invDate" ng-model="invoicedate" />-->
                                                </div>
                                                <!--<img ng-src="images/calen.jpg" style="margin-left:10px;margin-top:7px;float:left;" alt="calender" title="" />-->


                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Invoice Amount </label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                            
                                             <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;" ng-class="{ 'has-error' : invoiceForm.ddlCurrency.$invalid && (invoiceForm.ddlCurrency.$dirty || submitted)}">
                                                    <sup class="colspadd">*</sup> <select name="ddlCurrency" id="ddlCurrency" style="margin-left:7px;" ng-model="currency" ng-options="ddlCurrency.Name for ddlCurrency in CurrencyList track by ddlCurrency.CurrencyId" class="form-control txtbdr" ng-required="true">
                                                        <option value="">Select Currency</option>
                                                    </select>
                                                    <!--<select class="form-control txtbdr">
                                                        <option>Select Currency</option>
                                                    </select>-->
                                                </div>
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;" ng-class="{ 'has-error' : invoiceForm.ddlCurrency.$invalid && (invoiceForm.ddlCurrency.$dirty || submitted)}">
                                                    <sup class="colspadd">*</sup> <input type="text" name="txtinvamount" style="margin-left:7px;" id="txtinvamount" ng-model="invoiceamount" placeholder="0.00" class="form-control txtbdr" typeahead="txtinvamount.id as txtinvamount.name for txtinvamount in invoiceData.invoiceamounts | filter:$viewValue | limitTo:8" typeahead-input-formatter="formatLabelIA($model)" ng-blur="calculateNetAmount()" ng-required="true">
                                                    <input type="hidden" ng-model="invoiceamountid" value="{{invoiceamount| json}}" />
                                                </div>
                                            
                                            
                                              

                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Due Date</label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;">
                                                    <input type="text" name="date" style="margin-left:7px;" placeholder="mm/dd/yyyy" class="form-control txtbdrr" ng-click="showduecalendar($event)" uib-datepicker-popup="{{dateformat}}" min-date="mindate" max-date="maxdate" ng-model="dueDate" is-open="showdp" style="cursor:pointer;">
                                                    <!--<input type="hidden" name="dueDate" id="dueDate" ng-model="hdnDueDate" />-->
                                                </div>
                                                <!--<img ng-src="images/calen.jpg" style="margin-left:10px;margin-top:7px;float:left;" alt="calender" title="" />-->


                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Upload Invoice</label>
                                            <div id="upload" class="col-md-9 col-sm-9 col-xs-11">

                                                <!--<label class="btn btn-default btn-file">
                                                    Browse <input type="file" style="display: none;">
                                                </label>
                                                <input type="file" value="browse" />-->
                                                <!--<div>
                                                    <a class="button" id="pickfiles" href="#" style="position: relative; z-index: 0;">Select</a>
                                                    <a class="button" id="uploadfiles" href="#">Upload</a>
                                                </div>
                                                <div class="bootstrap-filestyle input-group">
                                                <span class="group-span-filestyle " tabindex="0">
                                                    <label for="filestyle-0" class="btn btn-default ">
                                                    <span class="buttonText">Browse</span></label></span></div>-->
                                                <!--<input type="file" class="btn btn-default source" value="Browse">-->
                                                <div class="upload-form" id="uploader">

                                                    <!-- Select & Upload Button -->
                                                    <div class="col-md-4 col-sm-4 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;">
                                                        <div style="width:100px;margin-top:-15px;margin-left: 7px;">
                                                            <a class="button btn btn-default" id="pickfiles" href="#" style="text-transform:capitalize">Browse</a>
                                                            <!--<a class="button btn btn-default" id="uploadfiles" href="#">Upload</a>-->
                                                        </div>
                                                    </div>
                                                    <!-- File List -->
                                                    <div id="upldicon" class="col-md-4 col-sm-4 col-xs-12 form-group">
                                                        <div id="filelist" class="cb"></div>
                                                    </div>


                                                </div>


                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Credit Note</label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                                <div class="col-md-2 col-sm-2 col-xs-12 form-group " style="padding-right:2px;padding-left:2px;">
                                                    <div class="form-switcher form-switcher-lg form-switcher-sm-phone" style="margin-left:7px;">
                                                        <input type="checkbox" name="switcher-lg" id="switcher-lg" ng-model="confirmed" ng-change="change()">
                                                        <label class="switcher" for="switcher-lg"></label>
                                                    </div>

                                                    <!--<div class="col-xs-6 frtr">
                                                        <label class="switch">
                                                            <input type="checkbox" ng-model="confirmed" ng-change="change()">
                                                            <div class="slider round"></div>
                                                        </label>
                                                    </div>-->
                                                    <!--<label class="switch">
                                                        <input type="checkbox">
                                                        <div class="slider round"></div>
                                                    </label>-->




                                                </div>

                                                <div class="col-md-5 col-sm-5 col-xs-12 form-group frtr" ng-show="vCreditNote">
                                                    <div id="upload" class="col-md-9 col-sm-9 col-xs-11">

                                                        <!--<label class="btn btn-default btn-file">
                                                            Browse <input type="file" style="display: none;">
                                                        </label>
                                                        <input type="file" value="browse" />-->
                                                        <!--<div>
                                                            <a class="button" id="pickfiles" href="#" style="position: relative; z-index: 0;">Select</a>
                                                            <a class="button" id="uploadfiles" href="#">Upload</a>
                                                        </div>
                                                        <div class="bootstrap-filestyle input-group">
                                                        <span class="group-span-filestyle " tabindex="0">
                                                            <label for="filestyle-0" class="btn btn-default ">
                                                            <span class="buttonText">Browse</span></label></span></div>-->
                                                        <!--<input type="file" class="btn btn-default source" value="Browse">-->
                                                        <!--<div class="upload-form" id="uploader">

                                                             Select & Upload Button
                                                            <div class="col-md-4 col-sm-4 col-xs-12 form-group">
                                                                <div style="width:150px;margin-top:-15px;margin-left: 10px;">
                                                                    <a class="button btn btn-default" id="pickfiles" href="#" style="text-transform:capitalize;width:150px;">Upload Credit Note</a>


                                                                </div>
                                                            </div>

                                                            <div id="upldicon" class="col-md-4 col-sm-4 col-xs-12 form-group">
                                                                <div id="filelist" class="cb"></div>
                                                            </div>


                                                        </div>-->
                                                        <div class="file-wrapper">
                                                            <input type="file" />
                                                            <span class="button">Choose a file</span>
                                                        </div>

                                                    </div>
                                                </div>


                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm" ng-show="vCreditNote">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Credit Note Amount </label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group" style="padding-right:2px;padding-left:2px;">
                                                    <select name="ddlCNCurrency" id="ddlCNCurrency" style="margin-left:7px;" ng-model="cnCurrency" ng-options="ddlCNCurrency.Name for ddlCNCurrency in CurrencyList track by ddlCNCurrency.CurrencyId" class="form-control txtbdr">
                                                        <option value="">Select Currency</option>
                                                    </select>

                                                    <!--<select class="form-control txtbdr">
                                                        <option>Select Currency</option>
                                                    </select>-->
                                                </div>
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group">
                                                    <input type="text" name="txtcnamount" style="margin-left:7px;" id="txtcnamount" ng-model="cnamount" placeholder="0.00" typeahead="txtcnamount.id as txtcnamount.name for txtcnamount in invoiceData.cnamounts | filter:$viewValue | limitTo:8" typeahead-input-formatter="formatLabelCNA($model)" class="form-control txtbdr" ng-blur="calculateNetAmount()">
                                                    <input type="hidden" ng-model="cnamountid" value="{{cnamount| json}}" />
                                                </div>

                                            </div>
                                        </div>
                                        <div class="form-group mrgbttm">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Net Amount </label>
                                            <div class="col-md-9 col-sm-9 col-xs-11">
                                                <div class="col-md-3 col-sm-12 col-xs-12 form-group amttp" style="padding-right:2px;padding-left:2px;">
                                                    <span style="margin-left:7px;" class="bspattlamt" ng-init="netAmt=0">&#36;{{netAmt}}</span>
                                                </div>


                                            </div>
                                        </div>
                                        <div class="ln_solid"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                    
                                    <div class="mrgbttmtx">
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 righttext">Invotiate Type </label>
                                            <div class="col-md-9 col-sm-9 col-xs-11 selecbtn" style="margin-bottom:6px;" ng-init="pType =  1">
                                                <div class="btn-group">
                                                    <span class="button-checkbox">
                                                        <button type="button" class="active btnn btn-selected btnround" data-color="default" ng-click="pType = 1"><i class="fa fa-check"></i> Early Discount</button>
                                                        <input type="checkbox" class="hidden">
                                                    </span>
                                                    <span class="button-checkbox">
                                                        <button type="button" class="btnn btn-selected btnround" data-color="default" ng-click="pType = 2"><i class="fa fa-check"></i> Late Premium</button>
                                                        <input type="checkbox" class="hidden">
                                                    </span>
                                                    <span class="button-checkbox">
                                                        <button type="button" class="btnn btn-selected btnround" data-color="default" ng-click="pType = 3"><i class="fa fa-check"></i> Present & Collect</button>
                                                        <input type="checkbox" class="hidden">
                                                    </span>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    
                                    </form>
                                    <div class="clearfix"></div>
                                    <div class="clearfix"></div>
                                    <div class="col-xs-12"></div>
                                    <div class="clearfix"></div>
                                     <form class="form-horizontal form-label-left" name="pcForm" novalidate>
                                    <div class="col-xs-12 pdrilft" ng-show="pType==3">
                                        <h3 class="h3sz">Present & Collect </h3>

                                        <div class="page-title prdtopbg">

                                            <div class="title_left pdrilft">
                                                <h3 class="h3szp" style="margin:9px 0 0 -8px;padding:0px 0px;">Invoice No <strong>IN356783</strong></h3>
                                            </div>

                                            <div class="title_right mrgbtm">
                                                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search mrgbtm">

                                                    <span>Total Amount Due <strong>&#36;{{netAmt}}</strong></span>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="col-xs-12"></div>
                                        <div class="clearfix"></div>
                                        <div class="col-xs-12 yourBtn">

                                            <div class="x_content">
                                                <div class="table-responsive">
                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th style="white-space:nowrap;">Milestone <button type="submit" class="asignup" style="background:#008ECD;color:#fff;float:right;outline:none;border:0px;">+ Add</button></th>
                                                                <th style="white-space:nowrap;">Due Date</th>
                                                                <th>Split (%)</th>
                                                                <th>Amount Due</th>
                                                                <th>Follow up Reminder</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th scope="row" style="padding:8px 8px 5px 0;" ng-class="{ 'has-error' : pcForm.mile1.$invalid && (pcForm.mile1.$dirty || submittedpc)}">
                                                                <sup class="colspadd">*</sup> <input type="text" name="mile1" id="mile1" placeholder="Milestone 1" style="padding:0px 2px;" class="form-control txtbdr" ng-model="milestone1" ng-required="true"></th>
                                                                <td style="padding:8px 8px 5px 0;"><input type="text" name="date" placeholder="mm/dd/yyyy" style="margin-left:7px;padding:0px 2px;text-indent:60px;direction:rtl;text-align:left;cursor:pointer;" class="date-picker form-control txtbdrr" ng-click="showduecalendar1($event)" uib-datepicker-popup="{{dateformat}}" min-date="mindate" max-date="maxdate" ng-model="dueDate1" is-open="showdp2"></td>
                                                                <td style="padding:8px 8px 5px 0;" ng-class="{ 'has-error' : pcForm.split1.$invalid && (pcForm.split1.$dirty || submittedpc)}">
                                                                <sup class="colspadd">*</sup> <input type="text" name="split1" id="split1" placeholder="100" style="padding:0px 2px;" class="form-control txtbdr" ng-model="split1" ng-required="true"></td>
                                                                <td style="padding:8px 8px 5px 0;" ng-class="{ 'has-error' : pcForm.amtdue1.$invalid && (pcForm.amtdue1.$dirty || submittedpc)}">
                                                                <sup class="colspadd">*</sup> <input type="text" name="amtdue1" id="amtdue1" placeholder="$1000,000" style="margin-left:7px;padding:0px 2px;" class="form-control txtbdr" ng-model="amountdue1" ng-required="true"></td>
                                                                <td style="padding:8px 8px 5px 0;">
                                                                    <select class="form-control txtbdr" style="padding:6px 0px;">
                                                                        <option>Follow up Reminder</option>
                                                                        <option>2 days</option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row" style="padding:8px 8px 5px 0;">
                                                                <input type="text" name="mile2" id="mile2" style="padding:0px 2px;margin-left:7px;" placeholder="Milestone 2" class="form-control txtbdr" ng-model="milestone2"></th>
                                                                <td style="padding:8px 8px 5px 0;"><input type="text" name="date" style="margin-left:7px;padding:0px 2px;text-indent:60px;direction:rtl;text-align:left;cursor:pointer;" placeholder="mm/dd/yyyy" class="form-control txtbdrr" ng-click="showduecalendar2($event)" uib-datepicker-popup="{{dateformat}}" min-date="mindate" max-date="maxdate" ng-model="dueDate2" is-open="showdp3"></td>
                                                                <td style="padding:8px 8px 5px 0;">
                                                                <input type="text" name="split2" id="split2" placeholder="100" style="padding:0px 2px;margin-left:7px;" class="form-control txtbdr" ng-model="split2"></td>
                                                                <td style="padding:8px 8px 5px 0;">
                                                                <input type="text" name="amtdue2" id="amtdue2" placeholder="$1000,000" style="padding:0px 2px;margin-left:7px;" class="form-control txtbdr" ng-model="amountdue2"></td>
                                                                <td style="padding:8px 8px 5px 0;">
                                                                    <select class="form-control txtbdr" style="padding:6px 0px;">
                                                                        <option>Follow up Reminder</option>
                                                                        <option>2 days</option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row" style="padding:8px 8px 5px 0;" >
                                                                <input type="text" name="mile3" id="mile3" placeholder="Milestone 3" style="padding:0px 2px;margin-left:7px;" class="form-control txtbdr" ng-model="milestone3"></th>
                                                                <td style="padding:8px 8px 5px 0;"><input type="text" placeholder="mm/dd/yyyy" style="margin-left:7px;padding:0px 2px;text-indent:60px;direction:rtl;text-align:left;cursor:pointer;" class="form-control txtbdrr" ng-click="showduecalendar3($event)" uib-datepicker-popup="{{dateformat}}" min-date="mindate" max-date="maxdate" ng-model="dueDate3" is-open="showdp4"></td>
                                                                <td style="padding:8px 8px 5px 0;">
                                                                <input type="text" name="split3" id="split3" placeholder="100" style="padding:0px 2px;margin-left:7px;" class="form-control txtbdr" ng-model="split2"></td>
                                                                <td style="padding:8px 8px 5px 0;">
                                                                <input type="text" name="amtdue3" id="amtdue3" placeholder="$1000,000" style="padding:0px 2px;margin-left:7px;" class="form-control txtbdr" ng-model="amountdue3"></td>
                                                                <td style="padding:8px 8px 5px 0;">
                                                                    <select class="form-control txtbdr" style="padding:6px 0px;">
                                                                        <option>Follow up Reminder</option>
                                                                        <option>2 days</option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="col-xs-12" style="visibility:hidden;">

                                                <button class="btn btn-default pull-right" style="margin-right: 5px;"><i class="fa fa-archive"></i> Archive</button>
                                                <button class="btn btn-default pull-right"><i class="fa fa-download"></i> Download</button>
                                                <button class="btn btn-default pull-right" onclick="window.print();"><i class="fa fa-print"></i> Print</button>

                                            </div>
                                        </div>
                                        <div class="col-xs-12"></div>
                                        <div class="clearfix"></div>
                                        <div class="col-xs-12 btnspot">
                                            <button type="button" ng-click="saveForm();" class="btn btn-success bttnfon" style="padding:6px 30px;" data-color="success">Invotiate</button>
                                        </div>

                                    </div>
                                    </form>
                                    <div class="clearfix"></div>
                                    <div class="col-xs-12 clrdvs"></div>
                                    <!--POPUP Parts starts here-->
                                    <form class="form-horizontal form-label-left" name="earlyForm" novalidate>
                                    <div class="col-xs-12" ng-show="pType==1">
                                        <div class="form-group mrgbttm pdrilft">
                                            <div class="control-label col-md-3 col-sm-3 col-xs-12 ">
                                                <div class="col-xs-12 thuimg ">
                                                    <div class="col-xs-12 pdngs">
                                                        <div class="thumdv" style="z-index:-9999;">
                                                            <img src="<c:url value="//resources/images/thumbpdf.jpg"/>"/>
                                                        </div>
                                                        <div class="thumdv1">
                                                            <div style="width:30px;height:30px;float:right;z-index:99999;margin-top:-35px;">
                                                                <a href="Javascript:void(0);" data-target="#imgzoom" data-toggle="modal"><img ng-src="<c:url value="//resources/images/basic1-016_search_zoom_find-512.png"/>" data-toggle="tooltip" data-placement="left" title="Click to zoom" width="30" height="30" /></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12">
                                                        <div class="pdng invtxt">Invoive No: IN343043</div>
                                                        <div class="pdng invtxt1">To: Wilson &amp; Wilson Inc.</div>
                                                    </div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                </div>
                                                <div class="clearfix"></div>

                                                <div class="col-xs-12 thuimgn" style="padding-left:0px;padding-right:0px;">
                                                    <div class="col-xs-12"><div class="headh1">Maximum Acceptable Offer</div></div>
                                                    <div class="col-xs-12 clrdvsn"></div>
                                                    <div style="display:inline-block;"></div>
                                                    <div class="clear"></div>
                                                    <div>
                                                        <div class="radiusper">
                                                            {{value}}%<br />
                                                            <span class="radiusper1">Discount</span>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12 mxdisc">
                                                        <span class="radiusper1">MAX Discount</span>
                                                        <span class="radiuspern"><a href=""><img src="<c:url value="//resources/images/icon-info-grey.png"/>" data-toggle="tooltip" data-placement="top" title="info" width="20" height="20" /></a></span>
                                                    </div>
                                                    <div class="col-xs-12 clrdvsn"></div>
                                                    <div class="col-xs-12"><input type="range" name="range" ng-model="value" min="{{min}}" max="{{max}}" step="{{stp}}"></div><!--ng-change="setStep()"-->
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12"></div>
                                                    <div class="clearfix"></div>
                                                    <div class="valueb">

                                                        <div class="col-xs-6 forter mxdisc">Starting Offer</div>
                                                        <div class="col-xs-6"><input type="text" ng-model="value" /><input type="submit" value="Go" /></div>
                                                    </div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="valuebn">
                                                        <div class="col-xs-5 fortern mxdisc">Pay me by:</div>
                                                        <div class="col-xs-7"><input type="text" name="date" ng-click="erlydis($event)" uib-datepicker-popup="MM/dd/yyyy" min-date="mindate" max-date="maxdate" ng-model="earlydisc" is-open="showdp5" value="" /><!--<a href="#"><img src="images/cal.jpg" data-toggle="tooltip" data-placement="left" title="Click for calender" /></a>--></div>
                                                    </div>
                                                    <div class="col-xs-12"></div>
                                                    <div class="clearfix"></div>

                                                </div>
                                            </div>

                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <div class="col-xs-12 clrdvs"></div>
                                                <div class="col-xs-12">
                                                    <span class="offtrd">Offer Trend</span>
                                                    <div class="conty">
                                                        <select class="">
                                                            <option>Country</option>
                                                        </select>
                                                        <img src="<c:url value="//resources/images/info.png"/>" data-toggle="tooltip" data-placement="top" title="info" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 clrdvs"></div>
                                                <div class="col-xs-12">
                                                    <div id="earlychart">
                                                        <!--<div id="graphDiv2"><canvas width="450" height="150"></canvas></div>-->
                                                    </div>
                                                    <!--<canvas id="canvas" style="width:100%;height:345px;"></canvas>-->
                                                    <!--<div id="chartContainer" style="height: 328px; width: 100%;"></div>-->
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12 tnvlu">
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>3.5%</strong></div>
                                                            <div><small>Discount<br /> Offered</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>$ 2,800</strong></div>
                                                            <div><small>Invoice Amount</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>60</strong></div>
                                                            <div><small>Days Orignal Terms</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>26%</strong></div>
                                                            <div><small>Annualized<br /> Discount</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>4%</strong></div>
                                                            <div><small>Max Acceptable <br />Discount</small></div>
                                                        </div>
                                                        <div class="col-xs-12 clrdvs"></div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>$ 800</strong></div>
                                                            <div><small>Discount<br /> Amount</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>$ 2,000</strong></div>
                                                            <div><small>Net Amount</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>56</strong></div>
                                                            <div><small>Days <br />Accelerated</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>30%</strong></div>
                                                            <div><small>Average Cost <br />of Capital</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>$ 1,800</strong></div>
                                                            <div><small>Max Acceptable <br />Payment</small></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12 pdnon">
                                                        <div class="control-label col-md-5 col-sm-5 col-xs-12 pdnon dvbtalgn" style="text-align:left;"><span class="offtrd">Offer Validity:  </span><span><input type="text" value="2" class="dysbox" /></span><span class="offtrd">Days</span></div>
                                                        <div class="col-md-7 col-sm-7 col-xs-11 dvbtalg pdnon">
                                                            <button type="button" class="btn btn-info bttnfon" data-color="info">Collaborate</button>
                                                            <button type="button" class="btn btn-info bttnfon" data-color="info">Save for Later</button>
                                                            <button type="button" ng-click="SubmitFormWithEarly();" class="btn btn-success bttnfon" data-color="success">Invotiate</button>

                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    </form>
                                    <!--POPUP Parts Ends here-->
                                    <div class="clearfix"></div>
                                    <div class="col-xs-12 clrdvs"></div>
                                    <div class="col-xs-12 clrdvs"></div>
                                   <!--POPUP Parts starts here-->
                                    <form class="form-horizontal form-label-left" name="lateForm" novalidate>
                                    <div class="col-xs-12" ng-show="pType==2">
                                        <div class="form-group mrgbttm pdrilft">
                                            <div class="control-label col-md-3 col-sm-3 col-xs-12 ">
                                                <div class="col-xs-12 thuimg ">
                                                    <div class="col-xs-12 pdngs">
                                                        <div class="thumdv" style="z-index:-9999;">
                                                            <img src="<c:url value="//resources/images/thumbpdf.jpg"/>" />
                                                        </div>
                                                        <div class="thumdv1">
                                                            <div style="width:30px;height:30px;float:right;z-index:99999;margin-top:-35px;">
                                                                <a href="Javascript:void(0);" data-target="#imglatezoom" data-toggle="modal"><img src="<c:url value="//resources/images/basic1-016_search_zoom_find-512.png"/>" width="30" height="30" data-toggle="tooltip" data-placement="left" title="Click to zoom" /></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12">
                                                        <div class="pdng invtxt">Invoive No: IN343043</div>
                                                        <div class="pdng invtxt1">To: Wilson & Wilson Inc.</div>
                                                    </div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                </div>
                                                <div class="clearfix"></div>

                                                <div class="col-xs-12 thuimgn" style="padding-left:0px;padding-right:0px;">
                                                    <div class="col-xs-12"><div class="headh1">Maximum Acceptable Offer</div></div>
                                                    <div class="col-xs-12 clrdvsn"></div>
                                                    <div style="display: inline-block;"></div>
                                                    <div>
                                                        <div class="clearfix"></div>
                                                        <div class="radiusperltpre ">
                                                            {{value}}%<br />
                                                            <span class="radiusper1">Premium</span>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12 mxdisc">
                                                        <span class="radiusper1">MAX Premium</span>
                                                        <span class="radiuspern"><a href="Javascript:void(0)"><img ng-src="<c:url value="//resources/images/icon-info-grey.png"/>" data-toggle="tooltip" data-placement="top" title="info" width="20" height="20" /></a></span>
                                                    </div>
                                                    <div class="col-xs-12 clrdvsn"></div>
                                                    <div class="col-xs-12"><input type="range" name="range" ng-model="value" min="{{min}}" max="{{max}}" step="{{stp}}"></div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12"></div>
                                                    <div class="clearfix"></div>
                                                    <div class="valueb">
                                                        <div class="col-xs-6 forter mxdisc">Starting Offer</div>
                                                        <div class="col-xs-6"><input type="text" ng-model="value" /><input type="submit" value="Go" /></div>
                                                    </div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="valuebn">
                                                        <div class="col-xs-5 fortern mxdisc">Pay me by:</div>
                                                        <div class="col-xs-7"><input type="text" name="date" ng-click="letpreu($event)" uib-datepicker-popup="MM/dd/yyyy" min-date="mindate" max-date="maxdate" ng-model="lateprem" is-open="showdp6" value="" /><!--<a href="#"><img src="images/cal.jpg" data-toggle="tooltip" data-placement="left" title="Click for calender" /></a>--></div>
                                                    </div>
                                                    <div class="col-xs-12"></div>
                                                    <div class="clearfix"></div>

                                                </div>
                                            </div>

                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <div class="col-xs-12 clrdvs"></div>
                                                <div class="col-xs-12">
                                                    <span class="offtrd">Offer Trend</span>
                                                    <div class="conty">
                                                        <select class="">
                                                            <option>Country</option>
                                                        </select>
                                                        <img src="<c:url value="//resources/images/info.png"/>" data-toggle="tooltip" data-placement="top" title="info" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 clrdvs"></div>
                                                <div class="col-xs-12">
                                                    <div id="latechart">
                                                        <!--<div id="graphDiv2"><canvas width="450" height="150"></canvas></div>-->
                                                    </div>
                                                    <!--<canvas id="canvasnew" style="width:100%;height:345px;"></canvas>-->
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12 tnvlu">
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>3.5%</strong></div>
                                                            <div><small>Premium<br /> Offered</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>$ 2,800</strong></div>
                                                            <div><small>Invoice Amount</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>60</strong></div>
                                                            <div><small>Days Orignal Terms</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>26%</strong></div>
                                                            <div><small>Annualized<br /> Premium</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>4%</strong></div>
                                                            <div><small>Max Acceptable <br />Premium</small></div>
                                                        </div>
                                                        <div class="col-xs-12 clrdvs"></div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>$ 800</strong></div>
                                                            <div><small>Premium<br /> Amount</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>$ 2,000</strong></div>
                                                            <div><small>Offer Amount</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>56</strong></div>
                                                            <div><small>Days <br />Extended</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>30%</strong></div>
                                                            <div><small>Average Cost <br />of Capital</small></div>
                                                        </div>
                                                        <div class="col-md-18 col-sm-18 col-xs-12 bspadi">
                                                            <div><strong>$ 1,800</strong></div>
                                                            <div><small>Max Acceptable <br />Payment</small></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                    <div class="col-xs-12 pdnon">
                                                        <div class="control-label col-md-5 col-sm-5 col-xs-12 pdnon dvbtalgn" style="text-align:left;"><span class="offtrd">Offer Validity:  </span><span><input type="text" value="2" class="dysbox" /></span><span class="offtrd">Days</span></div>
                                                        <div class="col-md-7 col-sm-7 col-xs-11 dvbtalg pdnon">
                                                            <button type="button" class="btn btn-info bttnfon" data-color="info">Collaborate</button>
                                                            <button type="button" class="btn btn-info bttnfon" data-color="info">Save for Later</button>
                                                            <button type="button" ng-click="SubmitFormWithLate();" class="btn btn-success bttnfon" data-color="success">Invotiate</button>

                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 clrdvs"></div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    
                                    </form>
                                    <!--POPUP Parts Ends here-->
                                    <div class="clearfix"></div>
                                    <!--<div class="col-xs-12 clrdvs"></div>-->
                                    <!--<div class="col-xs-12 clrdvs"></div>
                                    <div class="col-xs-12 clrdvs"></div>
                                    <div class="col-xs-12 clrdvs"></div>-->

                                </div>
                            </div>
                        </div>
                        <!-- /page content -->

                    </div>
                <!-- </form> -->
            </div>
        </div>
    </div>
    <!-- Modal Pop Up for image zoom start here-->

    <div id="imgzoom" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                    <h4 class="modal-title"><!--Add Legal Entity--></h4>
                </div>
                <div class="modal-body">
                    <div style="clear:both;"></div>
                    <div class="form-group">
                        <img ng-src="<c:url value="//resources/images/zooom_png.png"/>" />
                    </div>

                    <div style="clear:both;"></div>

                </div>

            </div>
        </div>
    </div>
    <div id="imglatezoom" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                    <h4 class="modal-title"><!--Add Legal Entity--></h4>
                </div>
                <div class="modal-body">
                    <div style="clear:both;"></div>
                    <div class="form-group">
                        <img ng-src="<c:url value="//resources/images/zooom_png.png"/>" />
                    </div>

                    <div style="clear:both;"></div>

                </div>

            </div>
        </div>
    </div>

    <div id="imglatezoom" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                    <h4 class="modal-title"><!--Add Legal Entity--></h4>
                </div>
                <div class="modal-body">
                    <div style="clear:both;"></div>
                    <div class="form-group">
                        <img ng-src="<c:url value="//resources/images/zooom_png.png"/>" />
                    </div>

                    <div style="clear:both;"></div>

                </div>

            </div>
        </div>
    </div>
    <!-- Modal Pop Up for image zoom ends here-->

    <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="<c:url value="//resources/js/tcal.js" /> " ></script>
    <script src="<c:url value="//resources/js/angular.js" /> " ></script>
    <script src="<c:url value="//resources/js/plupload.full.js" /> " ></script>
    <script src="<c:url value="//resources/js/jquery-1.11.1.min.js" /> " ></script>
    <script src="<c:url value="//resources/js/createinvoice.js" /> " ></script>
    <script src="<c:url value="//resources/scripts/jquery.min.js" /> " ></script>
    <script src="<c:url value="//resources/scripts/jquery-ui.js" /> " ></script>
    
    <!--Datepicker UI js-->
    <!--<script src="scripts/jquery-ui.js"></script>-->
    <!-- Bootstrap -->
	<script src="<c:url value="//resources/scripts/bootstrap.min.js" /> " ></script>
    <script src="<c:url value="//resources/scripts/ui-bootstrap-tpls-0.14.3.js" /> " ></script>
    <script src="<c:url value="//resources/scripts/custom.min.js" />"></script>


    <script src="<c:url value="//resources/chart/amcharts.js" /> " ></script>
    <script src="<c:url value="//resources/chart/light.js" /> " ></script>
    <script src="<c:url value="//resources/chart/serial.js" />"></script>
    <script src="<c:url value="//resources/js/jquery-progressbar.min.js" />"></script>
<!--amchart for demo-->

	<script>
        $(".button-checkbox > .btnn").click(function () {
            $(".button-checkbox > .btnn").removeClass("active");
            $(this).addClass("active");
        });
    </script>
    <script>
        var chart = AmCharts.makeChart("earlychart", {
            "type": "serial",
            "addClassNames": true,
            "theme": "light",
            "autoMargins": false,
            "marginLeft": 30,
            "marginRight": 8,
            "marginTop": 10,
            "marginBottom": 26,
            "balloon": {
                "adjustBorderColor": false,
                "horizontalPadding": 10,
                "verticalPadding": 8,
                "color": "#ffffff"
            },

            "dataProvider": [{
                "year": 2009,
                "income": 23.5,
                "expenses": 21.1
            }, {
                "year": 2010,
                "income": 26.2,
                "expenses": 30.5
            }, {
                "year": 2011,
                "income": 30.1,
                "expenses": 34.9
            }, {
                "year": 2012,
                "income": 29.5,
                "expenses": 31.1
            }, {
                "year": 2013,
                "income": 30.6,
                "expenses": 28.2,
                //"dashLengthLine": 5
            }, {
                "year": 2014,
                "income": 34.1,
                "expenses": 32.9,
                //"dashLengthColumn": 5,
                //"alpha": 0.2,
                //"additional": "(projection)"
            }],
            "valueAxes": [{
                "axisAlpha": 0,
                "position": "left"
            }],
            "startDuration": 1,
            "graphs": [{
                "alphaField": "alpha",
                "balloonText": "<span style='font-size:12px;'>[[title]] in [[category]]:<br><span style='font-size:20px;'>[[value]]</span> [[additional]]</span>",
                "fillAlphas": 1,
                "title": "Income",
                "type": "column",
                "valueField": "income",
                //"dashLengthField": "dashLengthColumn"
            }, {
                "id": "graph2",
                "balloonText": "<span style='font-size:12px;'>[[title]] in [[category]]:<br><span style='font-size:20px;'>[[value]]</span> [[additional]]</span>",
                "bullet": "round",
                "lineThickness": 3,
                "bulletSize": 7,
                "bulletBorderAlpha": 1,
                "bulletColor": "#FFFFFF",
                "useLineColorForBulletBorder": true,
                "bulletBorderThickness": 3,
                "fillAlphas": 0,
                "lineAlpha": 1,
                "title": "Expenses",
                "valueField": "expenses",
                //"dashLengthField": "dashLengthLine"
            }],
            "categoryField": "year",
            "categoryAxis": {
                "gridPosition": "start",
                "axisAlpha": 0,
                "tickLength": 0
            }
        });
        var chart1 = AmCharts.makeChart("latechart", {
            "type": "serial",
            "addClassNames": true,
            "theme": "light",
            "autoMargins": false,
            "marginLeft": 30,
            "marginRight": 8,
            "marginTop": 10,
            "marginBottom": 26,
            "balloon": {
                "adjustBorderColor": false,
                "horizontalPadding": 10,
                "verticalPadding": 8,
                "color": "#ffffff"
            },

            "dataProvider": [{
                "year": 2009,
                "income": 23.5,
                "expenses": 23.5
            }, {
                "year": 2010,
                "income": 26.2,
                "expenses": 26.2
            }, {
                "year": 2011,
                "income": 30.1,
                "expenses": 30.1
            }, {
                "year": 2012,
                "income": 29.5,
                "expenses": 29.5
            }, {
                "year": 2013,
                "income": 30.6,
                "expenses": 30.6,
                "dashLengthLine": 5
            }, {
                "year": 2014,
                "income": 34.1,
                "expenses": 34.1
                //"dashLengthColumn": 5,
                //"alpha": 0.2,
                //"additional": "(projection)"
            }],
            "valueAxes": [{
                "axisAlpha": 0,
                "position": "left"
            }],
            "startDuration": 1,
            "graphs": [{
                "alphaField": "alpha",
                "balloonText": "<span style='font-size:12px;'>[[title]] in [[category]]:<br><span style='font-size:20px;'>[[value]]</span> [[additional]]</span>",
                "fillAlphas": 1,
                "title": "Income",
                "type": "column",
                "valueField": "income",
                //"dashLengthField": "dashLengthColumn"
            }, {
                "id": "graph2",
                "balloonText": "<span style='font-size:12px;'>[[title]] in [[category]]:<br><span style='font-size:20px;'>[[value]]</span> [[additional]]</span>",
                "bullet": "round",
                "lineThickness": 3,
                "bulletSize": 7,
                "bulletBorderAlpha": 1,
                "bulletColor": "#FFFFFF",
                "useLineColorForBulletBorder": true,
                "bulletBorderThickness": 3,
                "fillAlphas": 0,
                "lineAlpha": 1,
                "title": "Expenses",
                "valueField": "expenses",
                //"dashLengthField": "dashLengthLine"
            }],
            "categoryField": "year",
            "categoryAxis": {
                "gridPosition": "start",
                "axisAlpha": 0,
                "tickLength": 0
            }

        });
    </script>
    <!--amchart for demo-->
    <!-- Chart.js -->
    <!--<script>
      var barChartData = {
            labels: ["", "", "", "", "", "", ""],
            datasets: [{
                type: 'bar',
                  label: "Visitor",
                    data: [200, 185, 590, 621, 250, 400, 95],
                    fill: false,
                    backgroundColor: '#d6d6d6',
                    borderColor: '#d6d6d6',
                    hoverBackgroundColor: '#CAEFFF',
                    hoverBorderColor: '#CAEFFF',
                    yAxisID: 'y-axis-1'
            }, {
                label: "Sales",
                    type:'line',
                    data: [51, 65, 40, 49, 60, 37, 40],
                    fill: false,
                    borderColor: '#6397aa',
                    backgroundColor: '#6397aa',
                    pointBorderColor: '#6397aa',
                    pointBackgroundColor: '#6397aa',
                    pointHoverBackgroundColor: '#6397aa',
                    pointHoverBorderColor: '#6397aa',
                    yAxisID: 'y-axis-2'
            } ]
        };

        window.onload = function() {
            var ctx = document.getElementById("canvas").getContext("2d");
            window.myBar = new Chart(ctx, {
                type: 'bar',
                data: barChartData,
                options: {
                responsive: true,
                tooltips: {
                  mode: 'label'
              },
              elements: {
                line: {
                    fill: false
                }
            },
              scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        display: false
                    },
                    labels: {
                        show: true,
                    }
                }],
                yAxes: [{
                    type: "linear",
                    display: true,
                    position: "left",
                    id: "y-axis-1",
                    gridLines:{
                        display: false
                    },
                    labels: {
                        show:true,

                    }
                }, {
                    type: "linear",
                    display: true,
                    position: "right",
                    id: "y-axis-2",
                    gridLines:{
                        display: false
                    },
                    labels: {
                        show:true,

                    }
                }]
            }
            }
            });
        };

        //window.onload = function () {
        //    var ctx = document.getElementById("canvasnew").getContext("2d");
        //    window.myBar = new Chart(ctx, {
        //        type: 'bar',
        //        data: barChartData,
        //        options: {
        //            responsive: true,
        //            tooltips: {
        //                mode: 'label'
        //            },
        //            elements: {
        //                line: {
        //                    fill: false
        //                }
        //            },
        //            scales: {
        //                xAxes: [{
        //                    display: true,
        //                    gridLines: {
        //                        display: false
        //                    },
        //                    labels: {
        //                        show: true,
        //                    }
        //                }],
        //                yAxes: [{
        //                    type: "linear",
        //                    display: true,
        //                    position: "left",
        //                    id: "y-axis-1",
        //                    gridLines: {
        //                        display: false
        //                    },
        //                    labels: {
        //                        show: true,

        //                    }
        //                }, {
        //                    type: "linear",
        //                    display: true,
        //                    position: "right",
        //                    id: "y-axis-2",
        //                    gridLines: {
        //                        display: false
        //                    },
        //                    labels: {
        //                        show: true,

        //                    }
        //                }]
        //            }
        //        }
        //    });
        //};


    </script>-->
    <!-- /Chart.js -->

    <script>
        // Upload Form
        $(function () {
            // Settings ////////////////////////////////////////////////
            var uploader = new plupload.Uploader({
                runtimes: 'html5,flash,silverlight', // Set runtimes, here it will use HTML5, if not supported will use flash, etc.
                browse_button: 'pickfiles', // The id on the select files button
                multi_selection: false, // Allow to select one file each time
                container: 'uploader', // The id of the upload form container
                max_file_size: '800kb', // Maximum file size allowed
                url: 'upload.php', // The url to the upload.php file
                flash_swf_url: 'js/plupload.flash.swf', // The url to thye flash file
                silverlight_xap_url: 'js/plupload.silverlight.xap', // The url to the silverlight file
                filters: [{ title: "Image files", extensions: "jpg,gif,png,pdf,xls,xlsx,jpeg" }] // Filter the files that will be showed on the select files window
            });

            // RUNTIME
            uploader.bind('Init', function (up, params) {
                $('#runtime').text(params.runtime);
            });

            // Start Upload ////////////////////////////////////////////
            // When the button with the id "#uploadfiles" is clicked the upload will start
            $('#uploadfiles').click(function (e) {
                uploader.start();
                e.preventDefault();
            });

            uploader.init(); // Initializes the Uploader instance and adds internal event listeners.

            // Selected Files //////////////////////////////////////////
            // When the user select a file it wiil append one div with the class "addedFile" and a unique id to the "#filelist" div.
            // This appended div will contain the file name and a remove button
            uploader.bind('FilesAdded', function (up, files) {
                $.each(files, function (i, file) {
                    $('#filelist').append('<div class="addedFile" id="' + file.id + '">' + file.name + '<a href="#" id="abc" class="removeFile"></a>' + '</div>');
                });
                up.refresh(); // Reposition Flash/Silverlight
            });

            // Error Alert /////////////////////////////////////////////
            // If an error occurs an alert window will popup with the error code and error message.
            // Ex: when a user adds a file with now allowed extension
            uploader.bind('Error', function (up, err) {
                alert("Error: " + err.code + ", Message: " + err.message + (err.file ? ", File: " + err.file.name : "") + "");
                up.refresh(); // Reposition Flash/Silverlight
            });

            // Remove file button //////////////////////////////////////
            // On click remove the file from the queue
            //$('a.removeFile').on('click', function(e) {
            //	uploader.removeFile(uploader.getFile(this.id));
            //	$('#'+this.id).remove();
            //	//e.preventDefault();
            //});
            $('.addedFile a').click(function () {
                /* if wanting to remove "is-hidden" from all others*/
                $('.removeFile').removeClass('removeFile').show();
                /* hide this one*/
                alert("hello");
                $(this).closest('.addedFile').addClass('removeFile').hide();

                return false;
            });

            // Progress bar ////////////////////////////////////////////
            // Add the progress bar when the upload starts
            // Append the tooltip with the current percentage
            uploader.bind('UploadProgress', function (up, file) {
                var progressBarValue = up.total.percent;
                $('#progressbar').fadeIn().progressbar({
                    value: progressBarValue
                });
                $('#progressbar .ui-progressbar-value').html('<span class="progressTooltip">' + up.total.percent + '%</span>');
            });

            // Close window after upload ///////////////////////////////
            // If checkbox is checked when the upload is complete it will close the window
            uploader.bind('UploadComplete', function () {
                if ($('.upload-form #checkbox').attr('checked')) {
                    $('.upload-form').fadeOut('slow');
                }
            });

            // Close window ////////////////////////////////////////////
            // When the close button is clicked close the window
            $('.upload-form .close').on('click', function (e) {
                $('.upload-form').fadeOut('slow');
                e.preventDefault();
            });

        }); // end of the upload form configuration

        // Check Box Styling
        $(document).ready(function () {

            var checkbox = $('.upload-form span.checkbox');

            // Check if JavaScript is enabled
            $('body').addClass('js');

            // Make the checkbox checked on load
            checkbox.addClass('checked').children('input').attr('checked', true);

            // Click function
            checkbox.on('click', function () {

                if ($(this).children('input').attr('checked')) {
                    $(this).children('input').attr('checked', false);
                    $(this).removeClass('checked');
                }

                else {
                    $(this).children('input').attr('checked', true);
                    $(this).addClass('checked');
                }

            });

        });


    </script>


    <script>
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>
    <script>
        $('#filelist').click(function () {
            $('#filelist').hide();


        })
        $("#pickfiles").click(function () {
            var clicked = $(this).attr('title');
            $("#filelist" + clicked).show(1000).siblings().hide(1000);
        });

        //$('#pickfiles').click(function () {
        //    $('#filelist').show('<div id="filelist" class="cb"></div>');
        //    e.preventDefault();


        //})

    </script>

    <script type="text/javascript">
var SITE = SITE || {};

SITE.fileInputs = function() {
  var $this = $(this),
      $val = $this.val(),
      valArray = $val.split('\\'),
      newVal = valArray[valArray.length-1],
      $button = $this.siblings('.button'),
      $fakeFile = $this.siblings('.file-holder');
  if(newVal !== '') {
    $button.text('File Chosen');
    if($fakeFile.length === 0) {
      $button.after('<span class="file-holder">' + newVal + '</span>');
    } else {
      $fakeFile.text(newVal);
    }
  }
};

$(document).ready(function() {
  $('.file-wrapper input[type=file]').bind('change focus click', SITE.fileInputs);
});
    </script>


</body>
</html>
