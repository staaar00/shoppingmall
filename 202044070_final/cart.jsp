<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	 .btn button{
		border : none;
		border-radius: 20px;
		background-color:#669966;
		color : white;
		padding : 5px;
		width : 115px;
		height : 50px;
		text-align:center;
		font-size : 80%;
		font-weight : bold;
		alingn : center;
		margin-top : 10px;
		margin-left : 20px;
	}
	.p {
		text-align : center;
		font-weight : bold;
		font-size : 200%;
		font-family: 'Gowun Dodum', sans-serif;
		color : Dimgray;
		
	}
</style>
</head>
<body>
	<jsp:include page="/header.jsp" flush="false"/>
	<%request.setCharacterEncoding("UTF-8");
	String cusid = (String) session.getAttribute("cusid");
	
	/* session.invalidate(); */
	if( cusid == null ){%>   
	<script>alert("로그인 후 이용해주세요");history.back();</script>
	<% 
	}
	%>
	
	<p class="p">Cart</p>
	<c:if test="${result == 0 }">
		<script type="text/javascript">
			alert("해당 제품 번호가 존재하지 않습니다");
			history.go(-1);
		</script>
	</c:if>
	<c:if test="${result == 1 }">
		<table border="1" style="height : 70px; width : 1000px; text-align : center; margin-left:auto; margin-right:auto;">
			<tr><td>상품번호</td><td>상 품 명</td><td>가   격</td></tr>
			<tr><td>${cartno }</td><td>${cartname }</td><td>${cartprice }</td></tr>
		</table>
		<br><br>
		<p class="btn">
		<button onclick="location.href='main.jsp'">돌아가기</button></p>
	</c:if>
	<jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>