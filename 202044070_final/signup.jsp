<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Indie+Flower&family=Julius+Sans+One&family=Poiret+One&display=swap');
	.p {
		text-align : center;
		font-weight : bold;
		font-size : 300%;
		font-family : 'Gowun Dodum', sans-serif;"
	}

	table {
		margin-left : auto;
		margin-right : auto;
		text-align : center;
		font-size : 130%;
	}
	
	.td {
		width : 100px;
		height : 50px;
	}
	
	.tableDiv {
		text-align : center;
	}
	
	.b {
		width : 110px;
		height : 50px;
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
</style>
</head>
<body>
<script type="text/javascript">
	function check(){
		if(!frm.cusid.value){
			alert("아이디를 입력하세요");
			frm.cusid.focus();
			return false;
		}
		if(!frm.cuspwd.value){
			alert("비밀번호를 입력하세요");
			frm.cuspwd.focus();
			return false;
		}
		if(!frm.cusemail.value){
			alert("이메일을 입력하세요");
			frm.cusemail.focus();
			return false;
		}
		}
	}
</script>
<jsp:include page="/header.jsp" flush="false"/>

<div style="padding-top : 20px;">
	<p class="p" style="color:Dimgray;">Sign up Here</p>
	<div class="tableDiv">
		<form action="signupProc.jsp" name="frm" onsubmit="return check()">
			<table border="0" style="text-align:center;">
				<tr>
					<td class="td">아이디</td>
					<td><input type="text" name="cusid" autofocus="autofocus"></td>
				</tr>
				<tr>
					<td class="td">비밀번호</td>
					<td><input type="password" name="cuspwd"></td>
				</tr>
				<tr>
					<td class="td">이메일</td>
					<td><input type="text" name="cusemail"></td>
				</tr>
			</table>
			<input class="b" type="submit" value="sign up">
			&nbsp;
			<input class="b" type="reset" value="back">
		</form>
	</div>
</div>
<!-- 
<form action="signupProc.jsp" name="frm" onsubmit="return check()">
	<table border="1" style="text-align:center;">
	<tr><td colspan="2">Sign up Here</td></tr>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="cusid" autofocus="autofocus"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="cuspwd"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="cusemail"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="sign up">&nbsp;<input type="reset" value="back">
		</td>
	</tr>
	</table>
	</form><br><br>
	 -->
<jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>