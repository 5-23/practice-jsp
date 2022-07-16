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

    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String loc = request.getParameter("loc");
    
    if (loc == null || loc == ""){
%>
        <div class = "box"><b class    = "id"       >id       </b><input type = "input" id = "id" placeholder = "id를 써주세요"></div>
        <div class = "box"><b class    = "password" >password </b><input type = "input" id = "password" placeholder = "password를 써주세요"></div>
        <div class = "box"><b class    = "name"     >name     </b><input type = "input" id = "name" placeholder = "name를 써주세요"></div>
        <div class = "box"><b class    = "address"  >address  </b><input type = "input" id = "address" placeholder = "address를 써주세요"></div>


        <div class = "box"><input type = "button" id = "rmx" value = "제출" onclick = "rmx()"></div>


<%}else{%>
        id       : <%= id %><br/>
        password : <%= password %><br/>
        name     : <%= name %><br/>
        address  : <%= address %><br/>
<%}%>


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
div:nth-child(4){transition-delay: .3s;}
div:nth-child(5){transition-delay: .4s;}

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
    background-color: rgb(40, 93, 247);
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
    id = "id=" + document.getElementById("id").value + "&";
    password = "password=" + document.getElementById("password").value + "&";
    name = "name=" + document.getElementById("name").value + "&";
    address = "address=" + document.getElementById("address").value;

    location.href = `?loc=asdf&`+id+password+name+address
}

</script>




</body>
</html>
