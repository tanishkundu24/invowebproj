package com.invoproj.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.Principal;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ServletContextAware;

import com.invoproj.beans.servicebeans.ActivityListParams;
import com.invoproj.beans.servicebeans.MyActivityData;
import com.invoproj.beans.servicebeans.MyActivityOverview;
import com.invoproj.constants.View;
import com.invoproj.service.MyActivityServiceImpl;

@Controller
public class MyActivityController {
	
	@Autowired
	MyActivityServiceImpl myActivityServiceImpl;
	
	private List<MyActivityData> dataList = null;
	
	String dirpath =  "/tmp";//System.getProperty("catalina.base"); //System.getProperty("catalina.home");
	
	
	@RequestMapping(value = "/myactivity", method=RequestMethod.GET)
	public String myActivity(Model model, Principal p, @RequestParam(required = true) Long legalEntityId){
		
		MyActivityOverview overviewObj = null;
				
		try{
			dataList = myActivityServiceImpl.callMyActivityDataService("fetchMyActivityData", legalEntityId);
			overviewObj = myActivityServiceImpl.callMyActivityOverviewService(null, legalEntityId);
		
			setColor(dataList);
			model.addAttribute("activityDataList",dataList);
			model.addAttribute("overviewObject",overviewObj);
			 
		}catch (Exception e) {
			e.printStackTrace();
		}
		return View.MYACTIVITY;
	}
	
	@RequestMapping(value = "/myactivityfilter", method=RequestMethod.POST)
	public @ResponseBody List<MyActivityData> myActivityFilter(@RequestBody ActivityListParams params){		
		
		try{
			dataList = myActivityServiceImpl.callMyActivityDataServiceWithReqParam(params.getLegalEntityId(), params.getNegoaction(), params.getOfferstatus(), params.getNegotype());
			setColor(dataList);		
			 
		}catch (Exception e) {
			e.printStackTrace();
		}
		return dataList;
	}
	
	@RequestMapping(value = "/showarchiveitems", method=RequestMethod.POST)
	public @ResponseBody List<MyActivityData> showArchivedItems(@RequestBody ActivityListParams params){		
		
		try{
			dataList = myActivityServiceImpl.showArchivedItems(params.getLegalEntityId());
			setColor(dataList);		
			 
		}catch (Exception e) {
			e.printStackTrace();
		}
		return dataList;
	}
	
