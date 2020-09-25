<%@page import="kr.or.ddit.member.vo.ZipVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
	.ziptr:hover{background:lime;}
</style>
<html>
	<body>
		<table>
			<tr><td>우편번호</td><td>주소</td><td>번지</td></tr>
			<%
			List<ZipVO> list = (List<ZipVO>)request.getAttribute("listval");
			for(int i=0; i<list.size(); i++){
				ZipVO vo = list.get(i);
				String bunji = vo.getBUNJI();
				if(bunji == null) bunji = "";
				%>
				<tr class="ziptr"><td><%=vo.getZIPCODE() %></td><td><%=vo.getSIDO() %> <%=vo.getGUGUN() %> <%=vo.getDONG() %></td><td><%=bunji %></td></tr>
				<%
			}
			%>
		</table>
	</body>
</html>