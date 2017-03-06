/// <reference path="angular.js" />
var invotiateApp = angular.module('invotiateModule', ['ui.bootstrap']);


invotiateApp.controller("myactivityController",['$compile','$scope', '$http', '$attrs', function ($compile,$scope, $http, $attrs) {
    $scope.sortType = 'invoiceno'; // set the default sort type
    $scope.sortReverse = false;  // set the default sort order
    $scope.searchinv = '';     // set the default search/filter term
    
    $scope.legalEntityId = 234;  
   

    
    // FUNCTION TO CALL ON CHANGE OF DROP DOWN LIST VALUES
    
    $scope.GetValue=function(){
    	var negoaction,offerstatus,negotype,legalEntityId;
    	if($scope.negoaction == undefined || $scope.negoaction == ''){
    		negoaction = 'ALL';
    	}else{
    		negoaction = $scope.negoaction;
    	}
    	if($scope.offerstatus == undefined || $scope.offerstatus == ''){
    		offerstatus = 'ALL';
    	}else{
    		offerstatus = $scope.offerstatus;
    	}
    	if($scope.negotype == undefined || $scope.negotype == ''){
    		negotype = 'ALL';
    		
    	}else{
    		negotype = $scope.negotype;
    	}
    	
    var params = {
    		legalEntityId:$scope.legalEntityId,
    		negoaction:negoaction,
    		offerstatus:offerstatus,
    		negotype:negotype,
    }
    
   $http({
			method : 'POST',
            url : 'http://localhost:8080/invowebproj/myactivityfilter',
            data: JSON.stringify(params)
        }).then(function(obj){
        	var R = obj.data;
        	var tbody = "";
        	tbody += '<table id="datatable-checkbox" class="table table-striped table-bordered">';
        	tbody +=  '<thead><tr><th><input type="checkbox" class="myactchk"></th><th><a ng-href="javascript:void(0);" >Invoice No. <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '<th><a ng-href="javascript:void(0);" >From/To <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '<th><a ng-href="javascript:void(0);" >Offer Date <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '<th><a ng-href="javascript:void(0);" >Due Date <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += ' <th><a ng-href="javascript:void(0);" >Currency <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '  <th><a ng-href="javascript:void(0);" >Amount <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '<th><a ng-href="javascript:void(0);" >Net Amount <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '<th><a ng-href="javascript:void(0);" >Discount/<br />Premium <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '<th><a ng-href="javascript:void(0);">Actions </a> </th>';
        	tbody += '</tr></thead>';
            
        	$.each(R, function(i, item) {
        	   tbody+= "<tr>";
        	   tbody+= "<td><input type='checkbox' class='myactchk' name='table_records'></td>";
        	   tbody+= "<td><i class='fa fa-circle "+item.color+"'></i> <a href='javascript:void(0);' class='myactylnk' data-target='#invfile' data-toggle='modal'>"+item.invoiceNo+"</a></td>";
        	   tbody+= "<td>"+item.fromTo+"</td>";
        	   tbody+= "<td>"+item.invoiceStartOn+"</td>";
        	   tbody+= "<td>"+item.invoiceDueOn+"</td>";
        	   tbody+= "<td>"+item.currencyType+"</td>";
        	   tbody+= "<td>"+item.invoiceAmt+"</td>";
        	   tbody+= "<td>"+item.netAmt+"</td>";
        	   tbody+= "<td>"+item.discountPremium+"</td>";
        	   tbody+= '<td><a style="cursor:pointer;" title="Download"  onclick="createPDF('+(i+1)+', \''+item.invoiceStatus+'\',\''+item.invoiceNo+'\',\''+item.fromTo+'\');"><i class="fa fa-download rbluemyact" aria-hidden="true"></i> </a>';
        	   tbody+= "<a style='cursor:pointer;' title='Print' onclick='printDiv(this);'><i class='fa fa-print rbluemyact' aria-hidden='true'></i> </a>";
        	   tbody+= "<a style='cursor:pointer;' title='Archive' onclick='doArchive(this,"+item.idInvoice+");'><i class='fa fa-inbox rredmyact' aria-hidden='true'></i></a>";
        	   tbody+= "</td></tr>";
        	
        	});
        	
        	
        	
        	tbody += '</table>';
        	$('div#table_div').empty();
        	$('div#table_div').html(tbody);
        	$('#datatable-checkbox').DataTable({bFilter: false,bLengthChange: false,info:false});
        	 
        });
    	
    }
    
    
    // SHOW ARCHIVE
    $scope.ShowArchive=function(){
    	var negoaction,offerstatus,negotype,legalEntityId;
    	    	
    var params = {
    				legalEntityId:$scope.legalEntityId,
    			 }
    
   $http({
			method : 'POST',
            url : 'http://localhost:8080/invowebproj/showarchiveitems',
            data: JSON.stringify(params)
        }).then(function(obj){
        	
        	$('div#filter_div').hide();
        	
        	var R = obj.data;
        	var tbody = "";
        	tbody += '<table id="datatable-checkbox" class="table table-striped table-bordered">';
        	tbody +=  '<thead><tr><th><input type="checkbox" class="myactchk"></th><th><a ng-href="javascript:void(0);" >Invoice No. <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '<th><a ng-href="javascript:void(0);" >From/To <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '<th><a ng-href="javascript:void(0);" >Offer Date <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '<th><a ng-href="javascript:void(0);" >Due Date <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += ' <th><a ng-href="javascript:void(0);" >Currency <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '  <th><a ng-href="javascript:void(0);" >Amount <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '<th><a ng-href="javascript:void(0);" >Net Amount <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '<th><a ng-href="javascript:void(0);" >Discount/<br />Premium <i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></a></th>';
        	tbody += '<th><a ng-href="javascript:void(0);">Actions </a> </th>';
        	tbody += '</tr></thead>';
            
        	$.each(R, function(i, item) {
        	   tbody+= "<tr>";
        	   tbody+= "<td><input type='checkbox' class='myactchk' name='table_records'></td>";
        	   tbody+= "<td><i class='fa fa-circle "+item.color+"'></i> <a href='javascript:void(0);' class='myactylnk' data-target='#invfile' data-toggle='modal'>"+item.invoiceNo+"</a></td>";
        	   tbody+= "<td>"+item.fromTo+"</td>";
        	   tbody+= "<td>"+item.invoiceStartOn+"</td>";
        	   tbody+= "<td>"+item.invoiceDueOn+"</td>";
        	   tbody+= "<td>"+item.currencyType+"</td>";
        	   tbody+= "<td>"+item.invoiceAmt+"</td>";
        	   tbody+= "<td>"+item.netAmt+"</td>";
        	   tbody+= "<td>"+item.discountPremium+"</td>";
        	   tbody+= '<td><a style="cursor:pointer;" title="Download" onclick="createPDF('+(i+1)+', \''+item.invoiceStatus+'\',\''+item.invoiceNo+'\',\''+item.fromTo+'\');"><i class="fa fa-download rbluemyact" aria-hidden="true"></i> </a>';
        	   tbody+= "<a style='cursor:pointer;' title='Print' onclick='printDiv(this);'><i class='fa fa-print rbluemyact' aria-hidden='true'></i> </a>";
        	   tbody+= "</td></tr>";
        	
        	});
        	
        	tbody += '</table>';
        	$('div#table_div').empty();
        	$('div#table_div').html(tbody);
        	$('div#archive_div').css('display', 'block');
        	$('#datatable-checkbox').DataTable({bFilter: false,bLengthChange: false,info:false});
        	 
        });
    	
    }
    
    $scope.payradio = 'PAYTO';
    $scope.typeradio = 'ERLYDIS';
    $scope.statusradio = 'LIVE';
    $scope.formatradio = 'pdf';
    
    $scope.donwloadInvoice=function(action){
    	
    	var negoaction,offerstatus,negotype,frmdt,todt,format,legalEntityId;
    	var date1,date2,action;
    	
    	if($scope.fromdateradio == undefined || $scope.fromdateradio == ''){
    		alert('Please seletct from date');
    		return;
    	}else{
    		date1 = new Date($scope.fromdateradio);
    		frmdt = (date1.getDate() + '/' +  (date1.getMonth() + 1)+ '/' +  date1.getFullYear());
    	}
    	
    	if($scope.todateradio == undefined || $scope.todateradio == ''){
    		alert('Please seletct to date');
    		return;
    	}else{
    		date2 = new Date($scope.todateradio);
    		todt = ((date2.getDate()+1) + '/' +  (date2.getMonth() + 1)+ '/' +  date2.getFullYear());
    	}
    	
    	if($scope.payradio == undefined){
    		negotype = 'ALL';
    	}else{
    		negotype = $scope.payradio;
    	}
    	
    	if($scope.typeradio == undefined){
    		negoaction = 'ALL';
    	}else{
    		negoaction = $scope.typeradio;
    	}
    	
    	if($scope.statusradio == undefined){
    		offerstatus = 'ALL';
    	}else{
    		offerstatus = $scope.statusradio;
    	}
    	
    	if($scope.formatradio == undefined){
    		format = 'PDF';
    	}else{
    		format = $scope.formatradio;
    	}
    	
    	
    	
    var params = {
    		legalEntityId:$scope.legalEntityId,
    		negoaction:negoaction,
    		offerstatus:offerstatus,
    		negotype:negotype,
    		fromdate:frmdt,
    		todate:todt,
    		format:format,
    		action:action
    }
    console.log(params);
   $http({
			method : 'POST',
            url : 'http://localhost:8080/invowebproj/myactivitypopup',
            data: JSON.stringify(params)
        }).then(function(obj){
        	 $('.modal').modal('hide');
        	if(action == 'download'){
        		if(obj.data == 'NO DATA FOUND'){
        			alert(obj.data+" TO DOWNLOAD.");
        		}else if(obj.data == 'ERROR'){
        			alert('Error occured while donwloading!');
        		}else{
        			window.open(obj.data,'_blank');
        		}        		
        	}else if(action == 'email'){
        		if(obj.data == 'success'){
        			alert('Mail sent successfully with attachment!');
        		}else if(obj.data == 'NO DATA FOUND'){
        			alert(obj.data+" TO EMAIL.");
        		}else{
        			alert('Error occured while sending mail!');
        		}
        	}
        }
        );
    	
    }
   
    
    $scope.currentDate = new Date();

    $scope.today = function () {
        $scope.fromdateradio = new Date();
        $scope.todateradio = new Date();

    };

    $scope.mindate = new Date();
    //$scope.maxdate = new Date();
    $scope.maxdate = new Date($scope.mindate.getFullYear() + 1, $scope.mindate.getMonth(), $scope.mindate.getDate());
    //alert($scope.maxdate);
    $scope.dateformat = "dd/MM/yyyy";
    $scope.today();
    $scope.showfrmcalendar = function ($event) {
        $scope.showdp = true;
    };
    $scope.showdp = false;
    $scope.showtocalendar = function ($event) {
        $scope.showdp1 = true;
    };
    $scope.showdp1 = false;
    
    //Setting overview values in UI
    $scope.liveInvoice = 40;
    $scope.savedInvoice = 30;
    $scope.expiredInvoice = 10;
    $scope.completedInvoice = 20;
    
    
}]);






