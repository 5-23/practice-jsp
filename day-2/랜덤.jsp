<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Insert title here</title>

</head>


<body>

<%!
public int view = 0;
String randomHTML(){
    int integer = (int)(Math.random()*10+1);
    String color = (int)(Math.random()*225) + "," + (int)(Math.random()*225) + "," + (int)(Math.random()*225);
    return "<div class = \"integer\">숫자 : " + integer + "</div>"+"<div class = \"color\">색상 :<div class = \"colorBox\"style = \"background-color:rgb("+ color + ")\"></div></div>";
}
%>

<%
view++;
String res = randomHTML();
%>

<h1><%= res %></h1>
<b>조회수 : <%= view %></b>

</body>

</html>

<style>

.color{
    display: flex;
}
.colorBox{
    position: relative;
    left: 13px;
    width: 50px;
    height: 50px;
    border-radius: 10px;
}

</style>
