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
   				<img src="image/suncream.png" class="pic"/>
   			</td>
   			<td style="padding:100px;">
   				<table style="height : 500px; width : 750px;">
   					<tr align="center">
   						<td style="font-weight:bold;">제품번호</td>
   						<td>3</td>
   					</tr>
   					<tr align="center">
   						<td style="font-weight:bold;">상품명</td>
   						<td>비건 에어핏 선스크린</td>
   					</tr>
   					<tr align="center">
   						<td style="font-weight:bold;">가격</td>
   						<td>30,000원</td>
   					</tr>
   					<tr align="center">
   						<td style="font-weight:bold;">상품 설명</td>
   						<td>촉촉하지만 번들거림 없는 피니쉬로 완성되는 산뜻한 선스크린입니다. <br>
   						백탁 없이 자외선을 효과적으로 차단하며 (SPF50+ PA++++ 실수치 반영), <br>
   						케일잎추출물을 8% 함유해 민감한 피부를 건강하게 가꿔줍니다.</td>
   					</tr>
    				</table>
   					<form action="cartQuery.jsp" >
   					<p style="font-weight:bold">제품번호을 아래 옵션에서 선택해주세요</p>
   					<select name="product">
   						<option value="3">3</option>
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