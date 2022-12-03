<%@page import="java.io.PrintWriter"%>
<%@page import="final_project.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="cus" class="final_project.Cus" scope="page" />
<jsp:setProperty name="cus" property="cusid" />
<jsp:setProperty name="cus" property="cuspwd" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
	<%
		UserDAO userDAO = new UserDAO();
		String cusid = request.getParameter("cusid");
		String cuspwd = request.getParameter("cuspwd");
		int result = userDAO.login(cusid, cuspwd);
		if(result == 1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 되었습니다')");
			script.println("location.href='main.jsp'");
			script.println("</script>");
			session.setAttribute("cusid", cusid);
		}else if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == -2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류입니다')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>
</body>
</html>