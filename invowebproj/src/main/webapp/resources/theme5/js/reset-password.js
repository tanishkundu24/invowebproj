/// <reference path="angular.js" />
var invotiateApp = angular.module('invotiateModule', []);

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

invotiateApp.controller("ResetController", ['$scope','$location','$http', function($scope,$location,$http) {

	
	//alert($location.absUrl().split('?')[1].split('=')[2]);
    $scope.submitForm = function () {

    	// Set the 'submitted' flag to true
    	var pwdValidation = {
    			userId:$location.absUrl().split('?')[1].split('=')[2], //  need to modify when modifying url for sake of email id
    			otp: $scope.usrotp,
    			password: $scope.password,
                requestedService: $scope.requestedService,
                _csrf:$scope._csrf
            };
        $scope.submitted = true;
        console.log(JSON.stringify(pwdValidation));

        if ($scope.resetForm.$valid) {
        //	alert("calling validator");
			$http({
				method : 'POST',
	            url : 'http://54.67.51.41:8080/invowebproj/passwordValidator',
	            data: JSON.stringify(pwdValidation)
	        }).then(function(data){
	            // With the data succesfully returned, call our callback
	        	if(data.data.msg=='success')
	        	{
	        		window.location.href='login';
	        	}
	        	else
	        	{
		        	$scope.passwordMismatch=data.data.msg;
		        	alert(data.data.testObj);
	        	}
	        },
	        function(error){
	        	window.location.href='reset-password';
	        });
        
        	}
        else {
            //alert("Please correct errors!");
            }
    }

}]);