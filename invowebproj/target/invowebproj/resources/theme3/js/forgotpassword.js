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
invotiateApp.controller("resetPassController", ['$scope','$http', function($scope,$http) {
$scope.vEmail = false;

$scope.verifyEmail = function () {
	if ($scope.resetForm.$valid) {

		$http({
			method : 'GET',
            url : 'http://54.67.51.41:8080/invowebproj/securityQuestion?mailId='+$scope.email,
        }).then(function(data){
            // With the data succesfully returned, call our callback
        	if(data.data.status==true)
	        	{
        		//$scope.questionCount = 1; //This is question count from Database
                if (data.data.msg !="NoQuestions") {
                    $scope.uQuestion = data.data.msg;//Set the Question of DB here
                    $scope.secForm.txtEmailId.$setValidity("unique", true);
                    $scope.vEmail = true;
                    $scope.invalidUserId = '';
                    $scope.qNotSetup ='';
                }
                else {
                    $scope.vEmail = false;
                    $scope.qNotSetup = 'No security question was setup.';
                    $scope.vEmail = true;
                    $scope.invalidUserId = '';
                }
	        	}
        	else
        		{
        		$scope.qNotSetup = 'UserId is invalid';
        		}
        });
	}
}


$scope.hideResetForm = false;

$scope.submitAnswerForm = function () {

    // Set the 'submitted' flag to true

    $scope.submitted = true;
    if ($scope.resetForm.$valid) {
    var qnAns = {
    		question:$scope.uQuestion,
			answer: $scope.answer,
        };
    $http({
		method : 'POST',
        url : 'http://54.67.51.41:8080/invowebproj/securityQuestionsVerification',
        data: JSON.stringify(qnAns)
    }).then(function(data){
        // With the data succesfully returned, call our callback
    	if(data.data.msg=='success')
        	{
    		$scope.hideResetForm = true;
    		$scope.vEmail = false;
            $scope.qNotSetup = '';
            $scope.vEmail = true;
            $scope.invalidUserId = '';
        	}
    	else
    		{
    		$scope.invalidAnswer = 'Invalid security answer.';
            //alert("Please correct errors!");
    		}
    });
    }

}


$scope.submitForm = function () {

    // Set the 'submitted' flag to true
    //$scope.setPasswordDiv = false;
    $scope.submittedr = true;
    if ($scope.resetForm.$valid) {
    var pwdValidation = {
			userId:$scope.email,
			password: $scope.password,
            requestedService: $scope.requestedService,
            _csrf:$scope._csrf
        };
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
        	//$scope.passwordMismatch=data.data.msg;
    		//alert("Please correct errors!");
    		$scope.invalidAnswer = 'Password doesnt match the criteria';
    	}
    },
    function(error){
    	//alert("Please correct errors!");
    });
    }

}
}]);
