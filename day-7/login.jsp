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

UserVO uv = new UserVO();

String id    = request.getParameter("id");
String pw    = request.getParameter("pw");

System.out.println(id);
System.out.println(pw);


if (uv.checkUser(id, pw)){
	session.setAttribute("id", id);
	session.setAttribute("pw", pw);
	response.sendRedirect("loginGood.jsp");
}else{
	response.sendRedirect("loginFail.jsp");
}

%>


</body>
</html>