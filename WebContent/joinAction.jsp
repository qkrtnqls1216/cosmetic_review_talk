<%@ page import = "java.io.PrintWriter" %>
<%@page import="user.User"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8");%>
<html>
<body>
<%
	User user = new User();
    user.setuserID(request.getParameter("userID"));
    user.setuserPassword(request.getParameter("userPassword"));
    user.setuserName(request.getParameter("userName"));
    user.setuserGender(request.getParameter("userGender"));
    
	String userID = (String) session.getAttribute("userID");
	if(userID != null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어있음')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
	
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(user);
	if (result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 존재하는 아이디!')");
		script.println("history.back()");
		script.println("</script>");
	}
	else {
		session.setAttribute("userID", user.getuserID());
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
%>
</body>
</html>