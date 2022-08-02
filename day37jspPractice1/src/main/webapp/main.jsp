<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>

<h1><%=request.getParameter("uname")%>님, 반갑습니다! :D</h1>
<form action="add.jsp" method="post">

	<select name="product">
		<option>도란 링</option>
		<option>도란 검</option>
		<option>도란 방패</option>
		<option>천갑옷</option>
		<option>증폭의 고서</option>
	</select>
	<input type="submit" value="장바구니의 추가하기">
</form>

<a href="result.jsp">구매하기</a>
</body>
</html>