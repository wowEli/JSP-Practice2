<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 페이지</title>
</head>
<body>

	<%
	ArrayList<String> list = (ArrayList) application.getAttribute("msgList");

	String msg = (String) session.getAttribute("id") + ":  " + request.getParameter("msg");

	if (list == null) {
		list = new ArrayList<String>();
		application.setAttribute("msgList", list);
	}

	list.add(msg);
	%>
	<script type="text/javascript">
   alert("<%=application.getAttribute("id")%>님 댓글이 등록 되었습니다!");
	</script>
	<%response.sendRedirect("main2.jsp");%>

</body>
</html>