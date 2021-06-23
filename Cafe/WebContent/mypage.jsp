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

					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="index.jsp">카페</a></li>

					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="recommend.jsp">원두추천</a></li>

					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="search.jsp">원두정보</a></li>
						
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="map.jsp">커피맵</a></li>

					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="about.jsp">About</a></li>

					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="products.jsp">Products</a></li>

					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="store.jsp">Store</a></li>

					<c:if test="${sessionScope.userVO==null}">
						<li class="nav-item px-lg-4"><a
							class="nav-link text-uppercase" href="login.jsp"
							onclick="mypageFn()"
							style="background-color: #e6a756; border-radius: 80px/40px;">마이페이지</a></li>
					</c:if>

					<c:if test="${sessionScope.userVO!=null}">
						<li class="nav-item px-lg-4"><a
							class="nav-link text-uppercase" href="mypage.jsp"
							style="background-color: #e6a756; border-radius: 80px/40px;">마이페이지</a></li>
					</c:if>

					<c:if test="${sessionScope.userVO==null}">
						<li class="nav-item px-lg-4"><a
							class="nav-link text-uppercase" href="login.jsp">로그인</a></li>
					</c:if>

					<c:if test="${sessionScope.userVO!=null}">
						<li class="nav-item px-lg-4"><a
							class="nav-link text-uppercase" href="index.jsp"
							onclick="logoutFn()"> ${sessionScope.userVO.user_name}님 로그아웃</a></li>
					</c:if>


				</ul>
			</div>
		</div>
	</nav>
	<section class="page-section cta">
		<div class="container">
			<div class="row">
				<div class="col-xl-9 mx-auto">
					<div class="cta-inner bg-faded text-center rounded">
						<!-- mypage 내용 들어갈 곳 -->
						<div class="sh_group">
							<div class="sh_header">
								<h2>프로필</h2>
								<a href="javascript:toggle('profile');"
									onclick="clickcr(this,'imn.prfhelp','','',event);"
									class="link_help">
									<i id="i_profile" class="spico ico_arr3_dn">도움말</i></a>
								<!-- [D] 감추기 보이기 dislay:none/block -->
								<p id="p_profile" class="contxt" style="display: none">
									네이버에서의 <em>&#39;나&#39;를 표현하는 프로필</em> 정보입니다. <br> 수정 화면에서
									프로필 사진과 별명을 변경하세요.
								</p>
							</div>
							<div class="sh_content">
								<dl class="sh_lst">
									<dt class="blind">프로필 사진</dt>
									<dd class="pic_desc">
										<a href="#"
											onclick="changeImage();clickcr(this,'imn.prfmodify','','',event);">
											<img
											src="https://phinf.pstatic.net/contact/20210603_281/1622703170569ft61p_PNG/%C4%F5%C4%AB.png?type=s160"
											width="80" height="80" alt=""> <span
											class="spimg img_frame"></span>
										</a>
									</dd>
									<dt class="blind">&nbsp;</dt>
									<dd class="intro_desc">&nbsp;</dd>
									<dt class="nic_tit">별명</dt>
									<dd class="nic_desc">Imyourjack</dd>
								</dl>
							</div>
							<p class="btn_area_btm">
								<a href="#"
									onclick="changeImage();clickcr(this,'imn.prfmodify','','',event);"
									class="btn_model"><b class="btn2">수정</b></a>
							</p>
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
