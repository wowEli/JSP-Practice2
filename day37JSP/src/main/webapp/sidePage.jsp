<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>별도 페이지</title>
</head>
<body>
<h3>별도 페이지 입니다.</h3>
<hr>
<%=request.getParameter("num") %><br><!-- 외부에 있는 num과 -->
<%=request.getParameter("msg") %><br><!-- msg를 getter로 보여주기 -->
</body>
</html>