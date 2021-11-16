<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Hello Spring</title>
<style>
header {
	height: 230px;
	background-color: lightgrey;
}
</style>
</head>
<body>
	<header>Header</header>
	<ol>
		<li><a href="${pageContext.request.contextPath}/views/cartList.jsp">장바구니</a></li>
	</ol>
</body>
</html>