<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<html>
<head>
    <title>application 测试</title>
</head>
<body>
<%!
    int i;
%>
<%application.setAttribute("counter",String.valueOf(++i));%>
<%=i%>
</body>
</html>