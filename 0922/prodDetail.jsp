<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.ibatis.config.BuildSqlMapClient"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String id = request.getParameter("id"); 
	SqlMapClient smc = BuildSqlMapClient.getSqlMapClient();
	ProdVO vo = (ProdVO)smc.queryForObject("prod.prodDetail", id);
	
%>
{
	"id" : "<%=vo.getPROD_ID() %>",	
	"name" : "<%=vo.getPROD_NAME() %>",	
	"lgu" : "<%=vo.getPROD_LGU() %>",	
	"buyer" : "<%=vo.getPROD_BUYER() %>",	
	"cost" : "<%=vo.getPROD_COST() %>",	
	"price" : "<%=vo.getPROD_PRICE() %>",	
	"sale" : "<%=vo.getPROD_SALE() %>",	
	"outline" : "<%=vo.getPROD_OUTLINE() %>",	
	"detail" : "<%=vo.getPROD_DETAIL() %>"
}
