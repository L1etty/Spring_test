<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>공인중개사 추가</h2>
	<form action="/realtor/add_realtor" method="get">
		<label>상호명</label><input name="office"><br>
		<label>전화번호</label><input name="phoneNumber"><br>
		<label>주소</label><input name="address"><br>
		<label>등급</label><input name="grade"><br>
		<button type="submit">추가</button>
	</form>
</body>
</html>