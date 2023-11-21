<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body> 
	<%
		session.invalidate();
	
	%>
	<script>
		location.href='main.jsp';
	</script>
</body>
</html>