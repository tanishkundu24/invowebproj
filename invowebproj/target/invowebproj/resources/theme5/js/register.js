/// <reference path="angular.js" />
var invotiateApp = angular.module('invotiateModule', []);
invotiateApp.directive('ngInitial', function() {
	  return {
	    restrict: 'A',
	    controller: [
	      '$scope', '$element', '$attrs', '$parse', function($scope, $element, $attrs, $parse) {
	        var getter, setter, val;
	        val = $attrs.ngInitial || $attrs.value;
	        getter = $parse($attrs.ngModel);
	        setter = getter.assign;
	        setter($scope, val);
	      }
	    ]
	  };
	});
invotiateApp.directive('ngCompare', function () {
    return {
        require: 'ngModel',
        link: function (scope, currentEl, attrs, ctrl) {
            var comparefield = document.getElementsByName(attrs.ngCompare)[0]; //getting first element
            compareEl = angular.element(comparefield);

            //current field key up
            currentEl.on('keyup', function () {
                if (compareEl.val() != "") {
                    var isMatch = currentEl.val() === compareEl.val();
                    ctrl.$setValidity('compare', isMatch);
                    scope.$digest();
                }
            });

            //Element to compare field key up
            compareEl.on('keyup', function () {
                if (currentEl.val() != "") {
                    var isMatch = currentEl.val() === compareEl.val();
                    ctrl.$setValidity('compare', isMatch);
                    scope.$digest();
                }
            });
        }
    }
});

invotiateApp.directive('tooltip', function () {
    return {
        restrict: 'A',
        link: function (scope, element, attrs) {
            $(element).hover(function () {
                // on mouseenter
                $(element).width('100px');
                $(element).tooltip('show');
            }, function () {
                // on mouseleave
                $(element).tooltip('hide');
            });
        }
    };
});
//Directive for scroll

invotiateApp.directive('myDirective', function () {
    //$scope.name = 'World';
    return {
        link: function (scope, element, attr) {
            //console.log(element);
            //scope.chkTC = false;
            element.on('scroll', function () {
                
                if (element[0].offsetHeight + element[0].scrollTop >= element[0].scrollHeight) {
                   
                    //scope.test123 = true;
                    
                    var myEl = angular.element(document.querySelector('#divtc'));
                    myEl.attr('class', "form-group ng-show");
                    //alert('bottom');
                   
                }
            });
        }

    }
});

