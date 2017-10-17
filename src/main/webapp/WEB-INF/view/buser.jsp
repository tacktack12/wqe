<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./resources/css/style.css">
</head>
<body>
<table>
	<c:forEach var="d" items="${data }">
	<tr>
		<td>부서번호:</td><td>${d.buser_no }</td>
	</tr>
	<tr>
		<td>부서명:</td><td>${d.buser_name }</td>
	</tr>
	<tr>
		<td>부서지역:</td><td>${d.buser_loc }</td>
	</tr>
	<tr>
		<td>부서번호:</td><td>${d.buser_tel }</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>