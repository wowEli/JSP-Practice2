<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매하기 페이지</title>
</head>
<body>

<h1> 구매한 상품 목록</h1>
<hr>
<%
ArrayList<String> list = (ArrayList) session.getAttribute("productlist");
//  session객체의 productlist라는 속성을 보여주고 배열리스트로 형변환 후 list의 대입

for(int i=0;i<list.size(); i++) { // list를 인덱스 0번 부터 끝까지 화면에 출력
    out.println(list.get(i) + "<br>");
}
%> 

</body>
</html>