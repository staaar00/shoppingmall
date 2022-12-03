<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Indie+Flower&family=Julius+Sans+One&family=Poiret+One&display=swap');
	.main {
		height : 300px;
		background-color : #eeeeee;
		line-height : 300px;
		text-align : center;
		margin-top : 0px;
		font-family: 'Julius Sans One', sans-serif;
	}
	<%-- 텍스트 관련 스타일 지정 --%>
	.p {
		text-align : center;
		font-size : 130%;
		font-family: 'Gowun Dodum', sans-serif;
		color : gray;
		
	}
	
	.btn button{
		border : none;
		background-color:#FFFFFF;
		color : DimGray; 
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
		border-radius: 20px;
		background-color : #669966;
		color : white; 
	}
		
</style>
</head>
<body>
   <jsp:include page="/header.jsp" flush="false"/>
   <%--<h1 class="main">Begin Vegan !</h1> --%>
   
   <div>
   	 <img src="image/vegan.png" style="margin-left: auto; margin-right: auto; display: block;"/>
      <p class="p" style="font-weight : bold">BEGIN VEGAN은 채식주의(VEGAN) 개념을 <br>화장품과 패션 상품으로 확장한 브랜드입니다. <br>지금부터 자연으로 한 걸음 다가가보세요.</p>
   </div>
   <div style= "text-align: center;">
      <p class = "btn">
      <button class = "bh" onclick="location='allProduct.jsp'">All</button>
      <button class = "bh" onclick="location='cosProduct.jsp'">Cosmetic</button>
      <button class = "bh" onclick="location='bagProduct.jsp'">Bag</button>
      <button class = "bh" onclick="location='walProduct.jsp'">Wallet</button>
      <button class = "bh" onclick="location='cloProduct.jsp'">Clothing</button></p>
   </div>
   	

   <jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>
