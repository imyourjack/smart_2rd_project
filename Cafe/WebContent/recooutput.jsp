<%-- <%@page import="model.wonduCVO"%> --%>
<%@page import="model.DAOMybatis"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Business Casual - Start Bootstrap Theme</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="./Resources/js/all.js" crossorigin="anonymous"></script>
<!-- ./Resources/js/all.min.js -->
<!-- Google fonts-->
<link href="stylesheet" rel="stylesheet" />
<link href="stylesheet" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="./Resources/css/styles.css" rel="stylesheet" />
<link rel="stylesheet" href="./Resources/css/style.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function wonduContent(data) {  //위에 callContent callback 함수 만들기
	/* $("#bc").css("display", "block"); 
	$("#bf").css("display", "none"); */
	//var wondu_c=data.wondu_c;
	$.ajax({
		  url : "ajaxcontents.do",
		  type : "get",
		  data : {"wondu_c" : wondu_c},
		  success : wonduContent, //콜백
		  error : function () {alert("error");}			
	});
	//$("#cidx").val(idx);   
	
}
function goreset(){
	location.href="recommend.jsp"
}
function gohome(){
	location.href="index.jsp"
}
function gocontroller(){
	location.href="ajaxwondugood.do"
}
function goodsFn() {
	 var formdata=$("#wondugood").serialize(); //boardForm에 form아이디를 불러옴 serialize란 폼안에 있는 모든 데이터를 읽어올 수 있다.
	//alert(data);
	$.ajax({
		url : "ajaxwondugood.do",
		type : "post",
		data :formdata,
		datatype : "json",
		success : gohome(),
		error : function () {alert("error");}					
	});
}
</script>
</head>
<body>
	<header>
		<h1 class="site-heading text-center text-faded d-none d-lg-block">
			<span class="site-heading-upper text-primary mb-3">당신만을 위한 원두</span> 
			<span class="youngmain">COFFEE DICTIONARY。</span>
		</h1>
	</header>

	<!-- Navigation-->
	<form id="wondugood" class="form-horizontal" method="get">
	<nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
		<div class="container">
			<a class="navbar-brand text-uppercase fw-bold d-lg-none"
				href="index.html">카페</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto">
					<jsp:include page="menu.jsp">
						<jsp:param name="pageSelection" value="2" />
					</jsp:include>

				</ul>
			</div>
		</div>
	</nav>

     
	<!-- 내용 넣을 곳 -->
	<section class="page-section cta">
		<div class="container">
			<div class="row">
				<div class="col-xl-9 mx-auto">
					<div class="cta-inner bg-fade text-center rounded">
						<h2 class="section-heading mb-5">
						
							<span class="section-heading-upper">당신의 취향을 발견하다</span><br>
							
							<span class="section-heading-lower"><strong>원두 추천 결과</strong></span>
						</h2>
						
							<img class="recooutput-img" src="./Resources/assets/img/intro.jpg" alt="..." style="
    						width: 500px;"/>
							<br>
						
						
						<ul class="list-unstyled list-hours mb-5 text-left mx-auto">
							<li class="list-unstyled-item list-hours-item d-flex">
							<!-- li 글 쓰고 밑에 옅은 회색 줄 생김 -->
								<!-- 여기 왼쪽 글씨 쓰는 부분 한글 안 먹힘 -->
								<h4><br><br><strong>${sessionScope.wonduInfo }</strong><br><br>
								<p style= color:#2F170F align="left">
								<br>원두 정보 : ${sessionScope.vo2.wondu_c}
								<br><br>가격 : ${sessionScope.vo2.price }</h4></li><br>
								</p>
								
								<span class="ms-auto"></span>
							
							
						</ul>
						<div class="containers">
						<div class="gray-line">
								<p style="font-size: 1.5em; color: black;">
								<div>
									<br> <h5>&nbsp;&nbsp;<strong>만족도 평가</strong>(1 - 불만족	5 - 만족)
									</h5>
									<br>
								</div>
								<br><input type="radio" name="good" value="1" style="width:15px;border:1px;">1 &nbsp;&nbsp; 
									<input type="radio" name="good" value="2" style="width:15px;border:1px;">2 &nbsp;&nbsp;
									<input type="radio" name="good" value="3" style="width:15px;border:1px;">3 &nbsp;&nbsp;
									<input type="radio" name="good" value="4" style="width:15px;border:1px;">4 &nbsp;&nbsp;
									<input type="radio" name="good" value="5" style="width:15px;border:1px;">5 
									<input type="button" class="btn-reco btn-sm" onclick="goodsFn()" value="완료">
								    </p> 
							</div>
							</div>
							</form>
						<!-- 다시 하기 버튼 => recommend.jsp -->
						<!-- 홈으로 가기 버튼 => index.jsp -->
						<div class="wd-group">
						<div class ="wd-btn">					
						<button type="button" class="recooutbtn" onclick='goreset()'><span class="glyphicon glyphicon-heart-empty"></span>다시하기</button>
						</div>
						<div class = "wd-btn2">											
						<button type="button" class="recooutbtn" onclick='gohome()'>홈으로</button>						
						</div>
						</div>
						
												
					</div>
					
				</div>
			</div>			
		</div>
		
	</section>
	
	<footer class="footer text-faded text-center py-5">
		<div class="container">
			<p class="m-0 small">Copyright CNWA &copy; CHORDCAPTURECHRRY NEVER WORK ALONE</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="./Resources/js/scripts.js"></script>
</body>
</html>