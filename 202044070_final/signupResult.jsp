<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${cusidChk > 0 }">
			<script type="text/javascript">
				alert("이미 등록된 회원입니다.");
				history.go(-1);
			</script>
		</c:when>
		<c:when test="${result > 0 }">
			<script type="text/javascript">
				alert("회원가입이 완료되었습니다.");
				location.href="main.jsp";
			</script>
		</c:when>
		<c:when test="${result <= 0 }">
			<script type="text/javascript">
				alert("회원가입에 실패하였습니다.");
				history.go(-1);
			</script>
		</c:when>
	</c:choose>
</body>
</html>