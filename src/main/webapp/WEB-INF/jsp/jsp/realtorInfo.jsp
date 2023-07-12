<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>공인중개사 정보</h2>
	<table>
		<tr>
			<td>ID</td>
			<td>${realtor.id}</td>
		</tr>
		<tr>
			<td>상호명</td>
			<td>${realtor.office}</td>
		</tr>
		<tr>
			<td>전화 번호</td>
			<td>${realtor.phoneNumber}</td>
		</tr>
		<tr>
			<td>주소</td>
			<td>${realtor.address}</td>
		</tr>
		<tr>
			<td>등급</td>
			<td>${realtor.grade}</td>
		</tr>
	</table>
</body>
</html>