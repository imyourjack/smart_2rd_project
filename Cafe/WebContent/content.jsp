<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.BoardVO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta name="description" content="" />
<meta name="author" content="" />
<title>카페</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./Resources/js/all.js" crossorigin="anonymous"></script>
<!-- ./Resources/js/all.min.js -->
<!-- Google fonts-->
<link href="stylesheet" rel="stylesheet" />
<link href="stylesheet" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="./Resources/css/styles.css" rel="stylesheet" />

<style>
td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: rgba(230, 167, 86, 0.9);
}
</style>

<script type="text/javascript">


$(document).ready(()=> {
	content_list();
	});

function content_list() {     //list를 호출하기위해 함수에 담아줌
	
	   $("#bf").css("display", "none");
	   $("#bc").css("display", "none");
	   $.ajax({
		    url : "ajaxlist.do", //서버로요청 -> AjaxBoardlistController---↓
			type : "get",
			//data : {"msg":msg},
			datatype : "json", //  JSON=dic : {"idx":1, "name" : "홍길동"}
			success : content_callback, //콜백함수
			error : function() {alert("error");}		   
	   });
}

function content_callback(data) {
	var view="<table class=recommendTable>";
	view+="<tr class=recommendTr>"; //동적으로 붙히기때문에 여기서부터는 +를 붙힘
	view+="<td>번호</td>";
	view+="<td>제목</td>";
	view+="<td>작성자</td>";
	view+="</tr>";
	$.each(data, (index, obj)=> {
		view+="<tr>";
		view+="<td id='content_idx"+index+"'>"+obj.content_idx+"</td>";
		view+="<td><a class=content_a href='javascript:contentFn("+index+")'>"+obj.title+"</a></td>";
		view+="<td>"+obj.user_id+"</td>";
		view+="</tr>";	
	});
 	view+="<tr>";
 	view+="<td colspan='3'>";
 	view+="<input type='button' value='글쓰기' class='contentFirstBtn' onclick='btnWrite()'/>";
 	view+="</td>";
 	view+="</tr>";
	view+="</table>";
	$("#content_id").html(view);
}

function writeFn() {
	var formdata=$("#frm").serialize(); //boardForm에 form아이디를 불러옴 serialize란 폼안에 있는 모든 데이터를 읽어올 수 있다.
	//alert(data);
	$.ajax({
		url : "ajaxregister.do",
		type : "post",
		data :formdata ,
		success : content_list,
		error : function () {alert("error");}					
	});
}

function btnWrite() {
	var user_id='${sessionScope.userVO.user_id}';
	$("#bc").css("display", "none"); 
	$("#bf").css("display", "block"); //display = none 이였던걸 보여주라라는 뜻
	$("#resetbtn").trigger("click"); //글쓰기후 글쓰기를 새로할때 전에 입력한 정보가 리셋되는 느낌
	$("#user_id").val(user_id);
}

function contentFn(index) {
	var idx=$("#content_idx"+index).text();
$.ajax({
	  url : "ajaxcontent.do",
	  type : "get",
	  data : {"content_idx" : idx},
	  datatype : "json",
	  success : callContent, //콜백
	  error : function () {alert("error");}			
});
	
}
function resetFn() {
	var idx=$("#content_idx").val();  //cidx를 가지고와서 취소버튼을 눌렀을때 원래대로 
$.ajax({
	  url : "ajaxcontent.do",
	  type : "get",
	  data : {"idx" : idx},
	  datatype : "json",
	  success : callContent, //콜백
	  error : function () {alert("error");}			
});
}

function callContent(data) {  //위에 callContent callback 함수 만들기
	$("#bc").css("display", "block"); 
	$("#bf").css("display", "none");
	var content_idx=data.content_idx;
	var title=data.title;
	var contents=data.contents;
	var user_id=data.user_id;
	$("#ccontent_idx").val(content_idx);
	$("#ctitle").val(title);
	$("#ccontents").val(contents);
	$("#cuser_id").val(user_id);
}

function delbtn(content_idx) {
	if(confirm("정말로 삭제하시겠습니까?")==true){
	$.ajax({ 
		url : "delete.do",
		type : "get",
		data : {"content_idx": content_idx},
		success : content_list,
	    error : function() {alert("error");}
	});
 }else{
	return false;
 }
}
function closeFn() {
	$("#bc").css("display", "none");
	$("#bf").css("display", "none");
	$("#content_id").css("display","inline-table")
}
function updateFn() {
	var formdata=$("#ufrm").serialize();
	//alert(formdata);
	$.ajax({
		url : "ajaxupdate.do",
		type : "post",
		data :formdata ,
		success : list,
		error : function () {alert("error");}					
	});
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
						<jsp:param name="pageSelection" value="6" />
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
						<!-- 자유게시판 내용 들어가는 곳 -->
						<div class="sh_group">
							<div class="sh_header">
								<h2>자유게시판</h2>
							</div>
							<div class="sh_content">
								<dl class="sh_lst2">
									<div style="overflow: scroll;">
										<!-- <div style="display: none" id="bf"> -->
										<!-- <div> -->
										<table class=recommendTable id="content_id">
											<tr class=recommendTr>
												<th>번호</th>
												<th>제목</th>
												<th>작성자</th>
											</tr>
											<tr>
												<th></th>
												<td></td>
												<td></td>
											</tr>
										</table>
										
										
										<!-- <input type="button" class="btn_area_btm1" value="글쓰기"
											onclick="writeFn()"> <input type='reset' value='취소'
											class='btn_area_btm1' id='resetbtn'>

										<button type="button" class="btn_area_btm1"
											onclick="closeFn()">
											<span class="glyphicon glyphicon-heart-empty"></span> 닫기
										</button>
										</div> -->

									</div>
								</dl>
							</div>
							
							<div class="panel-body">
								<div id="msg"></div>
								<div style="display: none" id="bf">
									<c:import url="boardForm.jsp" />
								</div>
								<div style="display: none;" id="bc">
									<c:import url="boardContent.jsp" />
								</div>
							</div>
							
							<!-- <div>
								<p class="btn_area_btm1">
									<button type="button" onclick=""
										style="background-color: #e6a756; color: rgba(47, 23, 15, 0.9); border-radius: 15px;">
										글쓰기</button>
								</p>
							</div> -->
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