package com.invoproj.util;

import java.io.File;

public class FilePath {

	public static String rootPath;
	public static String fileName;
	static
	{
		rootPath = System.getProperty("catalina.home");
	}
	
	public static String getuploadPath(String userId)
	{
		return rootPath + File.separator + userId;
	}
	
	public static String getUploadedFileName()
	{
		return fileName;
	}
	
	public static String getUploadFileNameWithPath(String userId)
	{
		return rootPath + File.separator + userId + File.separator + fileName;
	}
	
}
