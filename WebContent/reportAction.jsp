<%@ page import="java.sql.*" %>
<%@ page import="java.text.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8");%>

<html>
<body>
<%
	System.out.println(request.getParameter("글번호"));
	Integer 글번호 = Integer.parseInt(request.getParameter("글번호"));
	
	ResultSet rs = null;
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
	
	try{
		rs = stmt.executeQuery(String.format("select * from list where 글번호='%s'", 글번호));
		if(rs.next()){
			System.out.println(rs.getString("아이디"));
			  if(rs.getString("아이디").equals(session.getAttribute("userID"))){
				  out.println("<script>");
				  out.println("alert('본인의 글은 신고할 수 없습니다!')");
			      out.println("history.go(-1)");
			      out.println("</script>");;
			} else {
				out.println("<script>");
				out.println("alert('신고되었습니다!')");
				out.println("location.href='list.jsp'");
				out.println("</script>");
			}

		}
	} catch(Exception e){
		out.println("데이터베이스 삽입 연산이 실패했습니다.");
		out.println(e.getMessage());
		e.printStackTrace();
	}
	
%>
</body>
</html>