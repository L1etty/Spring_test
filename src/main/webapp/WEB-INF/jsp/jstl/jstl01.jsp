<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL TEST 01</title>
</head>
<body>
	<h2>1. JSTL core 변수</h2>
	<c:set var="number1" value="36"/>
	<c:set var="number2" value="3"/>
	<h3>첫번째 숫자 : ${number1 }</h3>
	<h3>두번째 숫자 : ${number2 }</h3>
	
	<br><br>
	
	<h2>2. JSTL core 연산</h2>
	<h3>더하기 : <c:out value="${number1 + number2}"/></h3>
	<h3>빼기 : <c:out value="${number1 - number2}"/></h3>
	<h3>곱하기 : <c:out value="${number1 * number2}"/></h3>
	<h3>나누기 : <c:out value="${number1 / number2}"/></h3>
	
	<br><br>
	
	<c:out value="<title>core out</title>"/>
	
	<br><br>
	
	<h2>4. JSTL core if</h2>
	<c:set var="avg" value="${(number1+number2)/2}"/>
	<c:if test="${avg >= 10 }">
		<h1>${avg}</h1>
	</c:if>
	<c:if test="${avg < 10 }">
		<h1>${avg}</h1>
	</c:if>
	
	<h2>5. core if</h2>
	<c:set var="multi" value="${number1 * number2}"/>
	<c:if test="${multi >= 100 }">
		<script>
			alert("너무 큰 수 입니다.");
		</script>
	</c:if>
	
<%--	<c:choose>
	
	</c:choose>
	<c:when test="${(number1+number2)/2 > 10}">
	
	</c:when> --%>
	
	
</body>
</html>