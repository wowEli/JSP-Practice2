<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>includeAction</title>
</head>
<body>

<hr>
	<jsp:include page="sidePage.jsp">
		<jsp:param value="1004" name="num"/> <!-- 인자로 -->
		<jsp:param value="apple" name="msg"/>
	</jsp:include>
<hr>

</body>
</html>