<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/final_logo.png">
<header>
	<div class="container">
        <header class="d-flex flex-wrap justify-content-center py-1 mb-4">
            <a href="/" class="me-md-auto mt-4 ">
                <img src="${pageContext.request.contextPath }/resources/images/final_logo.png" width="340">
            </a>

            <ul class="nav">
                <li class="nav-item"><a href="#" class="nav-link text-dark">MY PAGE</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-dark">MY HEART</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-dark">SHOPPING BAG</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/member/memberLogin.do" class="nav-link text-dark">LOGIN / JOIN</a></li>
            </ul>
        </header>
    </div>
</header>