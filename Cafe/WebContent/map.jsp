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
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript" src="./script.js"></script>
<style type="text/css">
.column {
   float: left;
   width: 25%;
   padding: 15px;
   color: white;
}
</style>
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
                    	<jsp:param name="pageSelection" value="4" />
                    </jsp:include>
               
            </ul>
         </div>
      </div>
   </nav>
   <div class="row"></div>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=yes">
    <title>간단한 지도 표시하기</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=n2u6sqdm7a"></script>
</head>

<body>
<!-- 지도 맵의 크기 css 형식입니다 수정 가능 합니다 !  -->

<div id="map" style="width:40%;height:400px;"></div>

<script>
// 여기가  지도 위치와 줌 정도를 수정하는 공간 입니다 . 위치를 변경하고 싶으면 위도경도 수정하고 
// 줌 정도 수정하시면 됩니다 


var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(35.149741, 126.920007),
    zoom: 19
});

var marker = new naver.maps.Marker({
    position: new naver.maps.LatLng(35.149741, 126.920007),
    map: map
});
</script>
</body>
</html>

   <div class="row">
   <!-- 내용 넣을 곳 -->
   
   <div class="column">
         <h2>Column</h2>
         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque
            ultricies, eget elementum magna tristique. Quisque vehicula, risus
            eget aliquam placerat, purus leo tincidunt eros, eget luctus quam
            orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
      </div>
      
   </div>

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