	@RequestMapping(value = "/archiveinvoice", method=RequestMethod.POST)
	public @ResponseBody String archiveInvoice(@RequestBody ActivityListParams params){		
		
		String result = "ERROR";
		try{
			if(myActivityServiceImpl.archiveInvoice(params.getInvoiceNo())){
				result = "SUCCESS";
			}
			 
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	@RequestMapping(value = "/myactivitypopup", method=RequestMethod.POST)
	public @ResponseBody String myAcitivityPopUpFilter(@RequestBody ActivityListParams params){
		
		String path = dirpath+File.separator+"downloads"+File.separator;
		String URL=null;
		String result=null;
		System.out.println("catalina home : "+dirpath+File.separator+"downloads"+File.separator);
		try{
			
			dataList = myActivityServiceImpl.callMyActivityDataServiceWithPopUpParam(params.getLegalEntityId(),params.getFromdate(), params.getTodate(), params.getNegoaction(), params.getOfferstatus(), params.getNegotype());
			System.out.println("datalist size: "+dataList.size());
			if(!dataList.isEmpty()){
				URL = myActivityServiceImpl.createFile(dataList,params.getFormat().trim(), path); // created the file and returned the name with extension i.e. abc.pdf
				
				if(params.getAction().equalsIgnoreCase("email")){
					
					if(myActivityServiceImpl.callInvoiceEmailService(path, params.getFormat()))
					{
						result = "success";
					}else{
						result = "error";
					}
					
				}else if(params.getAction().equalsIgnoreCase("download")){
					
					if(URL!=null && !URL.equalsIgnoreCase("ERROR")){ //Here make FILE download ready
						result =  URL;
					
					}else{
						System.out.println("url in download came in else ");
					}
				}
			}else{
				result = "NO DATA FOUND";
			}
			
			 
		}catch (Exception e) {
			e.printStackTrace();
			return "ERROR";
		}
		System.out.println(result);
		return result ;
		
	}
	
	
	
	@RequestMapping(value = "/downloads/{file}/pdf", method = RequestMethod.GET)
	public void downloadPDF(@PathVariable("file") String filename, HttpServletResponse response,HttpServletRequest request){
		
        final String dataDirectory = dirpath+File.separator+"downloads"+File.separator+"pdf/"; 
        String fileName = filename;
        Path file = Paths.get(dataDirectory, fileName+".pdf");
        
        if (Files.exists(file)) 
        {
            response.setContentType("application/pdf"); 
            response.addHeader("Content-Disposition", "attachment; filename="+fileName+".pdf");
            try
            {
                Files.copy(file, response.getOutputStream());
                response.getOutputStream().flush();
            } 
            catch (IOException ex) {
                ex.printStackTrace();
            }finally{
            	try {
					Files.deleteIfExists(file);
				} catch (IOException e) {
					e.printStackTrace();
				}
            }
        }
	}
	
	@RequestMapping(value = "/downloads/{file}/xlsx", method = RequestMethod.GET)
	public void downloadExcel(@PathVariable("file") String filename, HttpServletResponse response){
		
		final String dataDirectory = dirpath+File.separator+"downloads"+File.separator+"xlsx/"; 
        String fileName = filename;
        Path file = Paths.get(dataDirectory, fileName+".xlsx");
        if (Files.exists(file)) 
        {
            response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");  // vnd.ms-excel <2007
            response.addHeader("Content-Disposition", "attachment; filename="+fileName+".xlsx");
            try
            {
                Files.copy(file, response.getOutputStream());
                response.getOutputStream().flush();
            } 
            catch (IOException ex) {
                ex.printStackTrace();
            }finally{
            	try {
					Files.deleteIfExists(file);
				} catch (IOException e) {
					e.printStackTrace();
				}
            }
        }
	}
	
	@RequestMapping(value = "/downloads/{file}/csv")
	public @ResponseBody void downloadCSV(@RequestBody @PathVariable("file") String filename, HttpServletResponse response){
		
		final String dataDirectory = dirpath+File.separator+"downloads"+File.separator+"csv/"; 
        String fileName = filename;
        Path file = Paths.get(dataDirectory, fileName+".csv");
        if (Files.exists(file)) 
        {
            response.setContentType("text/csv"); 
            response.addHeader("Content-Disposition", "attachment; filename="+fileName+".csv");
            try
            {
                Files.copy(file, response.getOutputStream());
                response.getOutputStream().flush();
            } 
            catch (IOException ex) {
                ex.printStackTrace();
            }finally{
            	try {
					Files.deleteIfExists(file);
				} catch (IOException e) {
					e.printStackTrace();
				}
            }
        }
	}
	
	
	@RequestMapping(value = "/downloads/{file}/txt", method = RequestMethod.GET)
	public void downloadFlat(@PathVariable("file") String filename, HttpServletResponse response){
		
		final String dataDirectory = dirpath+File.separator+"downloads"+File.separator+"txt/"; 
        String fileName = filename;
        Path file = Paths.get(dataDirectory, fileName+".txt");
	
        if (Files.exists(file)) 
        {
            response.setContentType("text/csv"); 
            response.addHeader("Content-Disposition", "attachment; filename="+fileName+".txt");
            try
            {
                Files.copy(file, response.getOutputStream());
                response.getOutputStream().flush();
            } 
            catch (IOException ex) {
                ex.printStackTrace();
            }finally{
            	try {
					Files.deleteIfExists(file);
				} catch (IOException e) {
					e.printStackTrace();
				}
            }
        }
	}
	
	
	@RequestMapping(value = "/downloads/row/pdf")
	public void downloadSingleRowAsPDF(@RequestBody HttpServletResponse response, ActivityListParams params){
		
        final String dataDirectory = dirpath+File.separator+"downloads"+File.separator; 
        Path file = Paths.get(dataDirectory, "Invoice.pdf");
        
        if(myActivityServiceImpl.createUIRowPdf(dataDirectory, params) && Files.exists(file)){

            response.setContentType("application/pdf"); 
            response.addHeader("Content-Disposition", "attachment; filename=Invoice_"+System.currentTimeMillis()+".pdf");
            try
            {
                Files.copy(file, response.getOutputStream());
                response.getOutputStream().flush();
            } 
            catch (IOException ex) {
                ex.printStackTrace();
            }finally{
            	try {
					Files.deleteIfExists(file);
				} catch (IOException e) {
					e.printStackTrace();
				}
            }
        
        }
        
	}
	
	public void setColor(List<MyActivityData> list){
		
		for(MyActivityData data : list){
			  if(data.getInvoiceStatus().equalsIgnoreCase("live")){
		    	  data.setColor("rgreen");
		      }else if(data.getInvoiceStatus().equalsIgnoreCase("completed")){
		    	  data.setColor("yelloww");
		      }else if(data.getInvoiceStatus().equalsIgnoreCase("saved")){
		    	  data.setColor("rblue");
		      }else if(data.getInvoiceStatus().equalsIgnoreCase("rejected")){
		    	  data.setColor("rpurple");
		      }
		      else{
		    	  data.setColor("v");
		      }
		}
		
	}

}
