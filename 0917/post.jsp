<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>post</title>
<style>
	span{
		font-size:1.5em;
		color:red;
	}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name2");
	String id = request.getParameter("id2");
%>
<%=name %>(<%=id %>)<span>님 환영합니다.</span>
</body>
</html>