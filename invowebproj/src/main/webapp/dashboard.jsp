<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored ="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Invotiate Dashboard</title>
    <!-- Bootstrap -->
    <!-- <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="//resources/vendors/bootstrap/css/bootstrap.min.css" />" >
    <link rel="stylesheet" href="<c:url value="//resources/vendors/bootstrap/css/bootstrap-theme.min.css" />" >
    <link rel="stylesheet" href="<c:url value="//resources/vendors/bootstrap/css/jquery.dataTables.min.css" />" >
    <link rel="stylesheet" href="<c:url value="//resources/vendors/font-awesome/css/font-awesome.min.css" />" >
    <link rel="stylesheet" href="<c:url value="//resources/vendors/bootstrap/css/style.css" />" >
    <link rel="stylesheet" href="<c:url value="//resources/vendors/bootstrap/css/custom.min.css" />" >
   
    
</head>
<body class="nav-md" >
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
                                        <a><i class="fa fa-envelope-o"></i>Help<span class="fa fa-chevron-circle-down"></span></a>
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
                                <div class="col-md-7 col-sm-7 col-xs-12 form-group pull-left top_search tpsrch" style="margin-bottom:-2px;">

                                    <div class="input-group" style="width:100%;">
                                        <div class="input-append search-input-area">
                                            <input class="" id="appendedInputButton" type="text">
                                            <button class="btn" type="button">Go </button>
                                        </div>
                                    </div>


                                </div>
                                <div id="tprgt" class="col-md-4 col-sm-4 col-xs-12" style="">
                                    <div id="tpbtn" style="">
                                        <button type="button" class="btnntp btn-outline-success waves-effect animateitm" style="color:#364555;">Invotiate Now</button>
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
                    <div class="" style="background-color:#f5f5f5;">

                        <div class="page-title">
                            <!--<div class="title_left">
                    <h3>My Dashboard</h3>
                </div>-->
                            <div class="col-md-12 col-sm-12 col-xs-12" style="padding-right:2px;display:none;">
                                <div id="placeholder33" style="height: 260px; display: none" class="demo-placeholder"></div>
                                <div style="width: 100%;">
                                    <div id="canvas_dahs" class="demo-placeholder shadow" style="width: 100%; height:320px;padding-bottom:15px;"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-md-12 col-sm-12 col-xs-12" style="height:20px;display:none;"></div>
                            <div class="col-md-12 col-sm-12 col-xs-12" style="padding-right:2px;">
                                <div class="col-md-12 col-sm-12 col-xs-12 shadow">
                                    <div class="x_title">
                                        <h2 class="hrt" style="padding:10px 0px;color:#364555;">Invoice Summary </h2>

                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12" style="margin:0px 0px 0px 0;padding-bottom: 20px;">
                                        <div class="col-md-2 col-sm-2 col-xs-6" style="margin:5px 0px 5px 0;">
                                            <div class="tilelspandsb">
                                                <span class="bspadi-smalldsb">Invoices negotiated</span>
                                                <h3 class="bspadinwdsb">15</h3>

                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-2 col-xs-6" style="margin:5px 0px 5px 0;">
                                            <div class="tilelspandsb">
                                                <span class="bspadi-smalldsb">Amount negotiated</span>
                                                <h3 class="bspadinwdsb">$ 126,000</h3>

                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-2 col-xs-6" style="margin:5px 0px 5px 0;">
                                            <div class="tilelspandsb">
                                                <span class="bspadi-smalldsb">Savings</span>
                                                <h3 class="bspadinwdsb">$ 10,000</h3>

                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-2 col-xs-6" style="margin:5px 0px 5px 0;">
                                            <div class="tilelspandsb">
                                                <span class="bspadi-smalldsb">Receivables</span>
                                                <h3 class="bspadinwdsb">$ 60,000</h3>

                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-2 col-xs-6" style="margin:5px 0px 5px 0;">
                                            <div class="tilelspandsb">
                                                <span class="bspadi-smalldsb">Payable</span>
                                                <h3 class="bspadinwdsb">$ 120,000</h3>

                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-2 col-xs-6" style="margin:5px 0px 5px 0;">
                                            <div class="tilelspandsb">
                                                <span class="bspadi-smalldsb">Live Partners</span>
                                                <h3 class="bspadinwdsb" style="border-right:none;">84</h3>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="clearfix"></div>
                        <div class="col-md-12 col-sm-12 col-xs-12" style="height:20px;"></div>
                        <div class="col-md-12 col-sm-12 col-xs-12" style="margin:0px 0px 0px 0px;padding-right:0px;padding-left:0px;">
                            <div class="col-md-6 col-sm-6 col-xs-12" style="margin:0px 0px 10px 0px;padding-right:2px;">
                                <div class="col-md-12 col-sm-12 col-xs-12 shadow" style="">
                                    <div class="x_content">
                                        <table class="" style="width:100%">
                                            <tr>
                                                <th style="width:100%;">
                                                    <h2 class="hrt" style="padding:10px 0px;color:#364555;">Negotiation Summary</h2>
                                                </th>
                                                
                                            </tr>
                                            <tr>
                                                <td style="width:100%;text-align:center;vertical-align:middle;">
                                                    <canvas id="canvas1" style="margin:15px 10px 10px 0"></canvas>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width:100%;">
                                                    <table class="tile_info" style="width:100%;">
                                                        <tr>
                                                            <td style="width:20%;font-size:24px;color:#4e5760;font-weight:400;text-align:center;">
                                                                <p><a href="javascript:void(0)">20</a></p>
                                                            </td>
                                                            <td style="width:20%;font-size:24px;color:#4e5760;font-weight:400;text-align:center;">
                                                                <p><a href="javascript:void(0)">30</a></p>
                                                            </td>
                                                            <td style="width:20%;font-size:24px;color:#4e5760;font-weight:400;text-align:center;">
                                                                <p><a href="javascript:void(0)">30</a></p>
                                                            </td>
                                                            <td style="width:20%;font-size:24px;color:#4e5760;font-weight:400;text-align:center;">
                                                                <p><a href="javascript:void(0)">28</a></p>
                                                            </td>
                                                            <td style="width:20%;font-size:24px;color:#4e5760;font-weight:400;text-align:center;">
                                                                <p><a href="javascript:void(0)">02</a></p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width:100%;">
                                                    <table class="tile_info" style="width:100%;">
                                                        <tr>
                                                            <td style="width:20%;color:#888;height:14px;" colspan="5"></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width:100%;">
                                                    <table class="tile_info" style="width:100%;">
                                                        <tr>
                                                            <td style="width:20%;color:#888;font-size:14px;text-align:left;">
                                                                <p><i class="fa fa-circle rgreen" style="margin-right:2px;"></i> Live </p>
                                                                
                                                            </td>
                                                            <td style="width:20%;color:#888;font-size:14px;text-align:left;">
                                                                <p><i class="fa fa-circle rblue" style="margin-right:2px;"></i> Saved </p>  
                                                            </td>
                                                            <td style="width:20%;color:#888;font-size:14px;text-align:left;">
                                                                <p><i class="fa fa-circle rred" style="margin-right:2px;"></i> Expired </p>
                                                                
                                                            </td>
                                                            <td style="width:20%;color:#888;font-size:14px;text-align:left;">
                                                                <p><i class="fa fa-circle yelloww" style="margin-right:2px;"></i> Completed </p>
                                                            </td>
                                                            <td style="width:20%;color:#888;font-size:14px;text-align:left;">
                                                                <p><i class="fa fa-circle rpurple" style="margin-right:2px;"></i> Rejected </p> 
                                                            </td>
                                                        </tr>
                                                        </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width:100%;">
                                                    <table class="tile_info" style="width:100%;">
                                                        <tr>
                                                            <td style="width:20%;color:#888;height:27px;" colspan="5"></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--Pie/Doughnut Chart With clickable slices.-->

                                </div>

                            </div>

                            <div class="col-md-6 col-sm-6 col-xs-12" style="margin:0px 0px 10px 0px;padding-right:2px;">
                                <div class="col-md-12 col-sm-12 col-xs-12 shadow">
                                    <div class="container" style="padding:0px;visibility:hidden;">
                                        <table class="" style="width:100%">
                                            <tr>
                                                <td colspan="2" style="width:100%;">
                                                    <table class="" style="width:100%">
                                                        <tr>
                                                            <td align="left" valign="middle"  style="width:50%;">
                                                                <h2 class="hrt" style="padding:10px 0px;margin-bottom:28px;color:#364555;">Negotiation Type</h2>
                                                            </td>
                                                            <td align="right" valign="middle" style="width:50%;">
                                                                <div style="margin-top:-20px;">
                                                                    <span class="bspadi-smalldsb"><i class="fa fa-circle dasreci"></i> Receivable </span><span>&nbsp;&nbsp;&nbsp;&nbsp;</span> <span class="bspadi-smalldsb"><i class="fa fa-circle daspaya"></i> Payable </span>
                                                                </div>
                                                            </td>

                                                        </tr>
                                                    </table>
