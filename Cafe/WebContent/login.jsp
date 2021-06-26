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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<body>
	<header>
		<h1 class="site-heading text-center text-faded d-none d-lg-block">
			<span class="site-heading-upper text-primary mb-3">Let's me
				alone
			</span> <span class="site-heading-lower"> home comming
			</span>
		</h1> 
	</header>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
		<div class="container">
			<a class="navbar-brand text-uppercase fw-bold d-lg-none"
				href="index.jsp">카페</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto">
				
				
					<jsp:include page="menu.jsp">
                    	<jsp:param name="pageSelection" value="10" />
                    </jsp:include>
				

				</ul>
			</div>
		</div>
	</nav>
	<section class="page-section about-heading">
		<div class="container">


			<div class="about-heading-content">
				<div class="row">
					<div class="col-xl-9 col-lg-10 mx-auto">
						<!-- 로그인 바디 넣는 곳 -->
						<div class="form-wrap">
							<div class="button-wrap">
								<div id="btn"></div>
								<button type="button" class="togglebtn" onclick="login()">LOGIN</button>
								<button type="button" class="togglebtn" onclick="register()">REGISTER</button>
							</div>
							<c:if test="${sessionScope.userVO==null}">
								<form id="login" class="input-group" method="post">
									<input type="text" class="input-field" id="user_id"
										name="user_id" placeholder="User ID" required> <input
										type="password" class="input-field" id="password"
										name="password" placeholder="Password" required>
									<!-- <input type="checkbox" class="checkbox"><span>Remember Password</span> -->
									<input type="button" class="loginsubmit" onclick="loginFn()" value="login">
								</form>
							</c:if>

							<c:if test="${sessionScope.userVO!=null}">
									${sessionScope.userVO.user_name}님 방문을 환영합니다.
									<input type="button" class="loginsubmit" onclick="logoutFn()" value="logout">
							</c:if>



							<form id="register" action="#login.jsp" class="input-group">
								<input type="text" class="input-field" id="regi_userid"
									maxlength="20" placeholder="ID" required>
								<!-- <input type="email" class="input-field" placeholder="Your Email" required> -->
								<input type="password" id="regi_password" maxlength="20"
									class="input-field" placeholder="Password" required>
								<p class="limit_txt user_pwd_txt" id="password_txt"
									style="font-size: 0.5em; color: red;">영문, 숫자 혼합하여 20자리 이내로
									입력하세요.</p>
								<input type="password" id="password_chk" maxlength="20"
									class="input-field" placeholder="Password check" required>
								<!-- <input type="checkbox" class="checkbox"><span>Terms and conditions</span> -->
								<input type="text" class="input-field" placeholder="nickname"
									required> <br>
								<p style="font-size: 1.0em; color: gray;">
									gender <input type="radio" name="chk_info" value="male">male
									<input type="radio" name="chk_info" value="female">female
								</p>
								<button type="submit" class="registersubmit"
									onclick="registerFn()">register</button>
							</form>
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
	<script>
		var x = document.getElementById("login");
		var y = document.getElementById("register");
		var z = document.getElementById("btn");

		function login() {
			x.style.left = "50px";
			y.style.left = "450px";
			z.style.left = "0";
		}

		function register() {
			x.style.left = "-400px";
			y.style.left = "50px";
			z.style.left = "110px";
		}
	</script>
</body>
</html>
