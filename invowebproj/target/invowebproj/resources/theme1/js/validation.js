/// <reference path="angular.js" />
var invotiateApp=angular.module('invotiateModule', []);

// create angular controller
invotiateApp.controller('loginValidationController', function ($scope) {

    $scope.email = $('#txtUserName').val();
    $scope.password = $('#txtPassword').val();


});
invotiateApp.controller('resetpassValidationController', function ($scope) {

    $scope.email = $('#txtEmailOrUserName').val();
   // $scope.password = $('#txtPassword').val();

});
invotiateApp.controller('resetpassValidationController1', function ($scope) {

    $scope.phone = $('#txtPhoneNo').val();
    

});
invotiateApp.controller('registerController', function ($scope) {

    $scope.firstName = $('#txtFirstName').val();
    $scope.lastName = $('#txtLastName').val();
    $scope.remail = $('txtEmailId').val();
    $scope.password = $('txtPassword').val();
    $scope.cnfrmPassword = $('txtCnfmPassword').val();


});