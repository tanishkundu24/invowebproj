<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored ="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    <link rel="stylesheet" href="<c:url value="//resources/vendors/bootstrap/css/bootstrap.min.css" />" >
    <link rel="stylesheet" href="<c:url value="//resources/vendors/bootstrap/css/jquery.dataTables.min.css" />" >
    <link rel="stylesheet" href="<c:url value="//resources/vendors/font-awesome/css/font-awesome.min.css" />" >
    <link rel="stylesheet" href="<c:url value="//resources/vendors/bootstrap/css/style.css" />" >
    <link rel="stylesheet" href="<c:url value="//resources/vendors/bootstrap/css/custom.min.css" />" >
   
    
</head>
<body class="nav-md" ng-controller="myactivityController">
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
                            <img src="images/img.jpg" alt="..." class="img-circle profile_img">
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
            <div class="right_col" role="main" style="padding: 10px 11px 10px 10px;">
                <form class="form-horizontal form-label-left" name="invoiceForm" ng-submit="submitForm()" novalidate>
                    <!-- top navigation -->
                    <div class="top_nav">
                        <div class="nav_menu">
                            <nav>
                                <div class="col-md-1 col-sm-1 col-xs-12">
                                    <div class="nav toggle">
                                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                                    </div>
                                </div>
                                <div class="col-md-7 col-sm-7 col-xs-12 form-group pull-left top_search tpsrch" style="margin-bottom: 0px;">

                                    <div class="input-group" style="width:100%;">
                                        <div class="input-append search-input-area">
                                            <input class="" id="appendedInputButton" type="text">
                                            <button class="btn" type="button">Go </button>
                                        </div>
                                    </div>


                                </div>
                                <div id="tprgt" class="col-md-4 col-sm-4 col-xs-12" style="">
                                    <div id="tpbtn" style="">
                                        <a class="btnntp btn-outline-success waves-effect" ng-href="createinvoice.html">Invotiate Now</a>

                                    </div>
                                    <div style="width:100px;float:right;margin-top:-5px;">
                                        <select class="form-control txtbdrtpdrw" style="border:none;margin-top:8px;padding:0px 0px;">
                                <option>abc ltd</option>
                                <option>Company 1</option>
                                <option>Company 2</option>
                            </select>
                                        <!--<ul class="nav navbar-nav navbar-right" style="width:100%;">
                                            <li class="">
                                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="line-height:8px;white-space:nowrap;">
                                                    <img src="images/profile-icon.png" alt=""> Abc Ltd.
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
                    <div class="" style="background-color:#f5f5f5;">
                        <div class="col-md-12 col-sm-12 col-xs-12 shadow" style="padding-left:0px;padding-right:0px;">
                            <div class="page-title1">
                                <!--<div class="title_left">
                    <h3>My Dashboard</h3>
                </div>-->

                                <div class="col-md-12 col-sm-12 col-xs-12" style="margin:0px 0px 0px 0px;padding-left:0px;padding-right:0px;">
                                    <div class="x_panel1">
                                        <div class="pnl">
                                            <div class="x_title">
                                                <h2 class="hrtmyac">Overview </h2>

                                                <div class="clearfix"></div>
                                            </div>

                                            <div class="row top_tiles" style="margin:0px 0px 11px 0;padding-bottom: 20px;">
                                                <div class="col-md-3 col-sm-3 col-xs-6 tile tilelmyac">
                                                    <div class="tilelspaninv">
                                                        <h3 class="bspadinwmyac" >${overviewObject.liveInvoiceCount==null?0:overviewObject.liveInvoiceCount }</h3>
                                                        <span class="bspadimyac-small">Live Invoices</span>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-xs-6 tile tilelmyac">
                                                    <div class="tilelspaninv">
                                                        <h3 class="bspadinwmyac">${overviewObject.savedInvoiceCount==null?0:overviewObject.savedInvoiceCount }</h3>
                                                        <span class="bspadimyac-small">Saved Invoices</span>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-xs-6 tile tilelmyac">
                                                    <div class="tilelspaninv">
                                                        <h3 class="bspadinwmyac">${overviewObject.expiredInvoiceCount==null?0:overviewObject.expiredInvoiceCount }</h3>
                                                        <span class="bspadimyac-small">Expired Invoices</span>
                                                    </div>
                                                </div>
                                                <div class="col-md-3 col-sm-3 col-xs-6 tile tilelmyac">
                                                    <div class="tilelspaninv">
                                                        <h3 class="bspadinwmyac">${overviewObject.completedInvoiceCount==null?0:overviewObject.completedInvoiceCount }</h3>
                                                        <span class="bspadimyac-small">Completed Invoices</span>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        </div>
                                </div>
                                <div class="clearfix"></div>
                                
                                 <!------------------------------------- FILTER DIV -------------------------------------->
                                 
                                <div class="col-md-12 col-sm-12 col-xs-12" style="margin:0px 0px 0px 0px;padding-left:0px;padding-right:0px;" id="filter_div">
                                    <div class="col-md-3 col-sm-3 col-xs-12 tile tilelmyact">
                                        <div class="tilelmyactspan">
                                        <span>Negotiation Action</span></div> 
                                       <!--  <select class="form-control" id="negoAction" name="negoAction" ng-model="negoaction" ng-options="negoaction.Id as negoaction.Name for negoaction in negoactionList"
								            ng-change="GetValue()">
								            <option value="ALL" selected="selected">All</option>
								        </select> -->
								        
                                        <select id="negoAction" ng-model="negoaction" class="form-control" ng-change="GetValue()">
                                        	<option selected value="">All</option>
                                        	<option value="ERLYDIS">Early Discount</option>
                                        	<option value="LATEDIS">Late Premium</option>
                                        	<option value="PR_N_CL">Present &amp; Collect</option>
                                        </select>

                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-12 tile tilelmyact">
                                        <div class="tilelmyactspan">
                                            <span>Offer Status</span>
                                        </div>
                                         <!-- <select class="form-control" id="offerStatus" name="offerStatus" ng-model="offerstatus" ng-options="offerStatus.Id as offerStatus.Name for offerStatus in offerStatusList track by offerStatus.Id"
								            ng-change="GetValue()">
								            <option value="ALL" selected="selected">All</option>
								         </select> -->
                                         <select id="offerStatus"  ng-model="offerstatus" class="form-control"  ng-change="GetValue()">
                                        	<option value="" selected>All</option>
                                        	<option value="LIVE">Live</option>
                                        	<option value="SAVED">Saved</option>
                                        	<option value="COMPLETED">Completed</option>
                                        	<option value="EXPIRED">Expired</option>
                                        	<option value="REJECTED">Rejected</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-12 tile tilelmyact">
                                        <div class="tilelmyactspan">
                                            <span>Negotiation Type</span>
                                        </div>
                                        
                                        <!--  <select class="form-control" id="negoType" name="negoType" ng-model="negotype" ng-options="negoType.Id as negoType.Name for negoType in negoTypeList track by negotype.Id"
								            ng-change="GetValue()">
								            <option value="ALL" selected="selected">All</option>
								         </select> -->
								         
                                  		 <select id="negoType"  ng-model="negotype" class="form-control"  ng-change="GetValue();">
                                        	<option value="" selected>All</option>
                                        	<option value="PAYTO" >Payable</option>
                                        	<option value="RECFM" >Receivable</option>
                                        </select> 
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-12 tile tilelmyact">
                                        <button class="btn btn-success" data-target="#invfile" data-toggle="modal">Generate Report</button>
                                        <button class="btn btn-primary" ng-click="ShowArchive();">View Archive</button>
                                    </div>
                                    </div>
                                    
                                    <!------------------------------ ARCHIVE DIV ----------------------------->
                                    
                                    <div class="col-md-12 col-sm-12 col-xs-12" style="margin:0px 0px 0px 0px;padding-left:0px;padding-right:0px;display:none;" id="archive_div">
                                  
                                    <div class="col-md-3 col-sm-3 col-xs-12 tile tilelmyact" style="text-align:left;padding-left:4px;">
                                        <button class="btn btn-primary"  onclick="window.location.reload();">Back</button>
                                    </div>
                                    </div>
                                    <!------------------------------ ARCHIVE DIV ENDS----------------------------->
                                    <div class="clearfix"></div>
                                    <!--Responsive data table-->
                                    <div class="col-md-12 col-sm-12 col-xs-12" style="margin:0px 0px 0px 0px;padding-left:0px;padding-right:0px;">
                                        <div class="table-responsive" id="table_div">

                                            <table id="datatable-checkbox" class="table table-striped table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th><input type="checkbox" class="myactchk"></th>
                                                        <th><a ng-href="javascript:void(0);" ng-click="sortType = 'invoiceno'; sortReverse = !sortReverse">Invoice No. <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>
                                                        <th><a ng-href="javascript:void(0);" ng-click="sortType = 'fromto'; sortReverse = !sortReverse">From/To <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>
                                                        <th><a ng-href="javascript:void(0);" ng-click="sortType = 'offerdate'; sortReverse = !sortReverse">Offer Date <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>
                                                        <th><a ng-href="javascript:void(0);" ng-click="sortType = 'duedate'; sortReverse = !sortReverse">Due Date <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>
                                                        <th><a ng-href="javascript:void(0);" ng-click="sortType = 'currency'; sortReverse = !sortReverse">Currency <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>
                                                        <th><a ng-href="javascript:void(0);" ng-click="sortType = 'amount'; sortReverse = !sortReverse">Amount <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>
                                                        <th><a ng-href="javascript:void(0);" ng-click="sortType = 'netamount'; sortReverse = !sortReverse">Net Amount <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>
                                                        <th><a ng-href="javascript:void(0);" ng-click="sortType = 'discount'; sortReverse = !sortReverse">Discount/<br />Premium <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>
                                                        <th><a ng-href="javascript:void(0);">Actions </a> </th>
                                                    </tr>
                                                </thead>

                                                <tbody>                                                	
														<c:forEach items="${activityDataList}" var="item" varStatus="loop">
		                                                   <!--  <tr ng-repeat="roll in invoice | orderBy:sortType:sortReverse"> -->
		                                                   <tr>
		                                                        <td><input type="checkbox" class="myactchk" name="table_records"></td>
		                                                        <td><i class="fa fa-circle ${item.color }"></i> <a href="javascript:void(0);" class="myactylnk" data-target="#invfile" data-toggle="modal">${item.invoiceNo}</a></td>
		                                                        <td>${item.fromTo}</td>
		                                                        <td>${item.invoiceStartOn}</td>
		                                                        <td>${item.invoiceDueOn}</td>
		                                                        <td>${item.currencyType}</td>
		                                                        <td>${item.invoiceAmt}</td>
		                                                        <td>${item.netAmt}</td>
		                                                        <td>${item.discountPremium}</td>
		                                                        <td><a style="cursor:pointer;" title='Download' onclick="createPDF('${(loop.index)+1}','${item.invoiceStatus }','${item.invoiceNo}','${item.fromTo }');"><i class="fa fa-download rbluemyact" aria-hidden="true"></i> </a>
		                                                            <a style="cursor:pointer;" title='Print' onclick="printDiv(this);"><i class="fa fa-print rbluemyact" aria-hidden="true"></i> </a>
		                                                            <a style="cursor:pointer;" title='Archive' onclick="doArchive(this,'${item.idInvoice}');"><i class="fa fa-inbox rredmyact" aria-hidden="true"></i></a>
		                                                        </td>
		  
		                                                    </tr>
                                                        </c:forEach>
                                                </tbody>
                                            </table>

                                        </div>
                                    </div>
                                    <div class="clearfix"></div>

                                </div>

                            
                            
                        </div>
                    </div> 
                    <div class="row"></div>
                    <!-- /page content -->
                </form>
                    </div>
                
            </div>
        <!-- Modal Pop Up for image zoom start here-->

        <div id="invfile" class="modal fade" tabindex="-1" role="dialog">
            <div class="modal-dialog1">

                <!-- Modal content-->
                <div class="modal-content" style="background: #008ece;">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" style="color: #ffffff;opacity:1.0;">&times;</button>

                        
                    </div>
                    <div class="modal-body" style="padding:0px;">
                        <div class="form-group">
                            <div class="x_panel rd thuimgn" style="border:0px;">


                                <!--POPUP Parts starts here-->
                                <div class="col-xs-12 thuimgnthk">
                                    <!--<div class="col-xs-12 clrdvs"></div>
                                    <div class="col-xs-12 clrdvs"></div>-->

                                    <div class="form-group mrgbttm pdrilft">


                                        <div class="col-md-12 col-sm-12 col-xs-12" style="padding-left:0px;">
                                            <div class="col-xs-12">
                                                <div class="form-group">
                                                    <div class="control-label col-md-12 col-sm-12 col-xs-12 ">
                                                        <div class="bspadiqus">
                                                            <strong style="font-size:24px;">Generate Report</strong>
                                                        </div>
                                                    </div>


                                                </div>

                                            </div>
                                            <div class="col-xs-12 clrdvs"></div>
                                            <!--<div class="col-xs-12 clrdvs"></div>-->
                                            <div class="col-xs-12" style="padding-left:0px;padding-left:30px;">
                                                <div class="form-group">
                                                    <div class="col-md-2 col-sm-2 col-xs-12 leftspan" style="padding-top:7px;white-space:nowrap;">
                                                        Select Period:
                                                    </div>
                                                    <div class="col-md-10 col-sm-10 col-xs-12" style="margin-bottom:6px;">

                                                        <div class="col-md-5 col-sm-5 col-xs-12 leftspan">
                                                            <span class="leftspan1"> From </span> 
                                                            <input ng-model="fromdateradio"  type="text" name="date" placeholder="mm/dd/yyyy" class="form-control txtbdrr" style="padding:0px 5px;float:right;cursor:pointer;width:70%;margin-right:8px;"  ng-click="showfrmcalendar($event)" uib-datepicker-popup="{{dateformat}}"  is-open="showdp">
                                                        </div>
                                                        <div class="col-md-5 col-sm-5 col-xs-12 leftspan">
                                                            <span class="leftspan1"> To </span>  
                                                            <input ng-model="todateradio"  type="text" name="date" placeholder="mm/dd/yyyy" style="padding:0px 5px;float:right;cursor:pointer;width:70%;margin-right:8px;" class="form-control txtbdrr" ng-click="showtocalendar($event)" uib-datepicker-popup="{{dateformat}}"  is-open="showdp1">
                                                        </div>


                                                    </div>

                                                </div>
                                                <div class="col-xs-12 clrdvs"></div>
                                                <div class="form-group">
                                                    <div class="col-md-2 col-sm-2 col-xs-12 leftspan" style="padding-top:3px;white-space:nowrap;">Select Criteria:</div>
                                                    <div class="col-md-10 col-sm-10 col-xs-12" style="margin-bottom:6px;padding-left:20px;">
                                                        <div class="col-md-3 col-sm-3 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="payradio" value="PAYTO" id="radio1" name="rdpr" type="radio" style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio1" style="padding-left:12px;white-space:nowrap;">Payables</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="payradio" value="RECFM" id="radio2" name="rdpr" type="radio" style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio2" style="padding-left:12px;white-space:nowrap;">
                                                                    Receivables
                                                                </label>
                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>
                                                <div class="col-xs-12 clrdvs"></div>
                                                <div class="form-group">
                                                    <div class="col-md-2 col-sm-2 col-xs-12 leftspan" style="padding-top:3px;white-space:nowrap;">
                                                        Filter on Action:
                                                    </div>
                                                    <div class="col-md-10 col-sm-10 col-xs-12" style="margin-bottom:6px;padding-left:20px;">
                                                        <div class="col-md-3 col-sm-3 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="typeradio" value="ERLYDIS" id="radio3" type="radio" name="rdelp"  style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio3" style="padding-left:12px;white-space:nowrap;">
                                                                    Early Discount
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="typeradio" value="LATEDIS" id="radio4" type="radio" name="rdelp" style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio4" style="padding-left:12px;white-space:nowrap;">
                                                                    Late Premium
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="typeradio" value="PR_N_CL" id="radio5" type="radio" name="rdelp" style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio5" style="padding-left:12px;white-space:nowrap;">
                                                                    Present & Collect
                                                                </label>
                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>
                                                <div class="col-xs-12 clrdvs"></div>
                                                <div class="form-group">
                                                    <div class="col-md-2 col-sm-2 col-xs-12 leftspan" style="padding-top:3px;white-space:nowrap;">
                                                        Filter on Offer Status:
                                                    </div>
                                                    <div class="col-md-10 col-sm-10 col-xs-12" style="margin-bottom:6px;padding-left:20px;">
                                                        <div class="col-md-2 col-sm-2 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="statusradio" value="LIVE" id="radio6" type="radio" name="rdstatus" checked="checked" style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio6" style="padding-left:12px;white-space:nowrap;">
                                                                    Live
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="statusradio" value="SAVED" id="radio7" type="radio" name="rdstatus" style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio7" style="padding-left:12px;white-space:nowrap;">
                                                                    Saved
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="statusradio" value="REJECTED" id="radio8" type="radio" name="rdstatus" style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio8" style="padding-left:12px;white-space:nowrap;">
                                                                    Rejected
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="statusradio" value="EXPIRED" id="radio9" type="radio" name="rdstatus" style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio9" style="padding-left:12px;white-space:nowrap;">
                                                                    Expired
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="statusradio" value="COMPLETED" id="radio10" type="radio" name="rdstatus" style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio10" style="padding-left:12px;white-space:nowrap;">
                                                                    Completed
                                                                </label>
                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>
                                                <div class="col-xs-12 clrdvs"></div>
                                                <div class="form-group">
                                                    <div class="col-md-2 col-sm-2 col-xs-12 leftspan" style="padding-top:3px;white-space:nowrap;">
                                                        Format:
                                                    </div>
                                                    <div class="col-md-10 col-sm-10 col-xs-12" style="margin-bottom:6px;padding-left:20px;">
                                                        <div class="col-md-2 col-sm-2 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="formatradio" value="xlsx" id="radio11" type="radio" name="rdformat"  style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio11" style="padding-left:12px;white-space:nowrap;">
                                                                    XLS
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="formatradio" value="pdf" id="radio12" type="radio" name="rdformat" checked="checked" style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio12" style="padding-left:12px;white-space:nowrap;">
                                                                    PDF
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="formatradio" value="csv" id="radio13" type="radio" name="rdformat" style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio13" style="padding-left:12px;white-space:nowrap;">
                                                                    CSV
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2 col-xs-12">
                                                            <div class="radio" style="margin-left:50px;">
                                                                <input ng-model="formatradio" value="txt" id="radio14" type="radio" name="rdformat" style="-webkit-appearance:checkbox;-moz-appearance:checkbox;-ms-appearance:checkbox;-o-appearance:checkbox;">
                                                                <label class="rdilbls" for="radio14" style="padding-left:12px;white-space:nowrap;">
                                                                    Flat File
                                                                </label>
                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>

                                            </div>
                                            <div class="col-xs-12 clrdvs"></div>
                                           


                                        </div>
                                        <div class="col-xs-12">

                                            <div class="col-xs-12 clrdvs"></div>

                                            <div class="col-xs-12">
                                                <div class="form-group">
                                                    <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom:6px;text-align:center;">
                                                        <button type="submit" class="btn btn-success bttnfon sbbtn" data-color="default" ng-click="donwloadInvoice('email');">Email Me</button>
                                                        <button type="submit" class="btn btn-success bttnfon sbbtn" data-color="success" ng-click="donwloadInvoice('download');">Download Now</button>

                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col-xs-12 clrdvs"></div>
   

                                            
                                        </div>
                                        

                                    </div>
                                </div>
                            </div>
                            <!--POPUP Parts Ends here-->
                        </div>

                        <div style="clear:both;"></div>

                    </div>

                </div>
            </div>
        </div>

        

        
        </div>
    <!-- Modal Pop Up for image zoom ends here-->

    <script src="<c:url value="//resources/js/angular.js" /> " ></script>
    <script src="<c:url value="//resources/js/jquery-1.11.1.min.js" /> " ></script>
    <script src="<c:url value="//resources/js/myactivity.js" /> " ></script>
    <script src="<c:url value="//resources/scripts/jquery.min.js" /> " ></script>
    <script src="<c:url value="//resources/scripts/jquery-ui.js" /> " ></script>
    
    <!--Datepicker UI js-->
    <!--<script src="scripts/jquery-ui.js"></script>-->
    <!-- Bootstrap -->
	<script src="<c:url value="//resources/scripts/bootstrap.min.js" /> " ></script>
	<script src="<c:url value="//resources/scripts/jquery.dataTables.min.js" />"></script>
    <script src="<c:url value="//resources/scripts/ui-bootstrap-tpls-0.14.3.js" /> " ></script>
    <script src="<c:url value="//resources/scripts/jspdf.debug.js" /> " ></script>
    <script src="<c:url value="//resources/scripts/jspdf.min.js" /> " ></script>
    <script src="<c:url value="//resources/scripts/custom.min.js" />"></script>
    <script src="<c:url value="//resources/scripts/downloadpdf.js" />"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        $('#datatable-checkbox').DataTable({bFilter: false,bLengthChange: false,info:false});
    } );
    </script>

  


</body>
</html>
