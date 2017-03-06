﻿/// <reference path="angular.js" />
var invotiateApp = angular.module('invotiateModule', ['ui.bootstrap']);
invotiateApp.controller("InvoiceController", ['$scope','$http', function($scope,$http) {

    $scope.vCreditNote = false;//hide Credit Note
    $scope.pType = 1; // setting the first div visible when the page loads

    // For Slider
    $scope.stp = .25;
    //$scope.temp = 0;

    $scope.value = 3.5;
    $scope.min = 3.5;
    $scope.max = 7;
    //$scope.temp2 = 0;
    //$scope.setStep = function () {


    //    if ($scope.value > $scope.temp) {
    //        $scope.temp = $scope.value;
    //        $scope.stp = 10;

    //        //$scope.temp2 = $scope.value;
    //        /*
    //        value=50
    //        temp=40
    //        step=10
            
    //        */
    //        //alert($scope.temp + " step" + $scope.stp);
    //    }
    //    else if ($scope.value <= $scope.temp) {
    //        $scope.stp = 5;
    //        $scope.temp = $scope.value;
           
    //        //$scope.stp = 5;
           
    //        //alert($scope.temp + " step" + $scope.stp);
    //    }
        
    //}





    $scope.emailFormat = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;//for email address
    $scope.phoneFormat = /^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/;//U.S. Phone number  Expression
    //$scope.phoneFormat = /^[1-9]{1}[0-9]{9}$/;//For numeric only
    $scope.alphaFormat = /^[a-zA-Z]*$/;//For alphabets only
    $scope.alphaCommaFStop = /^[a-zA-Z., ]*$/;//Alpha with dot and comma
    $scope.currentDate = new Date();

    $scope.pay = 'To';


    $scope.today = function () {
        $scope.dueDate = new Date();
        $scope.invDate = new Date();
        $scope.dueDate1 = new Date();
        $scope.dueDate2 = new Date();
        $scope.dueDate3 = new Date();
        $scope.earlydisc = new Date();
        $scope.lateprem = new Date();
    };

    $scope.mindate = new Date();
    //$scope.maxdate = new Date();
    $scope.maxdate = new Date($scope.mindate.getFullYear() + 1, $scope.mindate.getMonth(), $scope.mindate.getDate());
    //alert($scope.maxdate);
    $scope.dateformat = "MM/dd/yyyy";
    $scope.today();
    $scope.showduecalendar = function ($event) {
        $scope.showdp = true;
    };
    $scope.showdp = false;
    $scope.showinvcalendar = function ($event) {
        $scope.showdp1 = true;
    };
    $scope.showdp1 = false;
$scope.showduecalendar1 = function ($event) {
        $scope.showdp2 = true;
    };
    $scope.showdp2 = false;
    $scope.showduecalendar2 = function ($event) {
        $scope.showdp3 = true;
    };
    $scope.showdp3 = false;
    $scope.showduecalendar3 = function ($event) {
        $scope.showdp4 = true;
    };
    $scope.showdp4 = false;
    $scope.erlydis = function ($event) {
        $scope.showdp5 = true;
    };
    $scope.showdp5 = false;
    $scope.letpreu = function ($event) {
        $scope.showdp6 = true;
    };
    $scope.showdp6 = false;
    //Bind From Database
    //$scope.legalEntity = {};

    $scope.EntityList = [{
        Id: 1,
        Name: "Eveear Technologies"
    }, {
        Id: 2,
        Name: "ABC Ltd"
    }];

    $scope.change = function () {
        $scope.counter++;

        if ($scope.counter % 2 == 0) {

            $scope.vCreditNote = false;

        }
        else {
            $scope.vCreditNote = true;
        }

        // alert($scope.counter);
    }
    
    $scope.dataEntered = function () {
    	var test={
        		title : $scope.title,
        		country : "India",
    			firstName:$scope.firstName,
        		middleName:$scope.middleName,
        		lastName:$scope.lastName,
        		//legalEntityName:$scope.legalEntityName,
        		dept:$scope.department,
        		//country:$scope.country,
        		phone:$scope.phone,
        		emailAdd:$scope.email,
        		/*firstName : "",
        		middleName : "",
        		lastName : "",
        		legalEntityName : "",
        		department : "",
        		phoneNo : "",
        		emailAddress : ""*/
        };
        $http({
			method : 'POST',
            /*url : 'http://54.67.51.41:8080/invowebproj/submitInvoiceDetails',
            data: JSON.stringify(invoiceDetails)*/
			url : 'http://54.67.51.41:8080/invowebproj/filterUserRecords',
            data: JSON.stringify(test)
        }).then(function(data){
        	$scope.invoiceData=data.data;
        },function(error){
        	//alert("Please correct errors!");
        });
        // alert($scope.counter);
    }

 $scope.CountryList = [
  { CountryId: 1, Name: 'USA' },
  { CountryId: 2, Name: 'India' }
    ];
    
  $scope.CurrencyList = [
{ CurrencyId: 1, Name: 'USD' },
{ CurrencyId: 2, Name: 'INR' }
    ];
    //$scope.city = {};

    var allCountries = [{
        Id: 1,
        Name: "USA"
    }, {
        Id: 2,
        Name: "Australia"
    }];
    var allCurrencies = [{
        Id: 1,
        Name: "USD",
        CountryId: 1
    }, {
        Id: 2,
        Name: "IND",
        CountryId: 1
    }, {
        Id: 3,
        Name: "AUS",
        CountryId: 2
    }];
    //var allCities = [{
    //    Id: 1,
    //    CityName: "Washington DC",
    //    StateId: 1
    //}, {
    //    Id: 2,
    //    CityName: "New York City",
    //    StateId: 2
    //}, {
    //    Id: 3,
    //    CityName: "Brisbane",
    //    StateId: 3
    //}];

   

   






    $scope.counter = 0;
    //autocomplete array for Industry
    $scope.invoiceData = {

        industries: [{ name: "Abc", id: 1 }, { name: "Eveear", id: 2 }, { name: "HCL", id: 3 }],
        firstNames: [{ name: "John", id: 1 }, { name: "Mike", id: 2 }, { name: "Smith", id: 3 }],
        middleNames: [{ name: "Smith", id: 1 }, { name: "William", id: 2 }, { name: "joseph", id: 3 }],
        lastNames: [{ name: "Herry", id: 1 }, { name: "Levi", id: 2 }, { name: "Scott", id: 3 }],
        titles: [{ name: "Mr", id: 1 }, { name: "Mrs", id: 2 }, { name: "Ms", id: 3 }],
        phones: [{ name: "(510)-229-2230", id: 1 }, { name: "510-220-2230", id: 2 }, { name: "5102292230", id: 3 }],
        emails: [{ name: "abc@example.com", id: 1 }, { name: "company@gmail.com", id: 2 }, { name: "username@abc.com", id: 3 }],
        lEntities: [{ name: "Eveear", id: 1 }, { name: "ABX", id: 2 }, { name: "TestIt", id: 3 }],
       

    }

    //$scope.departments = [{ name: "test", id: 1 }, { name: "test1", id: 2 }, { name: "ddd", id: 3 }];
    //$scope.department = undefined;
    //End of autocomple for industry
    $scope.formatLabelI = function (model) {
        for (var i = 0; i < $scope.invoiceData.industries.length; i++) {
            if (model === $scope.invoiceData.industries[i].id) {
                return $scope.invoiceData.industries[i].name;
            }
        }
    }
    //autocomplete array for firstNames
    $scope.formatLabelFN = function (model) {
        for (var i = 0; i < $scope.invoiceData.firstNames.length; i++) {
            if (model === $scope.invoiceData.firstNames[i].id) {
                return $scope.invoiceData.firstNames[i].name;
            }
        }
    }
    
    //autocomplete array for Middlename
    $scope.formatLabelMN = function (model) {
        for (var i = 0; i < $scope.invoiceData.middleNames.length; i++) {
            if (model === $scope.invoiceData.middleNames[i].id) {
                return $scope.invoiceData.middleNames[i].name;
            }
        }
    }

    //autocomplete array for Middlename
    $scope.formatLabelLN = function (model) {
        for (var i = 0; i < $scope.invoiceData.lastNames.length; i++) {
            if (model === $scope.invoiceData.lastNames[i].id) {
                return $scope.invoiceData.lastNames[i].name;
            }
        }
    }

    //autocomplete array for Enter Title
    $scope.formatLabelET = function (model) {
        for (var i = 0; i < $scope.invoiceData.titles.length; i++) {
            if (model === $scope.invoiceData.titles[i].id) {
                return $scope.invoiceData.titles[i].name;
            }
        }
    }

    //autocomplete array for Enter Title
    $scope.formatLabelPN = function (model) {
        for (var i = 0; i < $scope.invoiceData.phones.length; i++) {
            if (model === $scope.invoiceData.phones[i].id) {
                return $scope.invoiceData.phones[i].name;
            }
        }
    }

    //autocomplete array for Email Id
    $scope.formatLabelEID = function (model) {
        for (var i = 0; i < $scope.invoiceData.emails.length; i++) {
            if (model === $scope.invoiceData.emails[i].id) {
                return $scope.invoiceData.emails[i].name;
            }
        }
    }

    //autocomplete array for Invoice No
    $scope.formatLabelLENT = function (model) {
        for (var i = 0; i < $scope.invoiceData.lEntities.length; i++) {
            if (model === $scope.invoiceData.lEntities[i].id) {
                return $scope.invoiceData.lEntities[i].name;
            }
        }
    }

    //autocomplete array for Invoice Amount
    //$scope.formatLabelIA = function (model) {
    //    for (var i = 0; i < $scope.invoiceData.invoiceamounts.length; i++) {
    //        if (model === $scope.invoiceData.invoiceamounts[i].id) {
    //            return $scope.invoiceData.invoiceamounts[i].name;
    //        }
    //    }	
    //}

    //autocomplete array for Invoice Amount
    //$scope.formatLabelCNA = function (model) {
    //    for (var i = 0; i < $scope.invoiceData.cnamounts.length; i++) {
    //        if (model === $scope.invoiceData.cnamounts[i].id) {
    //            return $scope.invoiceData.cnamounts[i].name;
    //        }
    //    }
    //}

    
    $scope.SubmitFormWithEarly = function () {

        // Set the 'submitted' flag to true
        $scope.submitted = true;

        if ($scope.invoiceForm.$valid && $scope.earlyForm.$valid) {

            //alert("Form is valid!");

            //alert($scope.country.CountryId);
            //alert($scope.deptid);
        	$scope.submitForm();
            //alert($scope.firstName);

        }
        else {

            //alert("Please correct errors!");
        }
    }
    $scope.SubmitFormWithLate =function () {

        // Set the 'submitted' flag to true
        $scope.submitted = true;

        if ($scope.invoiceForm.$valid && $scope.lateForm.$valid) {

            //alert("Form is valid!");
            
            //alert($scope.country.CountryId);
            //alert($scope.deptid);
        	$scope.submitForm();
            //alert($scope.firstName);

        }
        else {

            //alert("Please correct errors!");
        }
    }
    
    

    
    $scope.saveForm = function () {

        // Set the 'submitted' flag to true
        $scope.submitted = true;
        $scope.submittedpc = true;

        if ($scope.invoiceForm.$valid && $scope.pcForm.$valid) {

            //alert("Form is valid!");

            //alert($scope.country.CountryId);
            //alert($scope.deptid);
        	$scope.submitForm();
           // alert($scope.firstName);

        }
        else {

            //alert("Please correct errors!");
        }
    }
    
    $scope.calculateNetAmount = function () {
    	  
    	  if($scope.confirmed)
    	  {
    	   $scope.netAmt=$scope.invoiceamount - $scope.cnamount;
    	   
    	  }
    	  else
    	  {
    	   $scope.netAmt=$scope.invoiceamount;
    	  }
    	  
    	 }

    $scope.submitForm = function () {

        // Set the 'submitted' flag to true
        $scope.submitted = true;
        /*var invoiceDetails = {
        		firstName:$scope.firstName,
        		middleName:$scope.middleName,
        		lastName:$scope.lastName,
        		title:$scope.title,
        		//legalEntityName:$scope.legalEntityName,
        		dept:$scope.department,
        		//country:$scope.country,
        		phone:$scope.phone,
        		emailAdd:$scope.email,
        		invoiceNo:$scope.invoice,
        		invoiceDate:$scope.invDate,
        		invoiceAmt:"15",
        		//currencyType:$scope.currency,
        		dueDate:$scope.dueDate,
        		invotiateType:"E",
            };*/
        var invoiceDtls1=
        {"idFileInvo":{"idFile":9,"active":false},
        		"invoice":[{"idInvoice":12312312,
        					"invoiceNo":"121",
        					"idBatchInvoice":1221,
        					"idUserProfile":1221,
        					"terms":"Terms",
        					"currencyType":1,
        					"invoiceAmt":$scope.invoiceamount,
        					"originalAmt":$scope.invoiceamount,
        					"netAmt":$scope.invoiceamount - $scope.cnamount,
        					"summary":"Summary",
        					"fromTo":$scope.firstName +  $scope.lastName,
        					"discountPremium":"ff",
        					"invoiceType":"DRFT",
        					"invoiceStatus":"LIVE",
        					"active":false
        				  }],
        		"idFileCrNt":{"idFile":10,
        						"active":false
        					 },
        		"invoiceNo":"121",
        		"idBatchInvoice":123,
        		"payableReceivable":"PAYTO",
        		"idUserProfileFm":1231,
        		"fromTo":"deded",
        		"isActive":true,
        		"offers":[],
        		"presentCollects":[]
        					 };
        var invoiceDtls=
        {"idFileInvo":{"idFile":9,"active":false},
        		"invoice":[{"idInvoice":12312312,
        					"invoiceNo":$scope.invoice,
        					"idBatchInvoice":1221,
        					"idUserProfile":1221,
        					"terms":"Terms",
        					"currencyType":1,
        					"invoiceAmt":200,
        					"originalAmt":12,
        					"netAmt":11,
        					"summary":"Summary",
        					"fromTo":"343",
        					"discountPremium":"ff",
        					"invoiceType":"DRFT",
        					"invoiceStatus":"LIVE",
        					"active":false
        				  }],
        		"idFileCrNt":{"idFile":10,
        						"active":false
        					 },
        		"invoiceNo":$scope.invoice,
        		"idBatchInvoice":123,
        		"payableReceivable":$scope.pay,
        		"idUserProfileFm":1231,
        		"fromTo":$scope.firstName + $scope.middleName + $scope.lastName,
        		"isActive":true,
        		"offers":[],
        		"presentCollects":[]
        					 };
        var invoiceDetails = {
        		invoiceNo:$scope.invoice,
        		payableReceivable:$scope.pay,
        		fromTo:$scope.firstName + $scope.middleName + $scope.lastName,
        		//title:$scope.title,
        		invoiceType:"DRFT",
        		idBatchInvoice:123,
        		isSaveForLater:true,
        		isActive:true/*,
        		invoice:[{
        			
        		}]*/
        		/*,
        		//legalEntityName:$scope.legalEntityName,
        		dept:$scope.department,
        		//country:$scope.country,
        		phone:$scope.phone,
        		emailAdd:$scope.email,
        		invoiceDate:$scope.invDate,
        		invoiceAmt:"15",
        		//currencyType:$scope.currency,
        		dueDate:$scope.dueDate,
        		invotiateType:"E",*/
            };
        var test={
        		title : "SoftEngg",
        		country : "India"
        		/*firstName : "",
        		middleName : "",
        		lastName : "",
        		legalEntityName : "",
        		department : "",
        		phoneNo : "",
        		emailAddress : ""*/
        };
        $http({
			method : 'POST',
            url : 'http://54.67.51.41:8080/invowebproj/submitInvoiceDetails',
            data: JSON.stringify(invoiceDtls)
        }).then(function(data){
        	
        	$scope.invSuccess='Record saved successfully';
        },function(error){
        	$scope.invSuccess='Record saved successfully';
        	//alert("Please correct errors!");
        });
        /*if ($scope.invoiceForm.$valid) {

        	
            alert($scope.legalEntityName);
            //   //do your stuff here
            //   $scope.value = $scope.legalEntityName;
            //   // var value = $('#selected').val();
            //  // angular.element('#ddlEntity')
            //   // alert($attrs.data-value);


            //   var msglist = $("#ddlEntity");

            //   var show = msglist.data("data-value");
            //msglist.data("data-value",show);


            //  // console.log($attrs.value);
            //  // alert($('#browsers [value="' + $scope.value + '"]').data('value'));
            //   //data - value
            //   //alert($scope.value).data('value');
            //   //alert($scope.legalEntityName);

            //alert("Form is valid!");
        }
        else {

            //alert("Please correct errors!");
        }*/
    }

}]);