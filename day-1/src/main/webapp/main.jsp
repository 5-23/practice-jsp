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
	<h1>대충 제목</h1>

    <div class = "gugudan">
    <% for(int i = 1 ; i < 10; i++){
        out.println("<div class = \"textGugudan\"id = \"" + i +"\">");
        for(int j = 1; j < 10; j++){ 
    %>

            <%
            out.println("<h2>" + i + "*" + j + "=" + i*j + "</h2>");
            %>

    <%
        }
        out.println("</div>");
    }
    %>
    </div>

</body>

<style>
h1{
    text-align : center;
    color : rgb(255 , 255 , 255);
}

*{
    background-color: rgb(54 , 54 , 54);
}


div{
    padding-right: 20px;
    color : rgb(255 , 255 , 255);
}

.gugudan{
    text-align : center;
    display: flex;
    border-radius: 30px rgb(255 , 255 , 255);
}


</style>

</html>