<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@page import="kr.or.ddit.ibatis.config.BuildSqlMapClient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

[
<%
//클라이언트 요청시 전송되는 데이터를 받는다.


// DB처리 - CRUD
	// sqlMapClient객체 얻어오기
	SqlMapClient smc = BuildSqlMapClient.getSqlMapClient();

	// mapper 수행
	List<MemberVO> list = smc.queryForList("member.selectAllMember");

// 처리결과 출력 대신 응답데이터를 생성한다.
for(int i = 0; i < list.size(); i++){
	MemberVO vo = list.get(i);
	if(i != 0) out.print(",");
%>
	{
		"id"   : "<%=vo.getMem_id() %>",
		"name" : "<%=vo.getMem_name() %>",
		"addr" : "<%=vo.getMem_add1() %> <%=vo.getMem_add2() %>",
		"tel"  : "<%=vo.getMem_hp() %>",
		"mail" : "<%=vo.getMem_mail() %>"
	}
<%
}
%>
]