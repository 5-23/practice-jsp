<%@page import="jsp.UserDAO"%>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%

UserDAO u = new UserDAO();

String id    = request.getParameter("id");
String pw    = request.getParameter("pw");

    
u.deleteUser(id , pw);

%>


</body>
</html>