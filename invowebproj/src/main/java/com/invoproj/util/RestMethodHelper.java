/**
 * 
 */
package com.invoproj.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.io.Reader;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.HttpClientBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;


@Service
public class RestMethodHelper {

	private HttpClient client;
	HttpGet getReq;
	HttpPost postReq;
	
	private final String APP_NAME = "INVOTIATE";
	
	private static final Logger logger = LoggerFactory.getLogger(RestMethodHelper.class);

	public RestMethodHelper() {
		client = HttpClientBuilder.create().build();
	}

	public String doGET(String url) {
		getReq = new HttpGet(url);
		getReq.addHeader("User-Agent", "Mozilla/5.0");
		getReq.addHeader("AppName", APP_NAME);
		getReq.addHeader("Content-Type", "application/json");
		try {
			HttpResponse response = client.execute(getReq);
			return getSuccessResponse(response);
		} catch (Exception e) {
			logger.error(e.getMessage());
			getReq.abort();
		}
		finally{
			getReq.releaseConnection();
		}
		return null;
	}

	public String doPOST(String url, String jsonString) {

		postReq = new HttpPost(url);
		postReq.addHeader("User-Agent", "Mozilla/5.0");
		postReq.addHeader("AppName", APP_NAME);
		postReq.addHeader("Content-Type", "application/json");
		
		try {
			StringEntity input = new StringEntity(jsonString);
			input.setContentType("application/json");
			postReq.setEntity(input);
			HttpResponse response = client.execute(postReq);
			return getSuccessResponse(response);
		} catch (Exception e) {
			logger.error(e.getMessage());
			postReq.abort();
		}
		return null;
	}
	public String doPOSTwithAttachments(String url, String jsonString, String fileName) {

		postReq = new HttpPost(url);
		postReq.addHeader("User-Agent", "Mozilla/5.0");
		postReq.addHeader("AppName", APP_NAME);
		postReq.addHeader("Content-Type", "application/json");
		
		try {
			StringEntity input = new StringEntity(jsonString);
			input.setContentType("application/json");
			MultipartEntityBuilder builder = MultipartEntityBuilder.create();        

			/* example for setting a HttpMultipartMode */
			builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);

			/* example for adding an image part */
			FileBody fb = new FileBody(new File(FilePath.getUploadFileNameWithPath(fileName)), ContentType.DEFAULT_BINARY);
			builder.addPart("my_file",fb); 
			postReq.setEntity(input);
			HttpResponse response = client.execute(postReq);
			return getSuccessResponse(response);
		} catch (Exception e) {
			logger.error(e.getMessage());
			postReq.abort();
		}
		return null;
	}

	private String getSuccessResponse(HttpResponse response) throws Exception {
		int statusCode = response.getStatusLine().getStatusCode();
		if (statusCode == 204){
			return "SUCCESS";
		}
		else if (statusCode != 200)
			return "FAILURE";

		StringBuffer result = new StringBuffer();
		String line = "";
		Reader in = null;
		BufferedReader rd = null;
		try {
			in = new InputStreamReader(response.getEntity().getContent());
			rd = new BufferedReader(in);
			while ((line = rd.readLine()) != null) {
				result.append(line);
			}
		} catch (Exception e) {
			logger.error("Exception occured while reading response from REST service:" + e.getMessage());
		} finally {
			in.close();
			rd.close();
		}
		return result.toString();
	}

	/*private StringEntity jaxbObjectToXML(Object payload) throws UnsupportedEncodingException {
		 String xmlString = null;
		try {
			JAXBContext context = JAXBContext.newInstance(Object.class);
			Marshaller m = context.createMarshaller();
			// for pretty-print XML in JAXB
			m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);

			// Write to System.out for debugging
			// m.marshal(emp, System.out);
			StringWriter sw = new StringWriter();
			m.marshal(payload, sw);
			xmlString = sw.toString();
		} catch (JAXBException e) {
            e.printStackTrace();
        }
        StringEntity entity = new StringEntity(xmlString);
        return entity;
    }*/
}
