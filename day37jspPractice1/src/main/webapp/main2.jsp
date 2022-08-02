<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
     <%request.setCharacterEncoding("UTF-8"); %>
     <%
     if(!(request.getParameter("id")==null)){ // 최초 실행 시 한번만 해야 다음에 null 이 들어가지 않음
     session.setAttribute("id", request.getParameter("id")); 
     } // session으로 해야 브라우저를 종료했을 때 로그아웃
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
<form action="add2.jsp">
[<%=session.getAttribute("id")%>]님: <input type="text" name="msg"><input type="submit" value="글쓰기"><br>
<hr>

<%
ArrayList<String> list = (ArrayList)application.getAttribute("msgList");

if(!(list==null)){ // 처음 실행시 list가 null이라 오류가 발생하므로 if문 씌워주기
	for(int i=0;i<list.size(); i++) { // list를 인덱스 0번 부터 끝까지 화면에 출력
    out.println(list.get(i) + "<br>");
	}
}
%> 
</form>

</body>
</html>