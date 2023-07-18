<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/jstl/css/storeStyle.css" type="text/css">
</head>
<body>
	<div id="warp">
			<header class="bg-info d-flex pl-4">
				<h3 class="text-light d-flex align-items-center">배탈의 민족</h3>
			</header>
			
			<section class="maincontents">
				<div class="my-2 titles">우리동네 가게</div>
				<div>
					<c:forEach var="store" items="${storelist}">		
						<div class="card border-info mb-3">
						  <div class="card-body">
						    <h5 class="card-title font-weight-bold"><a href="" class="text-dark">${store.name}</a></h5>
						    <h6 class="card-subtitle mb-2">전화번호 : ${store.phoneNumber}</h6>
						    <h6 class="card-subtitle mb-2">주소 : ${store.address}</h6>
						  </div>
						</div>
					</c:forEach>
				</div>
			</section>
			
			<footer>
				<div>
					<hr>
					<div class="large font-weight-bold mb-2">(주)우와한형제</div>
					<div class="small text-muted">고객센터 : 1500-1500</div>
				</div>
			</footer>
	</div>
	
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	
</body>
</html>