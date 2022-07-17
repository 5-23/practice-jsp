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
    String[] userInfo = {request.getParameter("name") , request.getParameter("password")};
    if (userInfo[0] != null && userInfo[1] != null){
        Cookie name = new Cookie("name" , userInfo[0]);
        Cookie password = new Cookie("password" ,  userInfo[1]);
        response.addCookie(name);
        response.addCookie(password);

        String cookieName = "";
        String cookiePassword = "";
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies){
            System.out.println(cookie.getName() + " | " + cookie.getValue());
            if (cookie.getName().equals("name")){cookieName = cookie.getValue();}
            if (cookie.getName().equals("password")){cookiePassword = cookie.getValue();}
        }
        
        System.out.println(cookieName);
        System.out.println(cookiePassword);
        System.out.println(cookieName != "" && cookiePassword != "");

        if (cookieName != "" && cookiePassword != ""){
            response.sendRedirect("login.jsp");
        }
    }


    %>




    <div class = "box"><b class    = "name"     >name     </b><input type = "input" id = "name" placeholder = "name를 써주세요"></div>
    <div class = "box"><b class    = "password" >password </b><input type = "input" id = "password" placeholder = "password를 써주세요"></div>

    <div class = "box"><input type = "button" id = "rmx" value = "sign up" onclick = "rmx()" style = "cursor:pointer;"></div>


<style>

*{
    margin:10px;
    color:white;
    transition: all .5s;
}


b{
    position: relative;
    padding: 5.5px;
    top:2px;
    left:19px;
    color:white;
    background-color: rgb(40, 93, 247);
    border-radius: 10px;
}

#rmx{
    border-radius: 10px;
    margin-left:30px;
}

::placeholder {
  color: white;
  opacity:.5
}

</style>




</body>
</html>
