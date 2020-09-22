<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.ibatis.config.BuildSqlMapClient"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String lgu = request.getParameter("gu"); 
	SqlMapClient smc = BuildSqlMapClient.getSqlMapClient();
	List<ProdVO> list = smc.queryForList("prod.selectIdName", lgu);
	
	if(list == null || list.size() < 1){
		%>
		{
			"sw" : "no"
		}
		<%
	}else{
		%>
		{
			"sw" : "ok",
			"datas" : [
				<%
				for(int i=0; i<list.size(); i++){
					ProdVO vo = list.get(i);
					if(i != 0) out.print(",");
				%>
					{
						"id" : "<%=vo.getPROD_ID() %>",	
						"name" : "<%=vo.getPROD_NAME() %>"
					}
				<%	
				} 
				%>
			]
		}
		<%
	}
%>
