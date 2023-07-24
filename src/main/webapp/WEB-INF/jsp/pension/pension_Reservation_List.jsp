<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 목록 보기</title>
	<%@include file="pension_script_css.jsp" %>
</head>
<body>
	<div id="wrap">
	<%@include file="pension_header.jsp" %>
		<section class="w-100">
			<h2 class="text-center my-4">예약 목록 보기</h2>
			<table class="table text-center">
				<thead>
					<tr>
						<th>이름</th>
						<th>예약날짜</th>
						<th>숙박일수</th>
						<th>숙박인원</th>
						<th>전화번호</th>
						<th>예약상태</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="booking" items="${bookingList}" varStatus="status">
						<tr>
							<td>${booking.name}</td>
							<td><fmt:formatDate value="${booking.date}" pattern="yyyy년 M월 dd일"/></td>
							<td>${booking.headcount}</td>
							<td>${booking.day}</td>
							<td>${booking.phoneNumber}</td>
							<c:choose>
								<c:when test="${booking.state eq '대기중'}">
									<td class="text-primary">${booking.state}</td>
								</c:when>
								<c:when test="${booking.state eq '확정'}">
									<td class="text-success">${booking.state}</td>
								</c:when>
								<c:when test="${booking.state eq '취소'}">
									<td class="text-danger">${booking.state}</td>
								</c:when>
								<c:otherwise>
									<td>${booking.state}</td>
								</c:otherwise>
							</c:choose>
							<td>
								<button class="deleteBtn btn btn-danger btn-sm" value="${booking.id}">삭제</button>
							</td>
						</tr>
					</c:forEach>
					
					
				</tbody>
			</table>
		
		</section>
		<%@include file="pension_footer.jsp" %>
	</div>
	<script>
		$(document).ready(function() {
			
			$(".deleteBtn").on("click", function(){
				let id = $(this).val();
				
				$.ajax({
					type:"get"
					,url:"/pension/delete"
					,data:{"id":id}
					,success:function(data){
						alert(id);
						if(data.result == "success"){
							location.reload();
						}else{
							alert("삭제 오류");
						}
					}
					,error:function(){
						alert("삭제 실패");
					}
				});
				
				
				
				
			});
			
		});
	</script>
</body>
</html>