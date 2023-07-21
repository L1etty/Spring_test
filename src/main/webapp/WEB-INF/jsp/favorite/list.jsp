<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨 찾기 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<h1>즐겨 찾기 목록</h1>
		<table class="table">
			<thead>
				<tr>
					<th>No.</th>
					<th>이름</th>
					<th>주소</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="favorite" items="${favoriteList}" varStatus="status">
					<tr>
						<td id="favorite_${favorite.id}">${status.count}</td>
						<td>${favorite.name}</td>
						<td>${favorite.url}</td>
						<td class="deleteBtn">
							<button id="favorite_btn_${favorite.id}" type="button" class="btn btn-danger btn-sm">삭제</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		
		</table>
	</div>

		<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>	
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		
		<script>
			
			$(document).ready(function(){
			
				$(".deleteBtn button").on("click", function(){
					let id = $(this).attr('id').split("_"); // 2번이 ID
					
					$.ajax({
						type:"get"
						,url:"/favorite/delete"
						,data:{"id":id[2]}
						,success:function(data){
							if(data.Result == "success"){
								location.href = "/favorite/list";
								return;
							}else{
								alert("삭제 실패");
							}
						}
						,error:function(){
							alert("삭제 에러");
						}
					});
					
				});
				
			});
			
		</script>
		
</body>
</html>