</td>
                                                
                                            </tr>
                                            <tr>
                                                <td style="width:70%;text-align:left;vertical-align:top;">

                                                    <div class="progress">
                                                        <div class="dashprogdv">
                                                            <div class="progress-bar progress-bar-infod1 progcon" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:75%">$60000</div>
                                                        </div>
                                                        <div class="dashprogdv">
                                                            <div class="progress-bar progress-bar-infod2 progcon" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:17%">$20000</div>
                                                        </div>
                                                    </div>

                                                    <div class="progress">
                                                        <div class="dashprogdv">
                                                            <div class="progress-bar progress-bar-infod1 progcon" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:25%">$32000</div>
                                                        </div>
                                                        <div class="dashprogdv">
                                                            <div class="progress-bar progress-bar-infod2 progcon" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:11%">$12000</div>
                                                        </div>
                                                    </div>

                                                    <div class="progress">
                                                        <div class="dashprogdv">
                                                            <div class="progress-bar progress-bar-infod1 progcon" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:22%">$25000</div>
                                                        </div>
                                                        <div class="dashprogdv">
                                                            <div class="progress-bar progress-bar-infod2 progcon" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:7%">$5000</div>
                                                        </div>
                                                    </div>

                                                    <div class="progress">
                                                        <div class="dashprogdv">
                                                            <div class="progress-bar progress-bar-infod1 progcon" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:7%">$5000</div>
                                                        </div>
                                                        <div class="dashprogdv">
                                                            <div class="progress-bar progress-bar-infod2 progcon" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:5%">$2000</div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td style="width:30%;text-align:left;vertical-align:top;"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="width:100%;height:18px;"></td>
                                                </tr>
                                        </table>
                                            


