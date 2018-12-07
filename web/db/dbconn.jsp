<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement" %>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/sportshoes","root","Abdelle7");
    Statement stmt = conn.createStatement();
%>