//End of Directive for scroll
invotiateApp.controller("RegisterController", ['$scope','$http', function($scope,$http) {

	$scope.emailFormat = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
    $scope.phoneFormat = /^[1-9]{1}[0-9]{9}$/;
	$scope.LegalEntityList = [];
	$scope.LegalEntityParentList = [];
    $scope.FinalLegalList=[];
	var result = document.getElementsByClassName("in");
    if (result[0] != "undefined") {

        $scope.modalValidate = function () {
        	if ($scope.modalForm.$valid) {
                //Do the legal Enetity Stuff here
        		$scope.LegalEntityList.push({
       			   legalEntityName: $scope.EntityName,
      			   country: $scope.eCountry,
      			 defaultCurrency: $scope.eCurrency,
      			   industry: $scope.eindustry,
      			   hsaRight: "true",
  			       active: "true"
      			  });
                $scope.EntityName = '';
                $scope.eCountry = '';
                $scope.eCurrency = '';
                $scope.eindustry = '';
                $('.modal').modal('hide');
            }
        }

        $scope.addMoreLegal = function () {

            if ($scope.modalForm.$valid) {
                //Do the legal Enetity Stuff here and clear the value
            	$scope.LegalEntityList.push({
        			   legalEntityName: $scope.EntityName,
          			   country: $scope.eCountry,
          			 defaultCurrency: $scope.eCurrency,
          			   industry: $scope.eindustry,
          			   hsaRight: "true",
      			       active: "true"
          			  });
                $scope.EntityName = '';
                $scope.eCountry = '';
                $scope.eCurrency = '';
                $scope.eindustry = '';
                //alert("clicked on more button");
            }
        }
    }
    $scope.submitForm = function () {

    	// Set the 'submitted' flag to true
    	/*var rgdt = {
    			fName: $scope.firstName,
    			mName: $scope.midName,
    			lName: $scope.lastName,
                name:$scope.username,
                user:{
                	eMail:$scope.email,
                	password:$scope.password
                	},
                legalEntities: [{
                            	   country: {
                            		    idCountry: $scope.country
                            		   },
                            	   defaultCurrency:
                            		   {idCurrency:$scope.currency},
                            	   legalEntityName:$scope.legalEntityName,
                            	   industry:$scope.industry,
                            	   hasRight:"true",
                            	   active:"true"
                               }],
               addresses:[{
            	   line1:$scope.uAddress1,
            	   line2:$scope.uAddress2,
            	   city:$scope.uAddress3,
            	   country: {
           		    idCountry: $scope.country
           		   },
               }]
                
            };*/
    	
        $scope.submitted = true;
        
        if ($scope.regForm.$valid) {
        	
        	$scope.LegalEntityParentList = [];
        	$scope.FinalLegalList=[];
        	
        	$scope.LegalEntityParentList.push({
 			   legalEntityName: $scope.legalEntityName,
			   country: {
			    idCountry: $scope.country
			   },
			   defaultCurrency: {
			    idCurrency: $scope.currency
			   },
			   industry: $scope.industry,
			   hsaRight: "true",
			   active: "true"
			  });
        	for (var i = 0; i < $scope.LegalEntityList.length; i++) {

                alert("LegalName: " + $scope.LegalEntityList[i].legalEntityName);
               
        		$scope.FinalLegalList.push({
        			   legalEntityName: $scope.LegalEntityList[i].legalEntityName,
          			   country: {
          			    idCountry: $scope.LegalEntityList[i].country
          			   },
          			   defaultCurrency: {
          			    idCurrency: $scope.LegalEntityList[i].defaultCurrency
          			   },
          			   industry: $scope.LegalEntityList[i].industry,
          			   hsaRight: "true",
      			       active: "true"
          			  })

               

            }
            for (var i = 0; i < $scope.LegalEntityParentList.length; i++) {
                $scope.FinalLegalList.push({
      			   legalEntityName: $scope.legalEntityName,
    			   country: {
    			    idCountry: $scope.country
    			   },
    			   defaultCurrency: {
    			    idCurrency: $scope.currency
    			   },
    			   industry: $scope.industry,
    			   hsaRight: "true",
    			   active: "true"
    			  })
            }
        	var rgdt={
       			 name : $scope.firstName,
       			 user : {
       			  idUser : null,
       			  password : $scope.password,
       			  eMail : $scope.email,
       			  securityQAs : [ 
       			  {
       			   idSecurityQA : null,
       			   user : null,
       			   securityQuestion : {
       			    idSecurityQuestion : "5"
       			   },
       			   answer : "MySecrateAnswer",
       			   qOrder : "1",
       			   active : "true"
       			  }
       			 ],
       			  active : "true"
       			 },
       			 fName : $scope.firstName,
       			 mName : $scope.midName,
       			 lName : $scope.lastName,
       			 phoneNo: $scope.phone,
       			 addresses: [ 
       			  {
       			   line1: $scope.uAddress1,
       			   line2: $scope.uAddress2,
       			   city: $scope.uAddress3,
       			   pinCode: "000000",
       			   country: {
       			    idCountry: $scope.country
       			   },
       			   type: "PRNT",
       			   active: "true"
       			  } 
       			 ],
       			 legalEntities: $scope.FinalLegalList,
       			 subscribedPackage : {
       			  idPackage : "5"
       			 },
       			 active : "true",
       			 validated : "false",
       			 consultant : "true",
       			 bkKeeperAcLegal : "true"
       			};


            $scope.counter = 0;
            $scope.change = function () {
                $scope.counter++;
                //alert($scope.counter);
            }


			$http({
				method : 'POST',
	            url : 'http://54.67.51.41:8080/invowebproj/postRegData',
	            data: JSON.stringify(rgdt)
				/*url : 'http://54.67.51.41:8080/invowebproj/securityQuestionsVerification',
	            data: JSON.stringify(qnAns)*/
	        }).then(function(data){
	        	
	        	if(data.data.msg=='success')
	        	{
	        		var msg='Registration Successful!!';
	        		window.location.href='welcome?msg='+msg;
	        	}
	        	else
	        	{
		        	$scope.regError=data.data.msg;
	        	}
	        });
        }
        else
    	{
        	//alert("Please correct errors!");
    	}
    }

}]);
