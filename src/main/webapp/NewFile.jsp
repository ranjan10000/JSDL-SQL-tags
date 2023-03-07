<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
from server response.... <br>
    <c:out value="${obj.name}"></c:out>
    <sql:setDataSource var="db" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" url="jdbc:sqlserver://192.168.168.12:1433;databaseName=New_joinee_2022" user="NewJoinee2022" password="P@ssw0rd"/>
<sql:query var="rs" dataSource="${db}">select * from abc;</sql:query>
<c:forEach items="${rs.rows}" var="temp">

<br><c:out value="${temp.username}"></c:out> :<c:out value="${temp.pwd}"></c:out>

</c:forEach>
</body>
</html>