<%@page import="asdf.UserDAO"%>
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
String name  = request.getParameter("name");
String pw    = request.getParameter("pw");
String email = request.getParameter("email");

    
u.updateUser(id , name , pw , email);
    
%>


</body>
</html>
