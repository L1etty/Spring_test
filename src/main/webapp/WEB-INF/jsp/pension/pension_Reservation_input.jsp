<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 하기</title>
	<%@include file="pension_script_css.jsp" %>
</head>
<body>
	<div class="wrap">
		<%@include file="pension_header.jsp" %>
		
		<section class="d-flex justify-content-center">
			<div class="reservation-inputfrom">	
				<div class="text-center my-4">	
					<h2>예약 하기</h2>
				</div>
				<div class="form-group">
					<label>이름</label>
					<input class="form-control" id="name">
				</div>
				<div class="form-group">
					<label>예약날짜</label>
					<input id="datepicker" class="form-control bg-white">
				</div>
				<div class="form-group">
					<label>숙박일수</label>
					<input class="form-control" id="day">
				</div>
				<div class="form-group">
					<label>숙박인원</label>
					<input class="form-control" id="headcount">
				</div>
				<div class="form-group">
					<label>전화번호</label>
					<input class="form-control" id="phoneNumber">
				</div>
				<button id="addBtn" type="button" class="btn btn-block btn-warning">예약하기</button>
			</div>
		</section>
		
		<%@include file="pension_footer.jsp" %>	
	</div>
	<script>
	
		$(document).ready(function(){
	
			$("#datepicker").datepicker({
				dateFormat: 'yy-mm-dd'
			});
			
			//let date = $("#datepicker").datepicker("getDate");
			var date = $("#datepciker").val();
			let name = $("#name").val();
			
			$("#addBtn").on("click", function(){
				alert($("#name").val());
			});	
			
			
		});
	
	</script>
</body>
</html>