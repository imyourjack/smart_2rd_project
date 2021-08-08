<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<!-- 메인페이지 -->
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
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
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		
    </head>
    <body>
        <header>
            <!-- <h1 class="site-heading text-faded d-none d-lg-block"margin-right="50%">  
                <span class="youngmain">COFFEE DICTIONARY。</span>
            </h1>  -->
            <h1 class="site-heading text-center text-faded d-none d-lg-block">
			<span class="site-heading-upper text-primary mb-3">당신만을 위한 원두</span> 
			<span class="youngmain">COFFEE DICTIONARY。</span>
			</h1>
            
        </header>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
            <div class="container">
                <a class="navbar-brand text-uppercase fw-bold d-lg-none" href="index.jsp">카페</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto">
                        
                    <jsp:include page="menu.jsp">
                    	<jsp:param name="pageSelection" value="1" />
                    </jsp:include>
					
                    </ul>
                </div>
            </div>
        </nav>
        <section class="page-section clearfix">
            <div class="container">
                <div class="intro">
                    <img class="intro-img img-fluid mb-3 mb-lg-0 rounded" src="./Resources/assets/img/cafe2.PNG" alt="..." />
                    <div class="intro-text left-0 text-center bg-faded p-5 rounded">
                        <h2 class="section-heading mb-4">
                            <span class="section-heading-upper">TO YOU </span>
                            <span class="youngmiddle">당신만의 커피를 알아보세요</span>
                        </h2>
                        <nav>
                        <ul>
                        <li><a href="#">원두 추천받기</a></li>
                        <li><a href="#">커피맵 확인하기</a></li>
                        </ul>
                        </nav>
                        <p class="mb-3">매일 아침부터 늦은 오후까지 사람들은 각자의 이유들로 커피를 찿습니다. 이젠 당신에게 딱 맞는 커피를 발견해보세요.</p>
                        <div class="intro-button mx-auto"><a class="btn btn-primary btn-xl" href="recommend.jsp">추천받으러 가기</a></div>
                    </div>
                </div>
            </div>
        </section>
        <section class="page-section cta">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 mx-auto">
                        <div class="cta-inner bg-faded text-center rounded">
                            <h2 class="section-heading mb-4">
                                <span class="section-heading-upper">Our Promise</span>
                                <span class="section-heading-lower">To You</span>
                            </h2>
                            <p class="youngmiddle">저희 COFFEE DICTIONARY는 세계 각지의 원두정보와 당신의 설문조사를 토대로 분석하여 당신의 취향에 가장 알맞는 원두를 추천합니다. 당신에게 가장 알맞는 원두를 확인하고 그 원두로 커피를 파는곳 또한 확인해보세요!</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer class="footer text-faded text-center py-5">
            <div class="container"><p class="m-0 small">Copyright CNWA &copy; CHORDCAPTURECHRRY NEVER WORK ALONE</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="./Resources/js/scripts.js"></script>
    </body>
</html>