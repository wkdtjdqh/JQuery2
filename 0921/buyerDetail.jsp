<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.ibatis.config.BuildSqlMapClient"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
String buyer_id = request.getParameter("id");

SqlMapClient smc = BuildSqlMapClient.getSqlMapClient();
BuyerVO vo = (BuyerVO)smc.queryForObject("buyer.selectByDetail", buyer_id);

%>

{
	"id" : "<%=vo.getBuyer_id() %>",
	"name" : "<%=vo.getBuyer_name() %>",
	"lgu" : "<%=vo.getBuyer_lgu() %>",
	"comtel" : "<%=vo.getBuyer_comtel() %>",
	"bank" : "<%=vo.getBuyer_bank() %>",
	"bankno" : "<%=vo.getBuyer_bankno() %>",
	"bankname" : "<%=vo.getBuyer_bankname() %>",
	"zip" : "<%=vo.getBuyer_zip() %>",
	"add" : "<%=vo.getBuyer_add1() %> <%=vo.getBuyer_add2() %>",
	"mail" : "<%=vo.getBuyer_mail() %>"
}