</div>
                                </div>

                            </div>
                        </div>
<!--Top 5 Offers-->
                        <div class="col-md-12 col-sm-12 col-xs-12" style="height:10px;"></div>
                        <div class="col-md-12 col-sm-12 col-xs-12" style="margin:0px 0px 0px 0px;padding-right:0px;padding-left:0px;">
                            <div class="col-md-12 col-sm-12 col-xs-12 dbmrgn">
                                <div class="page-title prdtopbg" style="height:0px;padding:0px;">

                                    <div class="title_left pdrilft">
                                        <h2 class="hrt" style="margin-top:0px;margin-bottom:4px;padding:10px 0px;color:#364555;">Top 5 Live Offers</h2>
                                    </div>

                                    <div class="title_right mrgbtm">
                                        <div style="margin-top:0px;margin-bottom:4px;" class="col-md-5 col-sm-5 col-xs-12 form-group pull-right mrgbtm">

                                            <span style="font-size:18px;color:#364555;float:left;margin-right:0px;margin-top:5px;">Sort by</span>  <span style="margin-right:0px;margin-top:0px;">
                                            <select class="form-control" style="width:140px;float:right;">
                                            <option value="Amount">Amount</option>
                                            </select>
                                            </span>

                                        </div>
                                    </div>

                                </div>
                                <div class="clearfix"></div>
                                <div id="box1" class="col-md-22 col-sm-22 col-xs-6" style="margin:5px 0px 5px 0;padding-right:2px;">
                                    
                                    <a id="bx1" ng-href="javascript:void(0)">
                                        <div class="col-md-12 col-sm-12 col-xs-12 infographic-box nopadingsrt" style="">
                                            <div class="col-md-12 col-sm-12 col-xs-12 no-padding" style="">
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="line-height:35px;"><i class="fa fa-file-text-o" style="font-weight:normal;"></i></div>
                                                <div class="col-md-8 col-sm-8 col-xs-8" style="line-height:35px;">#IN2034021</div>
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="text-align:right;"><span id="outdelete" class="cutspan"><i class="fa fa-times"></i></span></div>
                                                </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont">
                                                <span class="nwspan">NEW</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="">
                                                <span class="amttext">Amount</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="amttextnum">$ 126,000</span><br />
                                             </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="smlltxt">Due date (01/12/2016)</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="percircle">4%</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="amttext">Discount Offered</span>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12" style="height:10px;"></div>
                                            </div>
                                    </a>
                                </div>

                                <div class="col-md-22 col-sm-22 col-xs-6" style="margin:5px 0px 5px 0;padding-right:2px;">
                                    <a ng-href="javascript:void(0)">
                                        <div class="col-md-12 col-sm-12 col-xs-12 infographic-box nopadingsrt" style="">
                                            <div class="col-md-12 col-sm-12 col-xs-12 no-padding" style="">
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="line-height:35px;"><i class="fa fa-file-text-o" style="font-weight:normal;"></i></div>
                                                <div class="col-md-8 col-sm-8 col-xs-8" style="line-height:35px;">#IN2034021</div>
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="text-align:right;"><span class="cutspan"><i class="fa fa-times"></i></span></div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont">
                                                <span class="nwspan">Delegate</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="">
                                                <span class="amttext">Amount</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="amttextnum">$ 126,000</span><br />
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="smlltxt">Due date (01/12/2016)</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="percircle">4%</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="amttext">Discount Offered</span>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12" style="height:10px;"></div>
                                        </div>
                                        </a>
