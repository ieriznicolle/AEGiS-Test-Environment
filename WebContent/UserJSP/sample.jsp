<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
    <sql:setDataSource
	var="myDS"
	driver="com.mysql.jdbc.Driver"
	url = "jdbc:mysql://127.0.0.1:3306/lex509?user=root&password=$carletWitch12&useSSL=false"
/>

        <sql:update dataSource="${myDS}" var="count">
            UPDATE product SET pname = ?, quantity=?
            WHERE id='${param.id}'
            <sql:param value="${param.pname}" />
            <sql:param value="${param.qty}" />
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
              <a href="index.jsp">Go Home</a>          
        </c:if>
    </body>
</html>