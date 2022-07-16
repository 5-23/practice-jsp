
<%@ page import = "java.util.*" %>
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

List<Integer> list = new ArrayList<>();

while (list.size() != 6){
    int i = (int)(Math.random() * 45)+1;
    if (!list.contains(i)){
        list.add(i);
    }
}

int t = 0;
%>

<%
out.println("<div style = font-size : 100px;self-align : center;self-jusify : center;>");
for (int i : list){
    
    out.println("<b style = \"background-color : rgb(" + (int)(Math.random()*25) + 1 + "," + (int)(Math.random()*25) + 1 + "," + (int)(Math.random()*25) + 1 + ");color : #ffffff;border-radius:100%;\">" + i + "</b>");
}
out.println("</div>");

%>


</body>

</html>
