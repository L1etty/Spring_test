<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기상청</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/jstl/css/style.css" type="text/css">
</head>
<body>
	<div id="warp">
		<div class="d-flex">			
			<%@include file="jstl05_header.jsp" %>
			<section id="contents" class="col-10">
				<article class="container mt-3">
					<h2>과거 날씨</h2>
					<table class="table text-center">
						<thead>
							<tr>
								<th>날짜</th>
								<th>날씨</th>
								<th>기온</th>
								<th>강수량</th>
								<th>미세먼지</th>
								<th>풍속</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>2015년 7월 1일</td>
								<td>구름</td>
								<td>21.9</td>
								<td>83.5mm</td>
								<td>보통</td>
								<td>2/9km/h</td>
							</tr>
							<c:forEach var="history" items="${weatherhistory}">
								<tr>
									<td><fmt:formatDate value="${history.date}" pattern="yyyy년 M월 d일"/></td>
									<td>
										<c:choose>
											<c:when test="${history.weather eq '비'}">
												<img src="/jstl/img/rainy.jpg">
											</c:when>
											<c:when test="${history.weather eq '구름조금'}">
												<img src="/jstl/img/partlyCloudy.jpg">
											</c:when>
											<c:when test="${history.weather eq '흐림'}">
												<img src="/jstl/img/cloudy.jpg">
											</c:when>
											<c:when test="${history.weather eq '맑음'}">
												<img src="/jstl/img/sunny.jpg">
											</c:when>
											<c:otherwise>
												${history.weather}
											</c:otherwise>
										</c:choose>
									</td>
									<td>
										${history.temperatures}°C
									</td>
									<td>
										${history.precipitation}mm
									</td>
									<td>
										${history.microDust}
									</td>
									<td>
										${history.windSpeed}km/h
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</article>
			</section>	
		</div>
		<%@include file="jstl05_footer.jsp" %>
	</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>