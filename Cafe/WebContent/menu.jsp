<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%
   String num = request.getParameter("pageSelection");
   System.out.println(num);
%>
                  
<li class="nav-item px-lg-4">
   <a class="nav-link text-uppercase" href="index.jsp"
      <%
         if(num.equals("1")){
      %>
         style="color:#e6a756;"
      <% } %>
   >카페</a>
</li>
<li class="nav-item px-lg-4">
   <a class="nav-link text-uppercase" href="recommend.jsp"
      <%
         if(num.equals("2")){
      %>
         style="color:#e6a756;"
      <% } %>
   >원두추천</a>
</li>
<li class="nav-item px-lg-4">
   <a class="nav-link text-uppercase" href="search.jsp"
      <%
         if(num.equals("3")){
      %>
         style="color:#e6a756;"
      <% } %>
   >원두정보</a>
</li>

<li class="nav-item px-lg-4">
   <a class="nav-link text-uppercase" href="map.jsp"
      <%
         if(num.equals("4")){
      %>
         style="color:#e6a756;"
      <% } %>
   >커피맵</a>
</li>

<c:if test="${sessionScope.userVO==null}">
<li class="nav-item px-lg-4">
	<a   class="nav-link text-uppercase"  href="good.jsp"
		<%
			if(num.equals("5")){
		%>
			style="color:#e6a756;"
		<% } %>
	>만족도</a>
</li>
</c:if>
<c:if test="${sessionScope.userVO!=null}">
<li class="nav-item px-lg-4">
	<a   class="nav-link text-uppercase"  href="good.jsp"
		<%
			if(num.equals("5")){
		%>
			style="color:#e6a756;"
		<% } %>
	>만족도</a>
</li>
</c:if>
<li class="nav-item px-lg-4">
	<a class="nav-link text-uppercase" href="content.jsp"
		<%
			if(num.equals("6")){
		%>
			style="color:#e6a756;"
		<% } %>
	>자유게시판</a>
</li>
<c:if test="${sessionScope.userVO==null}">
<li class="nav-item px-lg-4">
   <a class="nav-link text-uppercase" href="login.jsp" onclick="mypageFn()"
      <%
         if(num.equals("7")){
      %>
            
         style="color:#e6a756;"
      <% } %>
   >마이페이지</a>
</li>
</c:if>

<c:if test="${sessionScope.userVO!=null}">
<li class="nav-item px-lg-4">
<<<<<<< HEAD
   <a class="nav-link text-uppercase" href="mypage.jsp"
      <%
         if(num.equals("7")){
      %>
         
         style="color:#e6a756;"
      <% } %>
   >마이페이지</a>
</li>
</c:if>


<c:if test="${sessionScope.userVO==null}">
<li class="nav-item px-lg-4">

   <a class="nav-link text-uppercase" href="login.jsp"
      <%
         if(num.equals("8")){
      %>
         style="color:#e6a756;"
      <% } %>
   >로그인</a>
</li>

</c:if>               

<c:if test="${sessionScope.userVO!=null}">
<li class="nav-item px-lg-4">

   <a class="nav-link text-uppercase" href="index.jsp"
      onclick="logoutFn()"
      <%
         if(num.equals("9")){
      %>
         style="color:#e6a756;"
      <% } %>
   >${sessionScope.userVO.user_name}님 로그아웃</a>

</li>
</c:if>         
                  
                  
                  
                  