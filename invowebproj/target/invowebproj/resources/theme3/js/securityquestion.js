/// <reference path="angular.js" />
var invotiateApp = angular.module('invotiateModule', []);
invotiateApp.controller("SQuestionsController", ['$scope','$http', function($scope,$http) {

	$scope.submitForm = function () {

    	// Set the 'submitted' flag to true
        $scope.submitted = true;
        var qnAns = {
        		question:$scope.question1,
    			answer: $scope.answer1,
            };
        //incorrectAns
        if ($scope.secquesForm.$valid) {
			$http({
				method : 'POST',
	            url : 'http://54.67.51.41:8080/invowebproj/securityQuestionsVerification',
	            data: JSON.stringify(qnAns)
	        }).then(function(data){
	            // With the data succesfully returned, call our callback
	        	if(data.data.msg=='success')
		        	{
	        		window.location.href='reset-password';
		        	}
	        	else
	        		{
	        		$scope.incorrectAns = 'Your answer is wrong';
	        		}
	        });
        	}
        else {
            //alert("Please correct errors!");
            }
    }

}]);