</div>

                                <div class="col-md-22 col-sm-22 col-xs-6" style="margin:5px 0px 5px 0;padding-right:2px;">
                                    <a ng-href="javascript:void(0)">
                                        <div class="col-md-12 col-sm-12 col-xs-12 infographic-box nopadingsrt" style="">
                                            <div class="col-md-12 col-sm-12 col-xs-12 no-padding" style="">
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="line-height:35px;"><i class="fa fa-file-text-o" style="font-weight:normal;"></i></div>
                                                <div class="col-md-8 col-sm-8 col-xs-8" style="line-height:35px;">#IN2034021</div>
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="text-align:right;"><span class="cutspan"><i class="fa fa-times"></i></span></div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont">
                                                <span class="nwspan">NEW</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="">
                                                <span class="amttext">Amount</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="amttextnum">$ 126,000</span><br />
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="smlltxt">Due date (01/12/2016)</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="percircle">4%</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="amttext">Premium Offered</span>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12" style="height:10px;"></div>
                                        </div>
                                        </a>
</div>

                                <div class="col-md-22 col-sm-22 col-xs-6" style="margin:5px 0px 5px 0;padding-right:2px;">
                                    <a ng-href="javascript:void(0)">
                                        <div class="col-md-12 col-sm-12 col-xs-12 infographic-box nopadingsrt" style="">
                                            <div class="col-md-12 col-sm-12 col-xs-12 no-padding" style="">
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="line-height:35px;"><i class="fa fa-file-text-o" style="font-weight:normal;"></i></div>
                                                <div class="col-md-8 col-sm-8 col-xs-8" style="line-height:35px;">#IN2034021</div>
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="text-align:right;"><span class="cutspan"><i class="fa fa-times"></i></span></div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont">
                                                <span class="nwspan">NEW</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="">
                                                <span class="amttext">Amount</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="amttextnum">$ 126,000</span><br />
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="smlltxt">Due date (01/12/2016)</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="percircle">4%</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="amttext">Premium Offered</span>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12" style="height:10px;"></div>
                                        </div>
                                        </a>
