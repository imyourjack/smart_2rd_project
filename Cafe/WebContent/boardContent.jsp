<%@page import="model.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
	

</head>
<body>
	<div class="container">
		<!-- <h2>게시판 상세보기</h2> -->
		<div class="panel panel-default">
			<div class="panel-heading"></div>
			<div class="panel-body">
				<form id="ufrm" class="form-horizontal" method="post">
					<div class="form-group">
						<h2 style="color : #e6a756; margin-top: 3%;">번호</h2>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="content_idx" id="ccontent_idx" readonly="readonly">							
						</div>
					</div>
					<div class="form-group">
						<h2 style="color : #e6a756; margin-top: 1%;">제목</h2>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="title" id="ctitle">								
						</div>
					</div>
					<div class="form-group">
						<h2 style="color : #e6a756; margin-top: 1%;">내용</h2>
						<div class="col-sm-10">
							<textarea rows="8" cols="60" class="form-control" name="contents" id="ccontents"></textarea>								
						</div>
					</div>
					<div class="form-group">
						<h2 style="color : #e6a756; margin-top: 1%;">작성자</h2>
						<div class="col-sm-10">
							<input type="text" class="form-control" readonly="readonly" id="cuser_id" readonly="readonly">								
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
						    <%-- <c:if test="${!empty sessionScope.userVO }">
							<button type="button" class="btn btn-primary btn-sm" onclick="updateFn()">수정</button>
							</c:if>
							<button type="button" class="btn btn-warning btn-sm" onclick="resetFn()">취소</button> --%>
							<button type="button" class="content5btn" onclick="closeFn()"><span class="glyphicon glyphicon-heart-empty"></span>닫기</button>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
</body>
</html>