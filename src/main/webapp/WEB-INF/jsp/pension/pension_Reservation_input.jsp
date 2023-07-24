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
	<div id="wrap">
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
					<input id="datepicker" class="form-control bg-white" readonly="readonly">
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
				dateFormat: 'yy-mm-dd',
				minDate: 0
			});
			
			//let date = $("#datepicker").datepicker("getDate");
			
			$("#addBtn").on("click", function(){
			    var date = $("#datepicker").val();
			    var name = $("#name").val();
			    var day = $("#day").val();
			    var headcount = $("#headcount").val();
			    var phoneNumber = $("#phoneNumber").val();
			    
			    if (name == "") {
			        alert("이름을 입력해주세요.");
			        return;
			    }
			    
			    if (date == "") {
			        alert("날짜를 선택해주세요.");
			        return;
			    }
			    
			    if (day == "") {
			        alert("일수를 선택해주세요.");
			        return;
			    }
			    
			    if (headcount == "") {
			        alert("인원수를 입력해주세요.");
			        return;
			    }
			    
			    if (phoneNumber == "") {
			        alert("전화번호를 입력해주세요.");
			        return;
			    }
			    
			    if(!phoneNumber.startsWith("010"))   {
                    alert("010 으로 시작하는 번호만 입력가능합니다. ");
                    return;
                }
			    
			    $.ajax({
			    	type:"get"
			    	,url:"/pension/add"
			    	,data:{"name":name,"headcount":headcount,"day":day,"date":date,"phoneNumber":phoneNumber}
			    	,success:function(data){
			    		if(data.result == "success"){
			    			location.href = "/pension/reservationList";
			    		}else{
			    			alert("추가 실패");
			    		}
			    	}
			    	,error:function(){
			    		alert("추가 에러");
			    	}
			    	
			    });
			    
			    
			});	
			
			
		});
	
	</script>
</body>
</html>