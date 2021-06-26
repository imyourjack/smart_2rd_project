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
<title>카페</title>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

	<header>
		<h1 class="site-heading text-center text-faded d-none d-lg-block">
			<span class="site-heading-upper text-primary mb-3">Let's me
				alone</span> <span class="site-heading-lower">home comming</span>
		</h1>
	</header>

	<!-- Navigation-->
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
	<form action="http://127.0.0.1:5003" method="get">
		<section class="page-section cta">
			<div class="container">
				<div class="row">
					<div class="col-xl-9 mx-auto">
						<div class="form-wrap2" name="" action="">
							<div class="gray-line-head">
								<br>
								<p style="font-size: 2.5em; color: #3F0000;">
									&nbsp;&nbsp;&nbsp;<img class="reco-img-head"
										src="./Resources/assets/img/bean.png" alt="..." /> 커피 추천 설문지
								</p>
								<br> <br>
								<p style="font-size: 1.0em; color: #3F0000;">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;안녕하세요, 카페 커피입니다.<br>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;설문조사를 통해 얻은 모든 정보는 순수히 참고용으로만
									활용되며<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;그 어떤 개인정보도 외부로
									유출되지않으니 안심하셔도 됩니다.<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;설문은
									1분 정도 소요될 것입니다.<br> <br>
								</p>
							</div>
							<br>


							<div class="gray-line">
								<p style="font-size: 1.0em; color: black;">
								<div class="gray-line2">
									<br>
									<strong><h5>&nbsp;&nbsp;◆ 커피의 어떤 향기를 선호합니까?</strong> <img
										class="reco-img" src="./Resources/assets/img/smell.png"
										alt="..." />
									</h5>
									<br>
								</div>
								<br> &nbsp;&nbsp;<input type="radio" name="chk_info1"
									value="과일향">과일향<br> 
								&nbsp;&nbsp;<input type="radio" name="chk_info1" value="꽃향">꽃향<br>
								&nbsp;&nbsp;<input type="radio" name="chk_info1" value="초콜릿향">초콜릿향<br>
								&nbsp;&nbsp;<input type="radio" name="chk_info1" value="카라멜향">카라멜향<br>
								&nbsp;&nbsp;<input type="radio" name="chk_info1" value="견과류향">견과류향
								</p>
							</div>

							<br>


							<div class="gray-line">
								<p style="font-size: 1.0em; color: black;">
								<div class="gray-line2">
									<br> <strong><h5>&nbsp;&nbsp;◆ 어떤 로스팅 정도를
											선호합니까?</strong> <img class="reco-img"
										src="./Resources/assets/img/roasting.png" alt="..." />
									</h5>
									<br>
								</div>
								<br> 
								&nbsp;&nbsp;<input type="radio" name="chk_info2"
										value="미디움로스팅">미디움 로스팅 : 연한 아메리카노 정도입니다.<br>
								&nbsp;&nbsp;<input type="radio" name="chk_info2" value="시티로스팅">시티
								로스팅 : 가장 표준적인 로스팅 정도입니다.<br> &nbsp;&nbsp;<input
									type="radio" name="chk_info2" value="풀시티로스팅">풀 시티 로스팅 :
								산미보다 쓴맛이 강하고 고소한 맛이 특징입니다.<br> &nbsp;&nbsp;<input
									type="radio" name="chk_info2" value="하이로스팅">하이 로스팅: 쓴맛이
								특징입니다.
								</p>
							</div>
							<br>

							<div class="gray-line">
								<p style="font-size: 1.0em; color: black;">
								<div class="gray-line2">
									<br> <strong><h5>&nbsp;&nbsp;◆ 어떤 산미 정도를
											선호합니까?</strong> <img class="reco-img"
										src="./Resources/assets/img/sour.png" alt="..." /> (1 - 약함 5
									- 강함)
									</h5>
									<br>
								</div>
								<br> &nbsp;&nbsp;<input type="radio" name="chk_info3"
									value="1">1<br> &nbsp;&nbsp;<input type="radio"
									name="chk_info3" value="2">2<br> &nbsp;&nbsp;<input
									type="radio" name="chk_info3" value="3">3<br>
								&nbsp;&nbsp;<input type="radio" name="chk_info3" value="4">4<br>
								&nbsp;&nbsp;<input type="radio" name="chk_info3" value="5">5
								</p>
							</div>
							<br>


							<div class="gray-line">
								<p style="font-size: 1.0em; color: black;">
								<div class="gray-line2">
									<br> <strong><h5>&nbsp;&nbsp;◆ 어떤 단맛 정도를
											선호합니까?</strong> <img class="reco-img"
										src="./Resources/assets/img/sweet.png" alt="..." /> (1 - 약함 5
									- 강함)
									</h5>
									<br>
								</div>
								<br> &nbsp;&nbsp;<input type="radio" name="chk_info4"
									value="1">1<br> &nbsp;&nbsp;<input type="radio"
									name="chk_info4" value="2">2<br> &nbsp;&nbsp;<input
									type="radio" name="chk_info4" value="3">3<br>
								&nbsp;&nbsp;<input type="radio" name="chk_info4" value="4">4<br>
								&nbsp;&nbsp;<input type="radio" name="chk_info4" value="5">5
								</p>
							</div>
							<br>

							<div class="gray-line">
								<p style="font-size: 1.0em; color: black;">
								<div class="gray-line2">
									<br> <strong><h5>&nbsp;&nbsp;◆ 어떤 쓴맛 정도를
											선호합니까?</strong> <img class="reco-img"
										src="./Resources/assets/img/bitter.png" alt="..." /> (1 - 약함
									5 - 강함)
									</h5>
									<br>
								</div>
								<br> &nbsp;&nbsp;<input type="radio" name="chk_info5"
									value="1">1<br> &nbsp;&nbsp;<input type="radio"
									name="chk_info5" value="2">2<br> &nbsp;&nbsp;<input
									type="radio" name="chk_info5" value="3">3<br>
								&nbsp;&nbsp;<input type="radio" name="chk_info5" value="4">4<br>
								&nbsp;&nbsp;<input type="radio" name="chk_info5" value="5">5
								</p>
							</div>
							<br>

							<button type="submit" class="recosubmit">보내기</button>
							<!-- 버튼 css 그대로 들어가면 클래스 이름 바꿔주고 꾸미기로 하기. -->


						</div>

					</div>
				</div>

			</div>
		</section>
	</form>


	<footer class="footer text-faded text-center py-5">
		<div class="container">
			<p class="m-0 small">Copyright &copy; Cafe Coffee Website 2022</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="./Resources/js/scripts.js"></script>

</body>
</html>