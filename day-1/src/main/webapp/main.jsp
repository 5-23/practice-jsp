<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<% System.out.println("유저 접속"); %>

<meta charset="UTF-8">
<title>Insert title here</title>

</head>


<body>
	<h1>대충 메인 페이지</h1>

    <% String[] array = {"알파" , "배타" , "김마" , "세타"};for(String i : array){ %>
       <%-- <h2><% i %></h2> --%>
       <% out.println("<h2>" + i + "</h2>"); %>
    <% } %>
</body>

<style>
h1{
    color : red;
}

</style>


</html>