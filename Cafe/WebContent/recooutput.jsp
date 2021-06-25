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
</head>
<body>
	<header>
		<h1 class="site-heading text-center text-faded d-none d-lg-block">
			<span class="site-heading-upper text-primary mb-3">A Free
				Bootstrap Business Theme</span> <span class="site-heading-lower">Business
				Casual</span>
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
	<section class="page-section cta">
		<div class="container">
			<div class="row">
				<div class="col-xl-9 mx-auto">
					<div class="cta-inner bg-faded text-center rounded">
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
								<h4><br><br>아라비카 원두 </h4></li><br>
								
								<span class="ms-auto">ClosedLorem ipsum dolor sit amet, consectetur adipiscing elit.
				Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque
				ultricies, eget elementum magna tristique. Quisque vehicula, risus
				eget aliquam placerat, purus leo tincidunt eros, eget luctus quam
				orci in velit. Praesent scelerisque tortor sed accumsan convallis.</span>
							
							
						</ul>
						
						<!-- 다시 하기 버튼 => recommend.jsp -->
						<!-- 홈으로 가기 버튼 => index.jsp -->
						<div>
						<button type="button" class="recooutbtn">다시하기</button>
						<button type="button" class="recooutbtn">홈으로</button>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<footer class="footer text-faded text-center py-5">
		<div class="container">
			<p class="m-0 small">Copyright &copy; Your Website 2021</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="./Resources/js/scripts.js"></script>
</body>
</html>