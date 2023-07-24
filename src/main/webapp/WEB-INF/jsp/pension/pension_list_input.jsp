<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>통나무 펜션</title>
        <%@include file="pension_script_css.jsp" %>
    </head>

    <body>
        <div id="wrap" >
        
			<%@include file="pension_header.jsp"  %>

            <section class="banner">
                <img src="/pension/images/test06_banner1.jpg" id="bannerImage">
            </section>
            <sction class="d-flex">
                <article class="reservation d-flex justify-content-center align-items-center">
                    <div class="display-4">
                        실시간 <br>
                        예약 하기 
                    </div>
                </article>
                <article class="reservation-confirm">
                    <div class="m-4">
                        <div class="d-flex align-items-end">
                            <h3 class="mr-4">예약 확인</h3>
                        
                            <label>회원
                            <input type="radio" name="type" value='member' checked></label>
                            <label class="ml-3">비 회원
                            <input type="radio" name="type" value="nonMemeber"></label>
                        </div>
                        <div class="member-input mt-3" id="member">
                            <div class="input-gorup form-inline">
                                <label class="input-label">아이디 :</label>
                                <input type="text" class="form-control text-input" id="id">
                            </div>
                            <div class="input-gorup form-inline mt-3">
                                <label class="input-label">비밀번호 :</label>
                                <input type="password" class="form-control text-input" id="password">
                            </div>

                        </div>

                        <div class="no-member-input mt-3 d-none" id="nonMember">
                            <div class="input-gorup form-inline">
                                <label class="input-label">이름 </label>
                                <input type="text" class="form-control text-input" id="name">
                            </div>
                            <div class="input-gorup form-inline mt-3">
                                <label class="input-label">전화번호 </label>
                                <input type="text" class="form-control text-input" id="phoneNumber">
                            </div>
                            <div class="input-gorup form-inline mt-3">
                                <label class="input-label">날짜 </label>
                                <input type="text" class="form-control text-input" id="date">
                            </div>

                        </div>
                        <div class="d-flex justify-content-end">
                            <button class="btn btn-success mt-3 mr-5" id="lookupBtn">조회 하기</button>
                        </div>
                    </div>
                </article>
                <article class="reservation-call d-flex justify-content-center align-items-center">
                    <div>
                        <h3>예약문의 : </h3>
                        <h1>010-</h1>
                        <h1>000-1111</h1>
                    </div>
                </article>
            </sction>

			<%@include file="pension_footer.jsp" %>


        </div>

    <script>
        $(document).ready(function() {

            // 데이트 피커 셋팅
            $( "#date" ).datepicker({
                minDate:0, 
                dateFormat: "yy년 m월 d일",
            });

            // 라디오 버튼 선택에 따른 인풋 변경
            $("input[name=type]").on('change', function() {
                if($(this).val() == 'member') {
                    $("#member").removeClass("d-none");
                    $("#nonMember").addClass("d-none");
                } else {
                    $("#nonMember").removeClass("d-none");
                    $("#member").addClass("d-none");
                }
            });

            $("#lookupBtn").on('click', function() {
                if($("input[name=type]:checked").val() == "member") {

                    // 회원 입력 항목 유효성 검사 
                    if($("#id").val() == '')   {
                        alert("아이디를 입력하세요.");
                        return;
                    }

                    if($("#password").val() == '')   {
                        alert("비밀번호를 입력하세요.");
                        return;
                    }

                    alert("조회 성공");

                } else {

                    // 비 회원 입력 항목 유효성 검사 
                    if($("#name").val() == '')   {
                        alert("이름을 입력하세요.");
                        return;
                    }

                    if($("#phoneNumber").val() == '')   {
                        alert("전화번호를 입력하세요.");
                        return;
                    }

                    // 010 으로 시작하는 것만 통과
                    if(!$("#phoneNumber").val().startsWith("010"))   {
                        alert("010 으로 시작하는 번호만 입력가능합니다. ");
                        return;
                    }

                    if($("#date").val() == '')   {
                        alert("날짜를 입력하세요.");
                        return;
                    }

                    alert("조회 성공");
                }
            });

            var bannerList = ["/pension/images/test06_banner1.jpg", "/pension/images/test06_banner2.jpg", "/pension/images/test06_banner3.jpg", "/pension/images/test06_banner4.jpg"];
            var currentImageIndex = 0;
            setInterval(function() {
                $("#bannerImage").attr("src", bannerList[currentImageIndex]);
                currentImageIndex++;

                if(currentImageIndex == bannerList.length) {
                    currentImageIndex = 0;
                }
            }, 3000); 
        } );
    </script>
    </body>
</html>