<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.ibatis.config.BuildSqlMapClient"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
[
<%
//클라이언트 요청시 전송되는 데이터를 받는다.

//DB처리 - CRUD
	// sqlMapClient객체 얻어오기
	SqlMapClient smc = BuildSqlMapClient.getSqlMapClient();

	// mapper 수행
	List<LprodVO> list = smc.queryForList("lprod.selectAllLprod");
	
//처리결과 출력 대신 응답데이터를 생성한다.
for(int i=0; i<list.size(); i++){
	LprodVO vo = list.get(i);
	if(i != 0) out.print(",");
%>
	{
		"id" : "<%=vo.getLprod_id() %>",
		"gu" : "<%=vo.getLprod_gu() %>",
		"nm" : "<%=vo.getLprod_nm() %>"
	}
<%
}
%>
]