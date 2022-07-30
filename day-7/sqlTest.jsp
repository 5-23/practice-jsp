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


<form action = "joinUser.jsp" method = "post">

    <input type = "text" placeholder = "id" name = "id" required/>
    <input type = "text" placeholder = "name" name = "name" required/>
    <input type = "text" placeholder = "password" name = "pw" required/>
    <input type = "text" placeholder = "email" name = "email" required/>
    <input type = "submit" value = "addUser">

</form>

<form action = "delUser.jsp" method = "post">

    <input type = "text" placeholder = "id" name = "id" required/>
    <input type = "text" placeholder = "password" name = "pw" required/>
    <input type = "submit" value = "removeUser">

</form>

<form action = "editUser.jsp" method = "post">

    <input type = "text" placeholder = "자신의 id를 써주세요" name = "id" required/>
    <input type = "text" placeholder = "변경할 name을 써주세요" name = "name" required/>
    <input type = "text" placeholder = "변경할 password를 써주세요" name = "pw" required/>
    <input type = "text" placeholder = "변경할 email을 써주세요" name = "email" required/>
    <input type = "submit" value = "editUser">

</form>

<form action = "login.jsp" method = "post">

    <input type = "text" placeholder = "자신의 id를 써주세요" name = "id" required/>
    <input type = "text" placeholder = "자신의 password를 써주세요" name = "pw" required/>
    <input type = "submit" value = "login">

</form>



</body>
</html>