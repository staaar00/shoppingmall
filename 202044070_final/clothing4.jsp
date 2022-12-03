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
	
	.pic {
		width : 700px;
		height : 750px;
		margin-top : 60px;
		margin-left : 500px;
	}
	
	.p {
		text-align : center;
		font-size : 120%;
		font-family: 'Gowun Dodum', sans-serif;
		color : Dimgray;
		
	}
</style>
</head>
<body>
   <jsp:include page="/header.jsp" flush="false"/>
   <div>
   <table class="p">
   		<tr>
   			<td>
   				<img src="image/clothing4.png" class="pic"/>
   			</td>
   			<td style="padding:100px;">
   				<table style="height : 500px; width : 750px;">
   					<tr align="center">
   						<td style="font-weight:bold;">제품번호</td>
   						<td>16</td>
   					</tr>
   					<tr align="center">
   						<td style="font-weight:bold;">상품명</td>
   						<td>꽈배기 비건 니트 베스트</td>
   					</tr>
   					<tr align="center">
   						<td style="font-weight:bold;">가격</td>
   						<td>27,000원</td>
   					</tr>
   					<tr align="center">
   						<td style="font-weight:bold;">상품 설명</td>
   						<td>울소재 없는 비건 니트 조끼로, 브이넥 형태입니다.<br>
   						꽈배기 패턴으로 캐주얼하면서도 러블리한 무드를 연출해줍니다.</td>
   					</tr>
    				</table>
   					<form action="cartQuery.jsp" >
   					<p style="font-weight:bold">제품번호을 아래 옵션에서 선택해주세요</p>
   					<select name="product">
   						<option value="16">16</option>
   					</select>
   					<input type="submit" value="장바구니에 담기"/>
   					</form>
   					<p class="btn">
   					<button onclick="location.href='main.jsp'" class="btn">돌아가기</button></p>
   	</table>
   </div>
   <jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>