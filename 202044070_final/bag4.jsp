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
   				<img src="image/bag4.png" class="pic"/>
   			</td>
   			<td style="padding:100px;">
   				<table style="height : 500px; width : 750px;">
   					<tr align="center">
   						<td style="font-weight:bold;">제품번호</td>
   						<td>8</td>
   					</tr>
   					<tr align="center">
   						<td style="font-weight:bold;">상품명</td>
   						<td>솜브레 빈티지 브리프케이스</td>
   					</tr>
   					<tr align="center">
   						<td style="font-weight:bold;">가격</td>
   						<td>94,700원</td>
   					</tr>
   					<tr align="center">
   						<td style="font-weight:bold;">상품 설명</td>
   						<td>클래식하면서도 모던한 디자인이 특징이며 서류 가방이나 책가방으로 추천드립니다. <br>
   						패딩 포켓이 있어 노트북 가방이나 테블리 가방으로 사용하실 수도 있습니다. <br>
   						부드러운 최고급 비건 가죽으로 제작되었습니다.</td>
   					</tr>
    				</table>
   					<form action="cartQuery.jsp" >
   					<p style="font-weight:bold">제품번호을 아래 옵션에서 선택해주세요</p>
   					<select name="product">
   						<option value="8">8</option>
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