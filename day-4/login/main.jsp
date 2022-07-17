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
        String name = "";
        String password = "";
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies){
            if (cookie.getName().equals("name")){name = cookie.getValue();}
            if (cookie.getName().equals("password")){password = cookie.getValue();}
        }
        if (name == "" && password == ""){
            response.sendRedirect("sign_up.jsp");
        }
    %>
    <h1><b><%= name %></b>님 안녕하세요!</h1>


<style>

*{
    margin:10px;
    color:white;
    transition: all .5s;
}

.box{
    transition: all 2s;
    transform: translateX(3000px);
}

div:nth-child(2){transition-delay: .1s;}
div:nth-child(3){transition-delay: .2s;}

::-webkit-scrollbar{
    display:none;
}

body{
    background-color:rgb(27, 30, 35);
}

input{
    height: 30px;
    background-color: rgb(51, 102, 255);
    outline: 0;
    border: 0;
    color: white;
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px;
}
input:hover{
    background-color: rgb(30, 83, 237);
}

b{
    position: relative;
    padding: 5.5px;
    top:2px;
    left:19px;
    color:white;
    background-color: rgb(40, 93, 247);
    border-top-left-radius: 10px;
    border-bottom-left-radius: 10px;
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



<script>
window.onload = ()=>{
    for (i = 0; i<5;i++){
        document.getElementsByClassName("box")[i].style.transform = `translateX(10px)`
    }
}

function rmx(){
    location.href = "main.jsp";
}

</script>




</body>
</html>
