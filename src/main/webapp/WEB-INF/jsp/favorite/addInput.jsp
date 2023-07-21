<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨 찾기 추가하기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>즐겨 찾기 추가하기</h1>
		<div class="formgroup">
			<label >제목</label>
			<input class="form-control" name="name" id="name">
		</div>
		<div class="formgroup mt-3">
			<label>주소</label>
			<div class="form-inline">
				<input class="form-control col-md-10" name="url" id="url">
				<button type="button" class="btn col-md-2" id="confirmBtn">중복확인</button>
			</div>
			<div class="pb-3">
				<div id="urlDuplicateTrueMessage" class="position-absolute small text-danger invisible">
			     	중복된 url입니다.
			    </div>
			    <div id="urlDuplicateFalseMessage" class="position-absolute small text-success invisible">
			     	저장 가능한 url 입니다.
			    </div>
			</div>
		</div>
		<button class="btn btn-block btn-success mt-3" type="button" id="addBtn">추가</button>
	</div>
	
		<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>	
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

		<script>
		
			$(document).ready(function() {
				
				var duplicate = false;
				
				$("#url").on("input", function(){
						duplicate = false;
						$("#urlDuplicateTrueMessage").addClass("invisible");
						$("#urlDuplicateTrueMessage").removeClass("visible");
						$("#urlDuplicateFalseMessage").removeClass("visible");
						$("#urlDuplicateFalseMessage").addClass("invisible");
				});
				
				$("#confirmBtn").on("click", function() {
					
					let url = $("#url").val();
					
					if(url == ""){
						alert("이메일을 입력해주세요.");
						return;
					}

					if(!(url.startsWith("http://") || url.startsWith("https://")) ){
						alert("주소는 http:// 또는 https:// 로 시작해야합니다.")
						return;
					}
					
					$.ajax({
						type:"get"
						,url:"/favorite/url_confirm"
						,data:{"url":url}
						,success:function(data){
							if(data.Duplicate){
								$("#urlDuplicateFalseMessage").removeClass("visible");
								$("#urlDuplicateFalseMessage").addClass("invisible");
								$("#urlDuplicateTrueMessage").addClass("visible");
								$("#urlDuplicateTrueMessage").removeClass("invisible");
								duplicate = false;
								return;
							}else{
								$("#urlDuplicateTrueMessage").addClass("invisible");
								$("#urlDuplicateTrueMessage").removeClass("visible");
								$("#urlDuplicateFalseMessage").removeClass("invisible");
								$("#urlDuplicateFalseMessage").addClass("visible");
								duplicate = true;
								return;
							}
							alert("중복검사실패");
							
						}
						,error:function(){
							alert("중복검사에러");
						}
					});
					
				});
				
				$("#addBtn").on("click", function(){
					let name = $("#name").val();
					let url = $("#url").val();
					
					if(name == ""){
						alert("제목을 입력하세요.")
						return;
					}
					if(url == ""){
						alert("주소를 입력하세요.")
						return;
					}
					if(!(url.startsWith("http://") || url.startsWith("https://")) ){
						alert("주소는 http:// 또는 https:// 로 시작해야합니다.")
						return;
					}
					
					$.ajax({
						type:"post"
						,url:"/favorite/add"
						,data:{"name":name, "url":url}
						,success:function(data){
							if(data.result == "success"){
								if(duplicate){
									location.href = "/favorite/list"
									return;
								}
								alert("중복검사해주");
							}else{
								alert("입력 실패");
							}
						}
						,error:function(){
							alert("입력 에러");
						}
					});
					
				});
			});
		
		
		</script>
	
</body>
</html>