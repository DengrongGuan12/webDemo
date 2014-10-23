<%@ page import="lee.Person" %>
<%@ page errorPage="" language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>JavaBean 测试</title>
</head>
<body>
<jsp:useBean id="p1" class="lee.Person" scope="page"/>
<jsp:setProperty name="p1" property="name" value="wawa"/>
<jsp:getProperty name="p1" property="name"/><br />
<jsp:setProperty name="p1" property="age" value="23"/>
<jsp:getProperty name="p1" property="age"/>
<%
    Person p2=new Person();
    pageContext.setAttribute("p2",p2);
    p2.setName("DengrongGuan");
    p2.setAge(24);
%>
<%=p2.getName()%><br />
<%=p2.getAge()%>

</body>
</html>