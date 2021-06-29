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
<!-- Core theme CSS (includes Bootstrap)-->
<link href="./Resources/css/styles.css" rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="./script.js"></script>
<style type="text/css"> </style>



<script type="text/javascript">
$(document).ready(()=>{
   Wondulist();
});



//원두 리스트 뽑아준다
function Wondulist() {
      //$("#bc").css("display","none");
      //$("#bf").css("display","none");//글쓰기 이후에 안 보이게 함.
       $.ajax({
            url : "wondulist.do",    //-----AjaxBoardListController-----------
            type : "post",           // JSON = dic : {"idx":1, "name:"}
            success: WondulistCallBack,      // <----------------
            dataType: "json",
            error : function() {alert("listerror");
            }
         });      
   }
function WondulistCallBack(data){
    var view = ""
    $.each(data,(index,obj)=>{
       
       view += "<div class=\"searchcolumn\">";
       view += "<img class=recooutput-img src="+obj.img+" alt=\"\" />" 
       view += "<br><br>"
       view += "<h2>" + obj.wondu_n + "</h2>";
       view += "<p>" + obj.wondu_c + "</p>";
       view += "<p>" + obj.price + "</p>";
       view += "<br>";
       view += "<br>";
       view += "<br>";
       view += "</div>";
    });
    $("#attach").html(view);
}




</script>
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
                  <jsp:param name="pageSelection" value="3" />
               </jsp:include>


            </ul>
         </div>
      </div>
   </nav>
   <div class="searchbean">
      <!-- 여기 원두 검색 -->
   </div>
   <form  action="searchoutput.jsp" name="formname">
      <br> <br>
      <div class="searchbar">
         <input type="text" id="wondu_n" name="wondu_n" placeholder="원두 이름" value="">&nbsp;&nbsp; 
            <input type="submit" class="submit"  value="검색하기">
      </div>
      
      <br> <br>
   </form>
   <section>
      <searchnav> <br>
      <div id="attach">
         <div class="searchcolumn">

            <!-- 
            원두 이미지
            원두 이름
            원두 상세 내용
            가격
             -->
             
         </div>
      </div>
      </searchnav>
      
      <searchranking> <br>
      <div id="rankattach">
      <h1><strong>&nbsp;&nbsp;원  두  인  기  목  록</strong></h1>
      <br>
      <br>
      <h3>&nbsp;&nbsp;&nbsp;&nbsp;1. 에티오피아 예가체프 G2</h3>
      <h3>&nbsp;&nbsp;&nbsp;&nbsp;2. 르완다 버번</h3>
      <h3>&nbsp;&nbsp;&nbsp;&nbsp;3. 파푸아 뉴기니A</h3>
      <h3>&nbsp;&nbsp;&nbsp;&nbsp;4. 파푸아뉴기니 블루마운틴</h3>
      <h3>&nbsp;&nbsp;&nbsp;&nbsp;5. 콜롬비아 수프리모 모틸론</h3>
      <h3>&nbsp;&nbsp;&nbsp;&nbsp;6. Brazil Cerrado</h3>
      <h3>&nbsp;&nbsp;&nbsp;&nbsp;7. 오롯이 블랜드</h3>
      <h3>&nbsp;&nbsp;&nbsp;&nbsp;8. 디카페인 브라질</h3>
      <h3>&nbsp;&nbsp;&nbsp;&nbsp;9. 콜롬비아 수프리모 모틸론</h3>
      <h3>&nbsp;&nbsp;&nbsp;&nbsp;10. 과테말라 안티구아</h3>
      <br>
      <br>

      </div>
      </searchranking>
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