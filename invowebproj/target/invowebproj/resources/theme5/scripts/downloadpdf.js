function tableToJson(ind,stt,invNo,table) {
        var data = [];

        var headers = ["Status","Invoice No.","From/To","Offer Date","Due Date","Currency","Amount","Net Amount","Dis./Premium"];
         specialElementHandlers = {
                // element with id of "bypass" - jQuery style selector
                '#bypassme': function(element, renderer) {
                    // true = "handled elsewhere, bypass text extraction"
                    return true
                }
            }
            , margins = {
			  top: 30,
			  bottom: 20,
			  left: 0,
			  width: 100
			 };
			  data.push(headers);
			        // go through cells
			    //    for (var i=1; i<table.rows.length;i++) {
			
			            var tableRow = table.rows[ind];
			            var rowData = {};
			            for (var j=0; j<tableRow.cells.length-1,j<9 ; j++) {
			            		rowData[ headers[j] ] = (j==0?stt:(j==1?invNo:tableRow.cells[j].innerHTML)) ; 
			            }
			            data.push(rowData);
			         
			       // } 
			        return rowData;//data;
			    }


    function createPDF(index,status,invNo, company){ 
			//orientation, unit, format, compress
			var doc = new jsPDF('portrait','pt','A3');
			
			/*doc.setProperties({
		        title: 'Test PDF Document',
		        subject: 'This is the subject',
		        author: 'author',
		        keywords: 'generated, javascript, web 2.0, ajax',
		        creator: 'author'
		    });*/
			
			var imgData = 'data:image/png;base64,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';
			doc.addImage(imgData, 'PNG', 30, 100, 55, 55);
			doc.setFontSize(30);
		//	doc.setTextColor(255, 0, 0);
			doc.text(350, 100, 'Invoice Details');
			
		//	doc.setLineWidth(0.5);
		//	doc.line(550, 100, 250, 100);
			var header = [1,2,3,4,5,6,7,8,9];
			    table = tableToJson(index,status,invNo,$('#datatable-checkbox').get(0),header, {
			    left:10,
			//    right:10,
			    top:500,
			 //   bottom: 50,
			    width: 800,
			    autoSize:false,
			    printHeaders: true
			    }); 
			 
		//	    doc.setFontSize('10', 'pt', 'A3','true');  
		//	    doc.setTextColor(0,0,0)
			    doc.setFontSize(10);
			    
			 
			    
			$.each(table, function(i, row){
					
			 $.each(row, function(j,cell){
			/* if (j=="Email" || j==3 || j=="Adresse de Facturation" || j==4){
			  doc.cell(1,10,40,20,cell,i); 
			 }
			 else{*/
				
			  //leftMargin, topMargin, cellWidth, headerRowHeight, cellContent, i				 
			  doc.cell(50,300,80,20,cell,i);
			 //}
			
			 });
			});
			/*doc.line(100,100,100,100);
			doc.setLineWidth(0.5);
			doc.line(20, 25, 160, 25);
			doc.text(30,20,"Notes");*/
			doc.save('Invoice_'+new Date().getTime()+'.pdf');
			
			
			// AJAX call to download PDF using server side code
			var params = table;
			console.log(params);
	    	$.ajax({
	    			method : 'POST',
	    			contentType : "application/json",
	    			url : 'http://localhost:8080/invowebproj/downloads/row/pdf',
	    			data: JSON.stringify(params),
	    			success: function(obj){
	    		  }
	    		});		
		}
    
    function doArchive(ele, idInvoice){
    	var result;
    	var $element = $(ele).closest('tr');
    	
    	var params = { invoiceNo : idInvoice }
    	$.ajax({
    			method : 'POST',
    			contentType : "application/json",
    			url : 'http://localhost:8080/invowebproj/archiveinvoice',
    			data: JSON.stringify(params),
    			success: function(obj){
    			  result = obj.data;
    		  }
    		}).done(function() {
    			if(result == 'ERROR'){
    				alert('Error occured while archiving data. Try again.');
    			}else{
    				table = $('#datatable-checkbox').DataTable();
    				table.row($element).remove().draw();
    				alert('Archived');
    				
    			}
    		});
    }
    
    function printDiv(ele) {
    	
    	var $tr = $(ele).closest('tr');
    	$tr.remove('td:first');
    	$tr.remove('td:last');
    	var tr = $tr.html();
    	var html = '<html><body><table>'
	    	html +=  '<thead><tr><th>Invoice No. </th>';
	    	html += '<th>From/To </th>';
	    	html += '<th>Offer Date</th>';
	    	html += '<th>Due Date </th>';
	    	html += ' <th>Currency </th>';
	    	html += '  <th>Amount </th>';
	    	html += '<th>Net Amount </th>';
	    	html += '<th>Discount/<br />Premium </th>';    	
	    	html += '</tr></thead>';
	    	html += tr;
	    	html += '</table></body></html>';
	    	
        var printContents = html;
        var originalContents = document.body.innerHTML;

        document.body.innerHTML = printContents;

        window.print();

        document.body.innerHTML = originalContents;
   }

 