<%@ page import="java.sql.*" %>
<%@ page import="java.text.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8");%>

<html>
<body>
<%
	String 제목,사용후기,피부타입;
	제목 = request.getParameter("제목");
	피부타입 = request.getParameter("피부타입");
	사용후기 = request.getParameter("사용후기");
	
	ResultSet rs = null;
	String sql;
	String sql2;
	Connection con = null;
	Statement stmt = null;
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/review?characterEncoding=UTF-8&serverTimezone=UTC";
		con = DriverManager.getConnection(url, "root", "@qkrtnqls991216");
	} catch(Exception e){
		out.println("데이터베이스 접속에 문제가 있습니다. <hr/>");
		out.println(e.getMessage());
		e.printStackTrace();
	}
	stmt = con.createStatement();	
	sql = String.format("insert into list(제목, 피부타입, 사용후기, 아이디) values('%s','%s','%s','%s');", 제목, 피부타입, 사용후기, session.getAttribute("userID"));
	System.out.println(sql);
	try{
		stmt.executeUpdate(sql);
	} catch(Exception e){
		out.println("데이터베이스 삽입 연산이 실패했습니다.");
		out.println(e.getMessage());
		e.printStackTrace();
	}
		
	response.sendRedirect("list.jsp");
	
	
%>
</body>
</html>