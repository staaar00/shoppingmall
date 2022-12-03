<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Indie+Flower&family=Julius+Sans+One&family=Poiret+One&display=swap');
	.menus {
		padding-left:60px;
		background-color:#497649;
		line-height : 70px;
		font-size:150%;
		margin-bottom : 1px;
	}
	
	.h {
		background-color:#497649;
		line-height : 70px;
		font-family: 'Julius Sans One', sans-serif;
		font-size:150%;
		margin-top:-70px;
		text-align:center;
	}
	a:link {color:white; font-weight:bold;}
	a:visited{color:white; font-weight:bold;}
	a{text-decoration:none}
</style>
</head>
<body>
	<%-- HOME 버튼 눌렀을 때 index.jsp로 이동, 도서등록 버튼 눌렀을 때 BookInsertForm.jsp로 이동 --%>
	<!-- <p class="menus"><a href="allProduct.jsp">〓</a>&emsp; &emsp;<a href="login.jsp">Login</a>&emsp; &emsp;<a href="cart.jsp">Cart</a></p>
	<p class="h"><a href="main.jsp" >BEGIN VEGAN</a> -->
	<%
		if(session.getAttribute("cusid") == null) {
			%>
			<p class="menus">
				<a href="allProduct.jsp">〓</a>
				&emsp; &emsp;
				<a href="login.jsp">Login</a>
				&emsp; &emsp;
				<a href="cart.jsp">Cart</a>
			</p>
			<p class="h"><a href="main.jsp" >BEGIN VEGAN</a>
			<%
		} else if (session.getAttribute("cusid") != null ) {
			%>
			<p class="menus"><a href="allProduct.jsp">〓</a>&emsp; &emsp;
			<a href="logout.jsp">Logout</a>
			&emsp; &emsp;<a href="cart.jsp">Cart</a></p>
			<p class="h"><a href="main.jsp" >BEGIN VEGAN</a>
			<%
		}
	%>
	
</body>
</html>