<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOT 5</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<h1>HOT 5</h1>
	<table class="table text-center">
		<thead>
			<tr>
				<th>순위</th>
				<th>제목</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="rank" items="${musicRanking}" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${rank}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	
	<h2>멤버십</h2>
	<table class="table text-center">
	
		<thead>
			<tr>
				<th>이름</th>
				<th>전화번호</th>
				<th>등급</th>
				<th>포인트</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="membership" items="${membership}">
			
			
			<tr>
				<td>${membership.name}</td>
				<td>${membership.phoneNumber}</td>
					<c:choose>
						<c:when test="${membership.grade eq 'VIP'}">
							<td class="text-danger">VIP</td>
						</c:when>
						<c:when test="${membership.grade eq 'GOLD'}">
							<td class="text-warning">GOLD</td>
						</c:when>
						<c:otherwise>
							<td>BASIC</td>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${membership.point >= 5000}">
							<td class="text-primary">${membership.point}P</td>
						</c:when>
						<c:otherwise>
							<td>${membership.point}P</td>
						</c:otherwise>
					</c:choose>
			</tr>
			</c:forEach>
		</tbody>
	
	</table>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>