</div>

                                <div class="col-md-22 col-sm-22 col-xs-6" style="margin:5px 0px 5px 0;padding-right:2px;">
                                    <a ng-href="javascript:void(0)">
                                        <div class="col-md-12 col-sm-12 col-xs-12 infographic-box nopadingsrt" style="">
                                            <div class="col-md-12 col-sm-12 col-xs-12 no-padding" style="">
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="line-height:35px;"><i class="fa fa-file-text-o" style="font-weight:normal;"></i></div>
                                                <div class="col-md-8 col-sm-8 col-xs-8" style="line-height:35px;">#IN2034021</div>
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="text-align:right;"><span class="cutspan"><i class="fa fa-times"></i></span></div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont">
                                                <span class="nwspan">NEW</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="">
                                                <span class="amttext">Amount</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="amttextnum">$ 126,000</span><br />
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="smlltxt">Due date (01/12/2016)</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="percircle">4%</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="amttext">Present & Collect</span>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12" style="height:10px;"></div>
                                        </div>
                                        </a>
</div>

                            </div>
                            </div>

<!--Top 5 Offers-->

<!--Last 5 Expired Offers-->
                        <div class="col-md-12 col-sm-12 col-xs-12" style="height:10px;"></div>
                        <div class="col-md-12 col-sm-12 col-xs-12" style="margin:0px 0px 0px 0px;padding-right:0px;padding-left:0px;">
                            <div class="col-md-12 col-sm-12 col-xs-12 dbmrgn">
                                <div class="page-title prdtopbg" style="height:0px;padding:0px;">

                                    <div class="title_left pdrilft">
                                        <h2 class="hrt" style="margin-top:0px;margin-bottom:4px;padding:10px 0px;color:#364555;">Last 5 Expired Offers</h2>
                                    </div>

                                    <div class="title_right mrgbtm">
                                        <div style="margin-top:0px;margin-bottom:4px;" class="col-md-5 col-sm-5 col-xs-12 form-group pull-right mrgbtm">

                                            <span style="font-size:18px;color:#364555;float:left;margin-right:0px;margin-top:5px;">Sort by</span>  <span style="margin-right:0px;margin-top:0px;">
                                                <select class="form-control" style="width:140px;float:right;">
                                                    <option value="Amount">Percentage</option>
                                                </select>
                                            </span>

                                        </div>
                                    </div>

                                </div>
                                <div class="clearfix"></div>
                                <div class="col-md-22 col-sm-22 col-xs-6" style="margin:5px 0px 5px 0;padding-right:2px;">

                                    <a id="bx1" ng-href="javascript:void(0)">
                                        <div class="col-md-12 col-sm-12 col-xs-12 infographic-box nopadingsrt" style="">
                                            <div class="col-md-12 col-sm-12 col-xs-12 no-padding" style="">
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="line-height:35px;"><i class="fa fa-file-text-o" style="font-weight:normal;"></i></div>
                                                <div class="col-md-8 col-sm-8 col-xs-8" style="line-height:35px;">#IN2034021</div>
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="text-align:right;"><span class="cutspan"><i class="fa fa-times"></i></span></div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="visibility:hidden;">
                                                <span class="nwspan">NEW</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="">
                                                <span class="amttext">Amount</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="amttextnum">$ 126,000</span><br />
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="smlltxt">Due date (01/12/2016)</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="expcircle">4%</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="amttext">Discount Offered</span>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12" style="height:10px;"></div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col-md-22 col-sm-22 col-xs-6" style="margin:5px 0px 5px 0;padding-right:2px;">
                                    <a ng-href="javascript:void(0)">
                                        <div class="col-md-12 col-sm-12 col-xs-12 infographic-box nopadingsrt" style="">
                                            <div class="col-md-12 col-sm-12 col-xs-12 no-padding" style="">
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="line-height:35px;"><i class="fa fa-file-text-o" style="font-weight:normal;"></i></div>
                                                <div class="col-md-8 col-sm-8 col-xs-8" style="line-height:35px;">#IN2034021</div>
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="text-align:right;"><span class="cutspan"><i class="fa fa-times"></i></span></div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="visibility:hidden;">
                                                <span class="nwspan">Delegate</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="">
                                                <span class="amttext">Amount</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="amttextnum">$ 126,000</span><br />
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="smlltxt">Due date (01/12/2016)</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="expcircle">4%</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="amttext">Discount Offered</span>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12" style="height:10px;"></div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col-md-22 col-sm-22 col-xs-6" style="margin:5px 0px 5px 0;padding-right:2px;">
                                    <a ng-href="javascript:void(0)">
                                        <div class="col-md-12 col-sm-12 col-xs-12 infographic-box nopadingsrt" style="">
                                            <div class="col-md-12 col-sm-12 col-xs-12 no-padding" style="">
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="line-height:35px;"><i class="fa fa-file-text-o" style="font-weight:normal;"></i></div>
                                                <div class="col-md-8 col-sm-8 col-xs-8" style="line-height:35px;">#IN2034021</div>
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="text-align:right;"><span class="cutspan"><i class="fa fa-times"></i></span></div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="visibility:hidden;">
                                                <span class="nwspan">NEW</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="">
                                                <span class="amttext">Amount</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="amttextnum">$ 126,000</span><br />
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="smlltxt">Due date (01/12/2016)</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="expcircle">4%</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="amttext">Premium Offered</span>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12" style="height:10px;"></div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col-md-22 col-sm-22 col-xs-6" style="margin:5px 0px 5px 0;padding-right:2px;">
                                    <a ng-href="javascript:void(0)">
                                        <div class="col-md-12 col-sm-12 col-xs-12 infographic-box nopadingsrt" style="">
                                            <div class="col-md-12 col-sm-12 col-xs-12 no-padding" style="">
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="line-height:35px;"><i class="fa fa-file-text-o" style="font-weight:normal;"></i></div>
                                                <div class="col-md-8 col-sm-8 col-xs-8" style="line-height:35px;">#IN2034021</div>
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="text-align:right;"><span class="cutspan"><i class="fa fa-times"></i></span></div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="visibility:hidden;">
                                                <span class="nwspan">NEW</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="">
                                                <span class="amttext">Amount</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="amttextnum">$ 126,000</span><br />
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="smlltxt">Due date (01/12/2016)</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="expcircle">4%</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="amttext">Discount Offered</span>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12" style="height:10px;"></div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col-md-22 col-sm-22 col-xs-6" style="margin:5px 0px 5px 0;padding-right:2px;">
                                    <a ng-href="javascript:void(0)">
                                        <div class="col-md-12 col-sm-12 col-xs-12 infographic-box nopadingsrt" style="">
                                            <div class="col-md-12 col-sm-12 col-xs-12 no-padding" style="">
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="line-height:35px;"><i class="fa fa-file-text-o" style="font-weight:normal;"></i></div>
                                                <div class="col-md-8 col-sm-8 col-xs-8" style="line-height:35px;">#IN2034021</div>
                                                <div class="col-md-2 col-sm-2 col-xs-2 no-padding" style="text-align:right;"><span class="cutspan"><i class="fa fa-times"></i></span></div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="visibility:hidden;">
                                                <span class="nwspan">NEW</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext mrgncont" style="">
                                                <span class="amttext">Amount</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="amttextnum">$ 126,000</span><br />
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:-6px;">
                                                <span class="smlltxt">Due date (01/12/2016)</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="expcircle">4%</span>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 centrtext" style="margin-top:20px;">
                                                <span class="amttext">Discount Offered</span>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12" style="height:10px;"></div>
                                        </div>
                                    </a>
                                </div>

                            </div>
                        </div>

                        <!--Last 5 Expired Offers-->
                        </div>

                    <div class="row"></div>
                    <!-- /page content -->
                </form>
                    </div>
                
            </div>
        </div>
   
    

  
    <script src="<c:url value="//resources/js/angular.js"/>"></script>
    <script src="<c:url value="//resources/js/createinvoice.js"/>"></script>
    <script src="<c:url value="//resources/js/jquery-1.11.1.min.js"/>"></script>
    <script src="<c:url value="//resources/scripts/jquery.min.js"/>"></script>
  
    <script src="<c:url value="//resources/chart/Chart.min.js"/>"></script>
    <script src="<c:url value="//resources/chart/jquery.flot.min.js"/>"></script>
    <script src="<c:url value="//resources/flot/jquery.flot.js"/>"></script>
    <script src="<c:url value="//resources/flot/jquery.flot.pie.js"/>"></script>
    <script src="<c:url value="//resources/flot/jquery.flot.resize.js"/>"></script>
    <script src="<c:url value="//resources/flot/jquery.flot.stack.js"/>"></script>
    <script src="<c:url value="//resources/flot/jquery.flot.time.js"/>"></script>
    <script src="<c:url value="//resources/flot/jquery.flot.orderBars.js"/>"></script>
    <script src="<c:url value="//resources/flot/jquery.flot.spline.min.js"/>"></script>
    <script src="<c:url value="//resources/flot/curvedLines.js"/>"></script>

    <!--Datepicker UI js-->
    <!--<script src="<c:url value="//resources/scripts/jquery-ui.js"/>"></script>-->
    <!-- Bootstrap -->
    <script src="<c:url value="//resources/scripts/bootstrap.min.js"/>"></script>
    <script src="<c:url value="//resources/scripts/ui-bootstrap-tpls-0.14.3.js"/>"></script>

    <!-- Custom Theme Scripts -->
    <script src="<c:url value="//resources/scripts/custom.min.js"/>"></script>


    
    <!--<script src="chart/serial.js"></script>-->
    <script src="<c:url value="//resources/js/jquery-progressbar.min.js"/>"></script>


    <script>

      $(document).ready(function() {
        var data1 = [
          [gd(2012, 1, 1), 17],
          [gd(2012, 1, 2), 74],
          [gd(2012, 1, 3), 6],
          [gd(2012, 1, 4), 39],
          [gd(2012, 1, 5), 20],
          [gd(2012, 1, 6), 85],
          [gd(2012, 1, 7), 7]
        ];

        var data2 = [
          [gd(2012, 1, 1), 82],
          [gd(2012, 1, 2), 23],
          [gd(2012, 1, 3), 66],
          [gd(2012, 1, 4), 9],
          [gd(2012, 1, 5), 119],
          [gd(2012, 1, 6), 6],
          [gd(2012, 1, 7), 9]
        ];
        $("#canvas_dahs").length && $.plot($("#canvas_dahs"), [
          data1, data2
        ], {
          series: {
            lines: {
              show: false,
              fill: false
            },
            splines: {
              show: true,
              tension: 0.4,
              lineWidth: 0,
              fill: 0.7
            },
            points: {
              radius: 0,
              show: true
              
                
            },
            shadowSize: 2
          },
          grid: {
            verticalLines: true,
            hoverable: true,
            clickable: true,
            tickColor: "#d5d5d5",
            borderWidth: 0,
            color: '#fff'
          },
          colors: ["rgba(32, 213, 114, 1.00)", "rgba(17, 203, 224, 1.00)"],
          xaxis: {
            tickColor: "rgba(51, 51, 51, 0.06)",
            mode: "time",
            tickSize: [1, "day"],
            //tickLength: 10,
            axisLabel: "Date",
            axisLabelUseCanvas: true,
            axisLabelFontSizePixels: 12,
            axisLabelFontFamily: 'Roboto, Arial',
            axisLabelPadding: 10
          },
          yaxis: {
            ticks: 8,
            tickColor: "rgba(51, 51, 51, 0.06)",
          },
          tooltip: true
        });

        function gd(year, month, day) {
          return new Date(year, month - 1, day).getTime();
        }

      });
    </script>
  
    <script>
      $(document).ready(function(){
        var options = {
          legend: false,
          responsive: false
        };

        new Chart(document.getElementById("canvas1"), {
          type: 'doughnut',
          tooltipFillColor: "rgba(51, 51, 51, 0.55)",
          data: {
            labels: [
              "20",
              "30",
              "30",
              "28",
              "2"
            ],
            datasets: [{
              data: [20, 30, 30, 2, 28],
              backgroundColor: [
                "#f93b3b",
                "#5fa7e2",
                "#4dba6d",
                "#df56a0",
                "#fbe708"
              ],
              hoverBackgroundColor: [
                "#CFD4D8",
                "#B370CF",
                "#E95E4F",
                "#36CAAB",
                "#49A9EA"
              ]
            }]
          },
          options: options
        });
      });
    </script>
<script>
    $('#outdelete').click(function () {
        $(this).closest('#box1').remove();
    });
</script>

</body>
</html>
