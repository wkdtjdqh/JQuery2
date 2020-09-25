<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String id = (String)request.getAttribute("idvalue");
	if(id == null){	// 사용 가능
		%>
		{
			"sw" : "사용 가능합니다."
		}
		<%
	}else{	// 사용 불가능
		%>
		{
			"sw" : "사용 불가능합니다."
		}
		<%
	}
%>