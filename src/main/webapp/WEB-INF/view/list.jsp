<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./resources/css/style.css">
</head>
<body>
<h2>** 직원자료 출력(@MVC-Mybatis) **</h2>
<hr>

<table>
	<tr style="text-align: center;">
		<th>사번</th><th>이름</th><th>부서명</th><th>직급</th><th>입사시기</th>
	</tr>
	<c:forEach var="d" items="${data}" varStatus="status">
	<tr style="text-align: center;">
		<td>${d.sawon_no}</td>
		<td>${d.sawon_name}</td>
		<td><a href="./buser?buser_no=${d.buser_no }" target="buserframe">${d.buser_name}</a></td>
		<td>${d.sawon_jik}</td>
		<td>${d.sawon_ibsail} <c:set value="${status.count}" var="count" /> </td>
	</tr>
	</c:forEach>

</table>
	<br>인원수:${count }명
<br>
<br>
<br>
<form action="search" method="post">
부서별 자료보기: 
<select name="searchWord">
	<option value="">전체</option>
	<option value="총무부">총무부</option>
	<option value="영업부">영업부</option>
	<option value="전산부">전산부</option>
	<option value="관리부">관리부</option>
	<option value="무소속">기타</option>
</select>
<input type="submit" value="검색">
</form>
<br>
<br>
<iframe id="buserframe" name="buserframe">

</iframe>
</body>
</html>