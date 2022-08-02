<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니에 물건을 추가하는 로직(화면출력xxx)</title>
</head>
<body>

<%
	ArrayList<String> list = (ArrayList)session.getAttribute("productlist"); 
	// productlist라는 이름의 속성을 보여주고 이걸 배열리스트타입으로 형변환 해줘(최초 실행시 productlist라는 속성은 없어서 list==null 임)
	
	String product = request.getParameter("product");
	// name이 product인 값을 product 변수에 저장(사용자가 고른 상품))

	if (list == null) { // if문을 한 이유는 최초 실행 시 처음에만 만들고 그 후에는 장바구니가 초기화 되면 안됨
		list = new ArrayList<String>(); // null 인 list를 다시 배열리스트로 객체화 하고
		session.setAttribute("productlist", list); // session에 productlist라는 이름의 배열리스트 속성을 만듦
	} // 장바구니 탄생
	
	list.add(product); // 장바구니의 상품 추가
%>

	<script type="text/javascript">
   alert("<%=request.getParameter("product")%>이(가) 장바구니에 추가되었습니다!");
		history.go(-1);/* 이전페이지로 이동 */
	</script>

</body>
</html>