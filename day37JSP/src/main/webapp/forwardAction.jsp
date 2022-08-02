<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardAction</title>
</head>
<body>

<hr>
	<jsp:forward page="sidePage.jsp">
		<jsp:param value="1004" name="num"/> <!-- 인자로 -->
		<jsp:param value="apple" name="msg"/>
	</jsp:forward>
<hr>

</body>
</html>