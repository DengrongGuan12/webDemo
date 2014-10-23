<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: soft
  Date: 2014/10/23
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    String driver=application.getInitParameter("driver");
    String url=application.getInitParameter("url");
    String user=application.getInitParameter("user");
    String pass=application.getInitParameter("pass");
    Class.forName(driver);
    Connection conn= DriverManager.getConnection(url,user,pass);
    Statement stmt=conn.createStatement();
    ResultSet rs=stmt.executeQuery("select * from news_inf");


%>

</body>
</html>
