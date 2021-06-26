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

</style>
<script type="text/javascript">
function searchbeanFn() {
	//var formData= $("#ufrm").serialize();
    var wondu_n = $("#wondu_n").val(); //id하나만 가지고 오기위해서 val을 씀
    var wondu_c = $("#wondu_c").val(); //serialize는 다 가져오는것 
    var price = $("#wondu_c").val();
    $.ajax({
       url : "ajaxsearch.do", //글쓰기 버튼을 누르면 serialize을 가지고ajaxregister여기로 연결해서 처리해주고
       type : "get",
       data : {
          "wondu_n" : wondu_n,
          "wondu_c" : wondu_c,
          "price" : price
       }, //"파라메터":벨류값
       success : function(data) {
          if (data == "NO") {
             alert("검색을 실패하셨습니다.");
          } else {
             selectWondu; //search 성공하면 같은 
          }
       }, //처리가 성공하면 바로 list를 뽑아준다
       error : function() {alert("search error");}
    });
 }
 function selectWondu(){
	 
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
	<form>
	<br>
	<br>
	<div class="searchbar">
	<input type="text" id="coffeebean" name="coffeebean" placeholder="원두 이름">&nbsp;&nbsp;
	<input type="button"  class="searchbtn" value="검색하기" onclick="searchbeanFn()">
	</div>
	<br>
	<br>
	</form>
	<section>
  <searchnav>
    	<br>
    	<% 
    	for(int i=1; i<=51; i++){
    		
    	}
    	 %>
      <div class="searchcolumn">
			<h2>원두 이름1</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque
				ultricies, eget elementum magna tristique. Quisque vehicula, risus
				eget aliquam placerat, purus leo tincidunt eros, eget luctus quam
				orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
		</div>
      <div class="searchcolumn">
			<h2>원두 이름2</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque
				ultricies, eget elementum magna tristique. Quisque vehicula, risus
				eget aliquam placerat, purus leo tincidunt eros, eget luctus quam
				orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
                
		</div>
        <div class="searchcolumn">
			<h2>원두 이름3</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque
				ultricies, eget elementum magna tristique. Quisque vehicula, risus
				eget aliquam placerat, purus leo tincidunt eros, eget luctus quam
				orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
		</div>
        <div class="searchcolumn">
			<h2>원두 이름4</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque
				ultricies, eget elementum magna tristique. Quisque vehicula, risus
				eget aliquam placerat, purus leo tincidunt eros, eget luctus quam
				orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
		</div>
		<div class="searchcolumn">
			<h2>원두 이름5</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque
				ultricies, eget elementum magna tristique. Quisque vehicula, risus
				eget aliquam placerat, purus leo tincidunt eros, eget luctus quam
				orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
		</div>
		<div class="searchcolumn">
			<h2>원두 이름6</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque
				ultricies, eget elementum magna tristique. Quisque vehicula, risus
				eget aliquam placerat, purus leo tincidunt eros, eget luctus quam
				orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
		</div>
		<div class="searchcolumn">
			<h2>원두 이름7</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque
				ultricies, eget elementum magna tristique. Quisque vehicula, risus
				eget aliquam placerat, purus leo tincidunt eros, eget luctus quam
				orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
		</div>
		<div class="searchcolumn">
			<h2>원두 이름8</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque
				ultricies, eget elementum magna tristique. Quisque vehicula, risus
				eget aliquam placerat, purus leo tincidunt eros, eget luctus quam
				orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
		</div>
      
   <br>
    <br>
  </searchnav>
  
  <searchranking>
  <br>
    <h1>&nbsp;&nbsp;인 기 목 록</h1>
    <br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;1. 원두1</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;2. 원두2</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;3. 원두3</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;4. 원두4</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;5. 원두5</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;6. 원두6</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;7. 원두7</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;8. 원두8</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;9. 원두9</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;10. 원두10</h3>
    <br>
    <br>
    <p>블라블라 임의 할말 없으면 br</p>
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