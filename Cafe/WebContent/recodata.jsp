<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.annotations.JsonAdapter"%>
<%@page import="model.UserVO"%>
<%@page import="model.DAOMybatis"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <% 
			session.getId();
			DAOMybatis dao = new DAOMybatis();
			UserVO vo = new UserVO();
			dao.wondu_name(vo);
			String data = vo.getWondu_n();
%> --%>
	  <% 
		    String wondu= (String)session.getAttribute("user_id");
			DAOMybatis dao = new DAOMybatis();
			UserVO vo = new UserVO();
		  
			UserVO min  = (UserVO)dao.wondu_name(vo.getUser_id());
			String data = vo.getWondu_n();
            
            //System.out.println(data);
            //System.out.println(wondu);
            
       %>   

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script language = "javascript"/>
<script type = "text/javascript">


//out.print(data);
	
</script>
<body>
헤으으응..
      <%=data %>
</body>
</html>