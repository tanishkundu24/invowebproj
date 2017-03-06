/// <reference path="angular.js" />
var invotiateApp = angular.module('invotiateModule', []);
invotiateApp.controller("LoginController", ['$scope','$http', function($scope,$http) {

	$scope.emailFormat = /^[a-z]+[a-z0-9._]+@[a-z]+\.[a-z.]{2,5}$/;
    $scope.submitForm = function () {

        // Set the 'submitted' flag to true
    	var LoginForm = {
                email: $scope.email,
                password: $scope.password,
                requestedService: $scope.requestedService,
                _csrf:$scope._csrf,
                rememberme:$scope.rememberme
            };
        $scope.submitted = true;
        if ($scope.loginForm.$valid) {
            //do your stuff here
    			$http({
    				method : 'POST',
    	            url : 'http://54.67.51.41:8080/invowebproj/j_spring_security_check?email='+encodeURIComponent($scope.email)+'&password='+encodeURIComponent($scope.password)+'&submit=Login&rememberme='+encodeURIComponent($scope.rememberme),
    	            headers: {
    	            	'Content-Type':'application/x-www-form-urlencoded',
    	            }
    	        }).then(function(data){
    	            // With the data succesfully returned, call our callback
    	        	var msg="Login Successful!!";
    	        	window.location.href='welcome?msg='+msg;
    	        },function(error)
    	        {
    	        	$scope.invalidCredential = 'Invalid Username or Password';
    	        	//$scope.acLocked = "The account is locked. Please contact customer support at email@invotiate.com."
    	        });
            
        }
        else {
        	
            ////alert("Please correct errors!");
        }
    }

}]);