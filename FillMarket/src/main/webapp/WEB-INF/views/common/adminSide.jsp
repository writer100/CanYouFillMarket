<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <title>ㅎㅎ</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/adminsidestyle.css">    
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
    <header>
        <div class="sidebar">
            <header><img id="logo" src="${pageContext.request.contextPath }/resources/images/logo.png" alt=""></header>
            <ul>
                <li><a href="#"><i class="fas fa-qrcode"></i>관리자정보</a></li>
                <li><a href="#"><i class="fas fa-link"></i>대시보드</a></li>
                <li><a href="#"><i class="fas fa-stream"></i>매출관리</a></li>
                <li><a href="#"><i class="fas fa-calendar-week"></i>사용자관리</a></li>
                <li><a href="#"><i class="fas fa-question-circle"></i>상품관리</a></li>
                <li><a href="#"><i class="fas fa-envelope"></i>문의</a></li>
            </ul>
        </div>
    </header>
</body>
</html>