<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h2>판매자 정보</h2>
		<img src="${result.profileImage}" width="300px" height="300px">
		<h2>${result.nickname}</h2>
		<h2>${result.temperature}</h2>
	</div>
</body>
</html>