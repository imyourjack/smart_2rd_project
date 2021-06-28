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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="./script.js"></script>
<style type="text/css">
</style>
<script type="text/javascript">
$(document).ready(()=>{
   Wondusearchlist();
});


function searchgoFn(){
   location.href="search.jsp"
}
function homegoFn(){
   location.href="index.jsp"
}
//원두 리스트 뽑아준다

 function Wondusearchlist() {
    $.ajax({
         url : "wondusearchlist.do",    //-----AjaxBoardListController-----------
         type : "get",           // JSON = dic : {"idx":1, "name:"}
         success: WondusearchlistCallBack,      // <----------------
         dataType: "json",
         error : function() {alert("searchlisterror");
         }
      });      
}
function WondusearchlistCallBack(data){
 var view = ""
 $.each(data,(index,obj)=>{
    view += "<div class=\"searchcolumn\">";
    view += "<img class=\"recooutput-img\" src="+obj.img+" alt=\"...\" style=\"width: 200px; height :200px\" />"
    view += "<br>";
    view += "<br>";
    view += "<h2>" + obj.wondu_n + "</h2>";
    view += "<p>" + obj.wondu_c + "</p>";
    view += "<p>" + obj.price +"</p>";
    view += "<br>";
    view += "<br>";
    view += "<br>";
    view += "</div>";
 });
 $("#searchattach").html(view);
}

</script>
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

                     <span class="section-heading-lower"><strong>원두 검색
                           결과</strong></span>
                  </h2>

                  <div id="searchattach">
                     <!--  -->
                  </div>






                  <ul class="list-unstyled list-hours mb-5 text-left mx-auto">
                     <li class="list-unstyled-item list-hours-item d-flex">
                        <!-- li 글 쓰고 밑에 옅은 회색 줄 생김 --> <!-- 여기 왼쪽 글씨 쓰는 부분 한글 안 먹힘 --> <!-- 여기는 나중에 원두 이미지 컬럼에 src 전부 넣어준 후에 작성.우선 자리 비워둠.
                        <img alt="" src="">
                         -->
                  </ul>

                  <div>
                     <p>
                        <button type="button" class="recooutbtn" onclick="searchgoFn()">검색하기</button>
                        <button type="button" class="recooutbtn" onclick="homegoFn()">홈으로</button>
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