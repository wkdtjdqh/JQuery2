<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String id = (String)request.getAttribute("idvalue");
	if(id == null){	// ��� ����
		%>
		{
			"sw" : "��� �����մϴ�."
		}
		<%
	}else{	// ��� �Ұ���
		%>
		{
			"sw" : "��� �Ұ����մϴ�."
		}
		<%
	}
%>