<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
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
                <span class="site-heading-upper text-primary mb-3">A Free Bootstrap Business Theme</span>
                <span class="site-heading-lower">Business Casual</span>
            </h1>
        </header>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
            <div class="container">
                <a class="navbar-brand text-uppercase fw-bold d-lg-none" href="index.html">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="index.jsp">Home</a></li>

					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="about.jsp">About</a></li>

					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="products.jsp">Products</a></li>

					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="store.jsp">Store</a></li>
						
					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="mypage.jsp">Mypage</a></li>

					<c:if test="${sessionScope.userVO==null}">
						<li class="nav-item px-lg-4"><a
							class="nav-link text-uppercase" href="login.jsp">Login</a></li>
					</c:if>


					<c:if test="${sessionScope.userVO!=null}">
						<li class="nav-item px-lg-4"><a
							class="nav-link text-uppercase" href="index.jsp"
							onclick="logoutFn()"> ${sessionScope.userVO.user_name}님
								Logout</a></li>
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
                        
                        
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer class="footer text-faded text-center py-5">
            <div class="container"><p class="m-0 small">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="./Resources/js/scripts.js"></script>
    </body>
</html>
