<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<%@ page info="this is jsp!" errorPage="error.jsp" %>
<html>
<head>
    <title>欢迎</title>
</head>
<%!
    public int count;
    public String info(){
        return "hello";
    }

%>
<body>
hello world!
<%out.println(new java.util.Date());%>
<%for(int i=0;i<7;i++){
    out.println("<font size='"+i+"'>");%>
疯狂java训练营</font>
<br />
<%}%>
<!--jsp 声明-->
<%out.println(count++);%>
<br />
<%out.println(info());%>
<%for(int i=0;i<10;i++){%>
<tr>
    <td>循环值</td>
    <td><%=i%></td>
</tr>
<%}%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaee","root","123456");
    Statement stmt=conn.createStatement();
    ResultSet rs=stmt.executeQuery("select * from news_inf");

%>
<table bgcolor="aqua" border="1" width="300">
    <%while(rs.next()){%>
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
    </tr>
    <%}%>
</table>
<%=getServletInfo()%>
</body>
</html>