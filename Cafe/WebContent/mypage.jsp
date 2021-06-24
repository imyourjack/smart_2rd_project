.<%@ page language="java" contentType="text/html; charset=UTF-8"
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

					<jsp:include page="menu.jsp">
                    	<jsp:param name="pageSelection" value="9" />
                    </jsp:include>

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

						<div id="container">
							<!-- CONTENTS -->
							<!-- CONTENTS -->
							<div id="content" class="section_home">
								<div class="column">
									<!-- 프로필 설정 -->
									<div class="sh_group">
										<div>
											<div class="sh_header">
												<h2>프로필</h2>
												<br>
												<!-- [D] 감추기 보이기 dislay:none/block -->
												<p id="p_profile" class="contxt" style="display: none">
													네이버에서의 <em>&#39;나&#39;를 표현하는 프로필</em> 정보입니다. <br> 수정
													화면에서 프로필 사진과 별명을 변경하세요.
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
													<dt class="nic_tit">아이디</dt>
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
								<div class="column">
									<!-- 지역 설정 -->
									<div class="sh_group">
										<div class="sh_header">
											<h2>지역 설정</h2>
											<br>
										</div>
										<div class="sh_content">
											<dl class="sh_lst2">
												<dt>관심지 1</dt>
												<dd>광주광역시 북구 누문동</dd>
											</dl>
										</div>
										<p class="btn_area_btm">
											<a href="/user2/help/region?menu=nid&lang=ko_KR"
												onclick="clickcr(this,'imn.regmodify','','',event);"
												class="btn_model"><b class="btn2">설정하기</b></a>
										</p>
									</div>
								</div>
								<p class="desc_sub">
									저희 서비스를 더 이상 이용하지 않는다면 <a
										href="/user2/help/leaveId?menu=nid&lang=ko_KR"
										onclick="clickcr(this,'imn.memberout','','',event);"
										class="more">회원탈퇴 바로가기</a>
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
