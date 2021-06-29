<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
</head>
<body>
 

  <div class="panel panel-default">
    <div class="panel-body">
    <form id="frm" method = "post">
  		<div class="form-group">
    		<label>제목</label>
    		<input type="text" class="form-control" id="title" name = "title">
  		</div>
  		<div class="form-group">
    		<label >내용</label>
    		 <textarea class="form-control" rows="5" id="contents" name = "contents"></textarea>
  		</div>
  			<div class="form-group">
    		<label>작성자: </label>
    		<input type="text" class="form-control" id="user_id" name = "user_id" readonly="readonly">
  		</div> 		
  			<input type="button" class="content2btn" value="글쓰기" onclick="writeFn()"> <%--함수를 ajax04에 만들어줌 --%> 
  		    <input type='reset' value='취소' class='content3btn' id='resetbtn'>	
  		    <button type="button" class="content4btn" onclick="closeFn()"><span class="glyphicon glyphicon-heart-empty"></span>닫기</button>		
	</form>        
    	</div>    		
  		</div>
	

</body>