<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.ibatis.config.BuildSqlMapClient"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
[
<%
//Ŭ���̾�Ʈ ��û�� ���۵Ǵ� �����͸� �޴´�.

//DBó�� - CRUD
	// sqlMapClient��ü ������
	SqlMapClient smc = BuildSqlMapClient.getSqlMapClient();

	// mapper ����
	List<LprodVO> list = smc.queryForList("lprod.selectAllLprod");
	
//ó����� ��� ��� ���䵥���͸� �����Ѵ�.
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