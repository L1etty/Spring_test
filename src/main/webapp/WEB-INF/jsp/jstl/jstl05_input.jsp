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
			<header class="bg-primary col-2">
				<div class="logo d-flex justify-content-center">
					<h4 class="lgoo d-flex align-items-center">기상청</h4>
				</div>
				<nav class="menu">
					<ul class="nav flex-column text-light">
						<li class="nav-item m"><a class="nav-link font-weight-bold pl-0">날씨</a></li>
						<li class="nav-item"><a class="nav-link font-weight-bold pl-0">날씨입력</a></li>
						<li class="nav-item"><a class="nav-link font-weight-bold pl-0">테마날씨</a></li>
						<li class="nav-item"><a class="nav-link font-weight-bold pl-0">관측 기후</a></li>
					</ul>
				</nav>
			</header>
			<section id="contents" class="col-10">
				<article class="container mt-3">
					<h2>날씨 입력</h2>
					<form class="">
					
						<div class="form-inline justify-content-between mb-5">
							<div class="form-inline">
								<label>날짜</label><input class="form-control">
							</div>
							<div class="form-inline">
								<label>날씨</label>
								<select class="form-control">
									<option>맑음</option>
								</select>
							</div>
							<div class="form-inline">
								<label>미세먼지</label>
								<select class="form-control">
									<option>좋음</option>
								</select>
							</div>
						</div>
						<div class="form-inline justify-content-between">
							<div class="input-group">
								<input class="form-control">
							    <div class="input-group-prepend">
							      <div class="input-group-text">°C</div>
							    </div>
							</div>
							<div class="input-group">
								<input class="form-control">
							    <div class="input-group-prepend">
							      <div class="input-group-text">mm</div>
							    </div>
							</div>
							<div class="input-group">
								<input class="form-control">
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
		<footer>
			<div class="d-flex mt-2">
				<div class="footer-logo">Logo</div>
				<div>
					(07062) 서울시 동작구 여의대로방로16길 61<br>
					 Copyright@2020 KMA. ALL Rights RESERVED.
				</div>
			</div>
		</footer>
	</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>