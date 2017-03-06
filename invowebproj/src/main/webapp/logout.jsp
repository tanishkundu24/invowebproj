<%@ page isELIgnored ="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
 <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="<c:url value="//resources/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="//resources/css/form-elements.css" />">
    <link rel="stylesheet" href="<c:url value="//resources/css/style.css" />" >

   
    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="<c:url value="//resources/assets/ico/favicon.png" />" >
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="//resources/images/fevicon.png" />" >
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="//resources/images/fevicon.png" />" >
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="//resources/images/fevicon.png"/>" >
    <link rel="apple-touch-icon-precomposed" href="<c:url value="//resources/images/fevicon.png"/>" >
</head>
<body>
	<div>
         <b><H3><a href="<c:url value="j_spring_security_logout" />" > Logout</a></H3></b>
    </div>
    <p align="center">
    <div style="border: thin solid green;width: 400px;align: center;position: fixed;top: 50%;left: 40%;">
     <b><H3><c:out value="Successfully Logged Out!!"/></H3></b>
    </div>
    </p>
</body>
</html>