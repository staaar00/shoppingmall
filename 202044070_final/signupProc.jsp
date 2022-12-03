<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="ConnectDB.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		String cusid = request.getParameter("cusid");
		String cuspwd = request.getParameter("cuspwd");
		String cusemail = request.getParameter("cusemail");
		
		PreparedStatement pstat = null;
		ResultSet rs = null;
		
		String sql1 = "select * from cus where cusid=? ";
		String sql2 = "insert into cus values (?,?,?)";
		
		int cusidChk = 0;
		int result = 0;
		
		//PreparedStatement 생성 => 테이블에 사원번호가 이미 있는지 체크
		pstat = conn.prepareStatement(sql1);
		pstat.setString(1, cusid);
		rs = pstat.executeQuery();
		
		if (rs.next()) {
			//테이블에 정보가 등록되어 있는 경우
			cusidChk = 1;
		} else {
			//테이블에 정보가 등록되어 있지 않으므로 신규 등록 가능
			pstat = conn.prepareStatement(sql2);
			pstat.setString(1, cusid);
			pstat.setString(2, cuspwd);
			pstat.setString(3, cusemail);
			
			//쿼리 설명
			result = pstat.executeUpdate();
		}
		
		request.setAttribute("result", result);
		request.setAttribute("cusidChk", cusidChk);
		
		rs.close();
		pstat.close();
		conn.close();
	%>
	<jsp:forward page="signupResult.jsp"></jsp:forward>
</body>
</html>