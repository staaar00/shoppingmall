<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  <meta name="viewport" content="width-device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">-->
<title>Insert title here</title>
<style>
	.l {
		width : 300px;
		height : 40px;
		font-size : 12px;
	}
	
	.b {
		width : 100px;
		height : 60px;
		font-size : 20px;
		border : none;
		background-color:#669966;
		color : white; 
		padding : 5px;
		text-align:center;
		font-weight : bold;
		alingn : center;
		margin-top : 10px;
		margin-right : 15px;
		border-radius: 20px;
	}

	input {
		margin-bottom : 10px;
	}
	
	form {
		text-align : center;
	}
	
	.p {
		text-align : center;
		font-weight : bold;
		font-size : 300%;
		font-family: 'Gowun Dodum', sans-serif;
		color : Dimgray;
	}
	
</style>
</head>
<body>
   <jsp:include page="/header.jsp" flush="false"/>
			<div style="padding-top:20px;">
				<form method="post" action="loginAction.jsp">
					<p class="p">Login</p>
						<input type="text" class="l" placeholder="아이디" name="cusid" maxlength="20"><br>
						<input type="password" class="l" placeholder="비밀번호" name="cuspwd" maxlength="20"><br>	
						<input type="submit" class="b" value="Login">
					<p class="message">아이디가 없으세요? <a href="signup.jsp" style="color:green">회원가입 하기</a></p>
				</form>
		</div>
	<jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>