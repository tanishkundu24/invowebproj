/// <reference path="angular.js" />
var invotiateApp = angular.module('invotiateModule', []);
invotiateApp.controller("VerifyController", ['$scope','$http', function($scope,$http) {

	$scope.hideResendForm = false;
    
	$scope.submitForm = function () {

    	// Set the 'submitted' flag to true
    	var pwdValidation = {
    			userId:$scope.email,
    			password: $scope.password,
                requestedService: $scope.requestedService,
                _csrf:$scope._csrf
            };
        $scope.submitted = true;

        if ($scope.verifyForm.$valid) {
        	$scope.hideResendForm = true;
        	$http({
				method : 'POST',
	            url : 'http://54.67.51.41:8080/invowebproj/sendVerifyMail',
	            data: JSON.stringify(pwdValidation)
	        }).then(function(data){
	        	$scope.emailSentSuccessfully="Mail sent successfully";
	            // With the data succesfully returned, call our callback
	        });
        	}
        else {
            //alert("Please correct errors!");
            }
    }

}]);

