<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="final_project.Cart" %>
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
		int product = Integer.parseInt(request.getParameter("product"));
		
	
		Statement stat = null;
		ResultSet rs = null;
		
		String sql = "select * from cart where cartno = " + product;
		
		stat = conn.createStatement();
		rs = stat.executeQuery(sql);
		
		int result = 0;
		
		if(rs.next()){
			result = 1;
			request.setAttribute("cartno", rs.getString("cartno"));
			request.setAttribute("cartname", rs.getString("cartname"));
			request.setAttribute("cartprice", rs.getInt("cartprice"));
			
			}
		
		request.setAttribute("result", result);
		
		rs.close();
		stat.close();
		conn.close();		
	%>
	<jsp:forward page="cart.jsp"></jsp:forward>
</body>
</html>