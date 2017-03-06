package com.invoproj.service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.Transport;
import javax.mail.Session;
import javax.mail.PasswordAuthentication;
import java.util.Properties;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.invoproj.beans.servicebeans.ActivityListParams;
import com.invoproj.beans.servicebeans.MyActivityData;
import com.invoproj.beans.servicebeans.MyActivityOverview;
import com.invoproj.beans.servicebeans.MyActivityResponse;
import com.invoproj.constants.InvokeDetails;
import com.invoproj.util.CSVUtils;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.html.WebColors;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.codec.Base64;

@Service
public class MyActivityServiceImpl implements MyActivityService {
	
	RestTemplate rest = new RestTemplate();
	HttpHeaders headers = new HttpHeaders();
	HttpEntity<String> entity = null;
	ObjectMapper mapper = new ObjectMapper();
	
	
	final static Font catFont = new Font(Font.FontFamily.TIMES_ROMAN, 18,Font.BOLD);
	final static  Font redFont = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.NORMAL, BaseColor.RED);
	final static  Font subFont = new Font(Font.FontFamily.TIMES_ROMAN, 16, Font.BOLD);
	final static  Font smallBold = new Font(Font.FontFamily.TIMES_ROMAN, 12,Font.BOLD);

	@Override
	public List<MyActivityData> callMyActivityDataService(String action, Long legalEntityId) {

		UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(InvokeDetails.MY_ACTIVITY_DATA)
		        .queryParam("idLegalEntity", legalEntityId);
		
		headers.set("content-type", "application/json");
		entity = new HttpEntity<String>(headers);
	
	    ResponseEntity<MyActivityResponse> response = null;
		
		try{
			response = rest.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, MyActivityResponse.class);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return response.getBody().getActivity();
	}

	@Override
	public MyActivityOverview callMyActivityOverviewService(String action, Long legalEntityId) {

		UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(InvokeDetails.MY_ACTIVITY_OVERVIEW)
		        .queryParam("idLegalEntity", legalEntityId);
		
		headers.set("content-type", "application/json");
		entity = new HttpEntity<String>(headers);
	
	    ResponseEntity<MyActivityResponse> response = null;
	    MyActivityOverview finalObj = null;
		
		try{
			response = rest.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, MyActivityResponse.class);
			finalObj = response.getBody().getActivityOverviews();
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return finalObj;
	}
	
	
	@Override
	public List<MyActivityData> callMyActivityDataServiceWithReqParam(Long legalEntityId, String negoaction,
			String offerstatus, String negotype) {

		UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(InvokeDetails.MY_ACTIVITY_DATA_PARAMS)
		        .queryParam("idLegalEntity", legalEntityId)
		        .queryParam("invoiceType", negoaction)
		        .queryParam("invoiceStatus", offerstatus)
		        .queryParam("payableReceivable", negotype);
		
		headers.set("content-type", "application/json");
		entity = new HttpEntity<String>(headers);
	
	    ResponseEntity<MyActivityResponse> response = null;
		
		try{
			response = rest.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, MyActivityResponse.class);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return response.getBody().getActivity();
	}

	@Override
	public boolean callInvoiceEmailService(String path, String format) { 		

		boolean flag=false;
        String username = "devanshuk@eveear.com";
        String password = "DevanshuK12";

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");

        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
                    protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });
        
        String filename = null;

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("tanishk@eveear.com"));
            message.setSubject("Invoice Attachment");
            
         // Create the message part
            BodyPart messageBodyPart = new MimeBodyPart();

            // Now set the actual message
            messageBodyPart.setText("Dear User! Please find the attached Invoice file.");

            // Create a multipart message
            Multipart multipart = new MimeMultipart();

            // Set text message part
            multipart.addBodyPart(messageBodyPart);

            // Part two is attachment
            messageBodyPart = new MimeBodyPart();
            filename = path+format+"/Invoice."+format;
            DataSource source = new FileDataSource(filename);
            messageBodyPart.setDataHandler(new DataHandler(source));
            messageBodyPart.setFileName("Invoice."+format);
            System.out.println("path for file is : "+filename);
            System.out.println("name for file is : Invoice."+format);
            multipart.addBodyPart(messageBodyPart);

            // Send the complete message parts
            message.setContent(multipart);
            
            Transport.send(message);
            flag = true;
        } catch (MessagingException e) {
            e.printStackTrace();
            flag = false;
        }
        //Delete the file after send as attachment
        if(flag){
        	Path file = Paths.get(filename);
        	if (Files.exists(file)) 
            {
        		try {
					Files.deleteIfExists(file);
				} catch (IOException e) {
					e.printStackTrace();
				}
            }
        }
		return flag;
		}

	@Override
	public List<MyActivityData> callMyActivityDataServiceWithPopUpParam(Long legalEntityId, String fromdate,
			String todate, String negoaction, String offerstatus, String negotype) {
		
		UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(InvokeDetails.MY_ACTIVITY_POPUP_PARAMS)
		        .queryParam("idLegalEntity", legalEntityId)
		        .queryParam("startDate", fromdate)
		        .queryParam("endDate", todate)
		        .queryParam("invoiceType", negoaction)
		        .queryParam("invoiceStatus", offerstatus)
		        .queryParam("payableReceivable", negotype);
		
		headers.set("content-type", "application/json");
		entity = new HttpEntity<String>(headers);
	
	    ResponseEntity<MyActivityResponse> response = null;
	    
	    try{
			response = rest.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, MyActivityResponse.class);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	    
		return response.getBody().getActivity();
	}

    public boolean createUIRowPdf(String path, ActivityListParams params)
      {
    	boolean res = false;
    	try{
    	
    		File theDir = new File(path);
			if (!theDir.exists()) {
				 theDir.mkdirs();
			}
			
        	// step 1
            Document document = new Document(PageSize.A3);
            
            // Create and add a Paragraph
            Paragraph p
                = new Paragraph("Invoice Details", new Font(FontFamily.HELVETICA,22));
            p.setAlignment(Element.ALIGN_CENTER);
            
            // step 2
            PdfWriter.getInstance(document, new FileOutputStream(path+"Invoice.pdf"));
            // step 3
            document.open();
            document.add(new Paragraph(""));
            document.add( Chunk.NEWLINE );
            document.add(p);
            
            Image img = Image.getInstance(Base64.decode("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"));
            img.setAbsolutePosition(65f, 1070f);
            img.scaleAbsolute(50, 50);
            document.add(img);
            // add a couple of blank lines
            document.add( Chunk.NEWLINE );
            document.add( Chunk.NEWLINE );
            document.add( Chunk.NEWLINE );
            document.add( Chunk.NEWLINE );
            document.add( Chunk.NEWLINE );
            document.add( Chunk.NEWLINE );
            document.add( Chunk.NEWLINE );
            
            
            String[] headers = {"Status","Invoice No.","From/To","Offer Date","Due Date","Currency","Amount","Net Amount","Dis./Premium"};
            
            int columns = headers.length;
            
            // a table with three columns
            PdfPTable table = new PdfPTable(columns);
            table.setTotalWidth(700);
            table.setLockedWidth(true);
            // the cell object
            PdfPCell cell;
            BaseColor myColor = WebColors.getRGBColor("#DCDCDC");
            for(int h=0;h<headers.length;h++){
            	cell = new PdfPCell(new Paragraph(headers[h]));
            	cell.setFixedHeight(20);
            	cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
            	cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            	cell.setBackgroundColor(myColor);
                table.addCell(cell );
            }
            
			cell = new PdfPCell(new Paragraph(params.getStatus()));
			cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
			cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell );
            cell = new PdfPCell(new Paragraph(params.getInvoiceNo()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell );
            cell = new PdfPCell(new Paragraph(params.getFrmto()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell );
            cell = new PdfPCell(new Paragraph(params.getOfrdt()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell );
            cell = new PdfPCell(new Paragraph(params.getDuedt()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell );
            cell = new PdfPCell(new Paragraph(params.getCurr()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell );
            cell = new PdfPCell(new Paragraph(params.getAmt()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell );
            cell = new PdfPCell(new Paragraph(params.getNetamt()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell );
            cell = new PdfPCell(new Paragraph(params.getDisprem()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell );
                        
            		
            table.setHorizontalAlignment(Element.ALIGN_CENTER);
            
            // step 4
            document.add(table);
            // step 5
            document.close();
            
            res = true;
    	}catch(Exception e){
    		e.printStackTrace();
    		return false;
    	}
            
            return res;
        }
	
    public void createPdf(String filename,List<MyActivityData> datalist)
        throws IOException, DocumentException {
    	// step 1
        Document document = new Document(PageSize.A3);
        
        // Create and add a Paragraph
        Paragraph p
            = new Paragraph("Invoice Details", new Font(FontFamily.HELVETICA,22));
        p.setAlignment(Element.ALIGN_CENTER);
        
        // step 2
        PdfWriter.getInstance(document, new FileOutputStream(filename));
        // step 3
        document.open();
        document.add(new Paragraph(""));
        document.add( Chunk.NEWLINE );
        document.add(p);
        
        Image img = Image.getInstance(Base64.decode("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"));
        img.setAbsolutePosition(65f, 1070f);
        img.scaleAbsolute(50, 50);
        document.add(img);
        // add a couple of blank lines
        document.add( Chunk.NEWLINE );
        document.add( Chunk.NEWLINE );
        document.add( Chunk.NEWLINE );
        document.add( Chunk.NEWLINE );
        document.add( Chunk.NEWLINE );
        document.add( Chunk.NEWLINE );
        document.add( Chunk.NEWLINE );
        
        
        String[] headers = {"Status","Invoice No.","From/To","Offer Date","Due Date","Currency","Amount","Net Amount","Dis./Premium"};
        
        int columns = headers.length;
        int rows = datalist.size();
        
        // a table with three columns
        PdfPTable table = new PdfPTable(columns);
        table.setTotalWidth(700);
        table.setLockedWidth(true);
        // the cell object
        PdfPCell cell;
        BaseColor myColor = WebColors.getRGBColor("#DCDCDC");
        for(int h=0;h<headers.length;h++){
        	cell = new PdfPCell(new Paragraph(headers[h]));
        	cell.setFixedHeight(20);
        	cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        	cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        	cell.setBackgroundColor(myColor);
            table.addCell(cell );
        }
        
        for(int i=0;i<rows ; i++){        	
        			cell = new PdfPCell(new Paragraph(datalist.get(i).getInvoiceStatus()));
        			cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
        			cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                    table.addCell(cell );
                    cell = new PdfPCell(new Paragraph(datalist.get(i).getInvoiceNo().toString()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                    cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                    table.addCell(cell );
                    cell = new PdfPCell(new Paragraph(datalist.get(i).getFromTo()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                    cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                    table.addCell(cell );
                    cell = new PdfPCell(new Paragraph(datalist.get(i).getInvoiceStartOn()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                    cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                    table.addCell(cell );
                    cell = new PdfPCell(new Paragraph(datalist.get(i).getInvoiceDueOn()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                    cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                    table.addCell(cell );
                    cell = new PdfPCell(new Paragraph(datalist.get(i).getCurrencyType()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                    cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                    table.addCell(cell );
                    cell = new PdfPCell(new Paragraph(datalist.get(i).getInvoiceAmt().toString()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                    cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                    table.addCell(cell );
                    cell = new PdfPCell(new Paragraph(datalist.get(i).getNetAmt().toString()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                    cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                    table.addCell(cell );
                    cell = new PdfPCell(new Paragraph(datalist.get(i).getDiscountPremium().toString()));cell.setFixedHeight(30);cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
                    cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                    table.addCell(cell );
                    
        		
        }
        table.setHorizontalAlignment(Element.ALIGN_CENTER);
        
        // step 4
        document.add(table);
        // step 5
        document.close();
    }
    
    
    public void createExcel(String filename,List<MyActivityData> datalist) {		
		
		Workbook workbook = null;
		FileOutputStream fos = null;
		
		if(filename.endsWith("xlsx")){
			workbook = new XSSFWorkbook();
		}else{
			workbook = new HSSFWorkbook();
		}
		
		Sheet sheet = workbook.createSheet("Invoices");
		String[] headers = {"Status","Invoice No.","From/To","Offer Date","Due Date","Currency","Amount","Net Amount","Dis./Premium"};
		Row row = sheet.createRow(0);
        //Headings
        for(int h=0;h<headers.length;h++){        	
        	row.createCell(h).setCellValue(headers[h]);
        }
        
        //Values
		for(int r=1;r<=datalist.size();r++){
			    row = sheet.createRow(r);
				row.createCell(0).setCellValue(datalist.get(r-1).getInvoiceStatus());
				row.createCell(1).setCellValue(datalist.get(r-1).getInvoiceNo().toString());
				row.createCell(2).setCellValue(datalist.get(r-1).getFromTo());
				row.createCell(3).setCellValue(datalist.get(r-1).getInvoiceStartOn());
				row.createCell(4).setCellValue(datalist.get(r-1).getInvoiceDueOn());
				row.createCell(5).setCellValue(datalist.get(r-1).getCurrencyType());
				row.createCell(6).setCellValue(datalist.get(r-1).getInvoiceAmt().toString());
				row.createCell(7).setCellValue(datalist.get(r-1).getNetAmt().toString());
				row.createCell(8).setCellValue(datalist.get(r-1).getDiscountPremium().toString());			
		}
			
		System.out.println("xlsx file created");
		//lets write the excel data to file now
		try {
			fos = new FileOutputStream(filename);
			workbook.write(fos);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
    
    
    
    
    
    public void createCSV(String filename,List<MyActivityData> datalist) {

    	FileWriter writer = null;
    	try{
	        writer = new FileWriter(filename);

	        //Headers
	        CSVUtils.writeLine(writer, Arrays.asList("Status","Invoice No.","From/To","Offer Date","Due Date","Currency","Amount","Net Amount","Dis./Premium"));
	        
	        for(int i=0;i<datalist.size();i++){
	        	CSVUtils.writeLine(writer, Arrays.asList(datalist.get(i).getInvoiceStatus(),datalist.get(i).getInvoiceNo().toString(),datalist.get(i).getFromTo(),
	        			datalist.get(i).getInvoiceStartOn(),datalist.get(i).getInvoiceDueOn(),datalist.get(i).getCurrencyType(),datalist.get(i).getInvoiceAmt().toString(),
	        			datalist.get(i).getNetAmt().toString(),datalist.get(i).getDiscountPremium().toString()));
	        }

	        writer.flush();
		 }catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				writer.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
    
    public void createFlatFile(String filename,List<MyActivityData> datalist) {
		final String FILENAME = filename;
		
		BufferedWriter bw = null;
		FileWriter fw = null;
		String[] headers = {"Status","Invoice No.","From/To","Offer Date","Due Date","Currency","Amount","Net Amount","Dis./Premium"};
		StringBuilder stt=new StringBuilder();
		StringBuilder invoNo=new StringBuilder();
		StringBuilder frmto=new StringBuilder();
		StringBuilder ofrdt=new StringBuilder();
		StringBuilder duedt=new StringBuilder();
		StringBuilder curr=new StringBuilder();
		StringBuilder amt=new StringBuilder();
		StringBuilder netamt=new StringBuilder();
		StringBuilder dis=new StringBuilder();
		
		try {
			
			fw = new FileWriter(FILENAME);
			bw = new BufferedWriter(fw);
			
			int h=0;
			stt.append(headers[h++]+":\t");
			invoNo.append(headers[h++]+":\t");
			frmto.append(headers[h++]+":\t");
			ofrdt.append(headers[h++]+":\t");
			duedt.append(headers[h++]+":\t");
			curr.append(headers[h++]+":\t");
			amt.append(headers[h++]+":\t");
			netamt.append(headers[h++]+":\t");
			dis.append(headers[h++]+":\t");
			
			for(int i=0;i<datalist.size();i++){
				stt.append(datalist.get(i).getInvoiceStatus()+", ");
				invoNo.append(datalist.get(i).getInvoiceNo().toString()+", ");
				frmto.append( datalist.get(i).getFromTo()+", ");
				ofrdt.append(datalist.get(i).getInvoiceStartOn()+", ");
				duedt.append( datalist.get(i).getInvoiceDueOn()+", ");
				curr.append(datalist.get(i).getCurrencyType()+", ");
				amt.append(datalist.get(i).getInvoiceAmt().toString()+", ");
				netamt.append( datalist.get(i).getNetAmt().toString()+", ");
				dis.append(datalist.get(i).getDiscountPremium().toString());
				
			}
			
			bw.write(stt+"\n");
			bw.write(invoNo+"\n");
			bw.write(frmto+"\n");
			bw.write(ofrdt+"\n");
			bw.write(duedt+"\n");
			bw.write(curr+"\n");
			bw.write(amt+"\n");
			bw.write(netamt+"\n");
			bw.write(dis+"\n");

		} catch (IOException e) {

			e.printStackTrace();

		} finally {

			try {

				if (bw != null)
					bw.close();

				if (fw != null)
					fw.close();

			} catch (IOException ex) {

				ex.printStackTrace();

			}

		}
	}

    

	@Override
	public boolean archiveInvoice(Long invoiceId) {
		
		boolean archived = false;
		
		headers.set("content-type", "application/json");
		entity = new HttpEntity<String>(headers);
	
	    ResponseEntity<String> response = null;
	   		
		try{
			response = rest.exchange(InvokeDetails.ARCHIVE_INVOICE_URL+invoiceId, HttpMethod.PUT, entity, String.class);
			System.out.println(response.getBody());
			if(response.getStatusCode()!=null && response.getStatusCode().equals(org.springframework.http.HttpStatus.OK)){
				archived = true; 
			}
			
		}catch(Exception e){
			e.printStackTrace();
			return archived;
		}
		
		return archived;
	}

	@Override
	public String createFile(List<MyActivityData> datalist, String format, String path) {
		
		String filename = "Invoice."+format;
		path += format;
		path += "/";
		String URL=null;
		
		
		try{
			
			File theDir = new File(path);
			// if the directory does not exist, create it
			if (!theDir.exists()) {
				 theDir.mkdirs();
			}
			
			if(format.equalsIgnoreCase("PDF")){ // create pdf
				
				createPdf(path+filename,datalist);
				URL = InvokeDetails.ACTIVITY_PDF_DOWNLOAD.replace("{file}",filename.substring(0, filename.lastIndexOf('.')))+format;
				
			}else if(format.equalsIgnoreCase("XLSX")){ // create xlxs
				
				createExcel(path+filename, datalist);
				URL = InvokeDetails.ACTIVITY_XLS_DOWNLOAD.replace("{file}",filename.substring(0, filename.lastIndexOf('.')))+format;
				
			}else if(format.equalsIgnoreCase("CSV")){ //create csv
				createCSV(path+filename, datalist);
				URL = InvokeDetails.ACTIVITY_CSV_DOWNLOAD.replace("{file}",filename.substring(0, filename.lastIndexOf('.')))+format;
				
			}else{ // create txt
				
				createFlatFile(path+filename, datalist);
				URL = InvokeDetails.ACTIVITY_TXT_DOWNLOAD.replace("{file}",filename.substring(0, filename.lastIndexOf('.')))+format;
			}
		}catch(Exception e){
			e.printStackTrace();
			return "ERROR";
		}
		return URL;
	}

	@Override
	public List<MyActivityData> showArchivedItems(Long legalEntityId) {

		UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(InvokeDetails.SHOW_ARCHIVED_INVOICE_URL)
		        .queryParam("idLegalEntity", legalEntityId);
		
		headers.set("content-type", "application/json");
		entity = new HttpEntity<String>(headers);
	
	    ResponseEntity<MyActivityResponse> response = null;
		
		try{
			response = rest.exchange(builder.build().encode().toUri(), HttpMethod.GET, entity, MyActivityResponse.class);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return response.getBody().getActivity();
	}

}
	


