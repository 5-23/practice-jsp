<%@page import="jsp.UserVO"%>
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
UserVO uv = new UserVO();    

String id    = request.getParameter("id");
String name  = request.getParameter("name");
String pw    = request.getParameter("pw");
String email = request.getParameter("email");

System.out.println(id);
System.out.println(name);
System.out.println(pw);
System.out.println(email);
    
u.insertUser(id , name , pw , email);
for (UserVO i : uv.getUsers()){
	System.out.println(i.toString());
}


%>


</body>
</html>