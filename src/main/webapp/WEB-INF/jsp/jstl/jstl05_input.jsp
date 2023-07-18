<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<%@ include file="jstl05_header.jsp" %>
			<section id="contents" class="col-10">
				<article class="container mt-3">
					<h2>날씨 입력</h2>
					<form action="test05add" method="get">
					
						<div class="form-inline justify-content-between mb-5">
							<div class="form-inline">
								<label>날짜</label><input class="form-control" name="date">
							</div>
							<div class="form-inline">
								<label>날씨</label>
								<select class="form-control" name="weather">
									<option value="맑음">맑음</option>
									<option value="비">비</option>
									<option value="흐림">흐림</option>
									<option value="구름조금">구름조금</option>
								</select>
							</div>
							<div class="form-inline">
								<label>미세먼지</label>
								<select class="form-control" name="microDust">
									<option value="좋음">좋음</option>
									<option value="보통">보통</option>
									<option value="나쁨">나쁨</option>
									<option value="최악">최악</option>
								</select>
							</div>
						</div>
						<div class="form-inline justify-content-between">
							<div class="input-group">
								<input class="form-control" name="temperatures">
							    <div class="input-group-prepend">
							      <div class="input-group-text">°C</div>
							    </div>
							</div>
							<div class="input-group">
								<input class="form-control" name="precipitation">
							    <div class="input-group-prepend">
							      <div class="input-group-text">mm</div>
							    </div>
							</div>
							<div class="input-group">
								<input class="form-control" name="windSpeed">
							    <div class="input-group-prepend">
							      <div class="input-group-text">km/h</div>
							    </div>
							</div>
						</div>
						<div class="d-flex justify-content-end">
							<button class="btn btn-success">버튼</button>
						</div>
					</form>
				</article>
			</section>	
		</div>
		<%@ include file="jstl05_footer.jsp" %>
	</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>