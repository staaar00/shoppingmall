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
		background-color:#FFFFFF;
		color : lightgray;
		padding : 5px;
		width : 150px;
		height : 70px;
		text-align:center;
		font-size : 150%;
		font-weight : bold;
		alingn : center;
		margin-top : 10px;
		margin-right : 15px;
	}

	.bh:hover {
		background-color : #FFFFFF;
		color : green;
	}
	
	.pic {
		width : 500px;
		height : 500px;
		margin-right : 20px;
		margin-bottom : 20px;
	}
		
</style>
</head>
<body>
   <jsp:include page="/header.jsp" flush="false"/>
   	  <div style= "text-align: center;">
      <p class = "btn">
      <button class = "bh" onclick="location='allProduct.jsp'">All</button>
      <button class = "bh" onclick="location='cosProduct.jsp'">Cosmetic</button>
      <button class = "bh" onclick="location='bagProduct.jsp'">Bag</button>
      <button style="color: Dimgray" class = "bh" onclick="location='walProduct.jsp'">Wallet</button>
      <button class = "bh" onclick="location='cloProduct.jsp'">Clothing</button></p>
   </div>
      <div style= "text-align: center;">
   	   	<a href="wallet1.jsp"><img src="image/wallet1.png" class="pic"/></a>
   	   	<a href="wallet2.jsp"><img src="image/wallet2.png" class="pic"/></a>
   	   	<a href="wallet3.jsp"><img src="image/wallet3.png" class="pic"/></a>
   	   	<a href="wallet4.jsp"><img src="image/wallet4.png" class="pic"/></a><br>
   </div>   		
   <jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>