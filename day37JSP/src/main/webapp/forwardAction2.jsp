<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 페이지 자체를 end페이지로 바꾸기 때문에 여기에 html 구조가 필요없음 -->
<jsp:forward page="responseEnd.jsp">
   <jsp:param value="apple" name="msg"/>
</jsp:forward> 