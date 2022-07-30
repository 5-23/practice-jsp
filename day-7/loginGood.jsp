<%@page import="jsp.*"%>
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
   
	String name = "";

	
   	String id    = session.getAttribute("id").toString();
   	String pw    = session.getAttribute("pw").toString();

   	System.out.println("------- session -------");
   	System.out.println(id);
   	System.out.println(pw);


   	if (uv.checkUser(id, pw)){
   		name = uv.getUser(id, pw).getNAME();
   	}else{
   		response.sendRedirect("sqlTest.jsp");
   	}
   
   %>
   
   <h1><%= name %>님 로그인에 성공하셨습니다.</h1>
   
   
</body>
</html>