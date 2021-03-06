<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <title>헤더</title>

    
    <style>
        @charset "UTF-8";
* {
    margin: 10;
    padding: 0;
    color:var(--color-font-black);
    font-family: var(--font-family);
}
header{
    position: fixed;
    top:0;
    width: 100%;
    display: flex;
    align-items: center;

}
header .head-wrap .head-wrap-inner{
    position: absolute;
    top:10px;
    right: 40px;
    border-radius: 5px;
    width: 34px;
    height: 34px;
}
header .head-wrap .head-wrap-inner{
    position: absolute;
    top: 7px;
    left: 7px;
}


header .head-wrap .head-wrap-inner{
    height: 120px;
    width: 1100px;
    position: absolute;
    
}
header .head-wrap .head-wrap-inner .head-logo{
    position: absolute;
    top:50px;
    width:300px;
    height:80px;
}
header .head-wrap .head-wrap-inner .head-menu-top-nav{
    position: absolute;
    right: -160px;
    top:15px;
}

header .head-wrap .head-wrap-inner .head-menu-top-nav ul{
    list-style: none;
}
header .head-wrap .head-wrap-inner .head-menu-top-nav ul li{
    float: left;
    font-size: 15px;
    text-align:center;
    height: 20px;
}
header .head-wrap .head-wrap-inner .head-menu-top-nav ul li a{
    text-decoration: none;
}
header .head-wrap .head-wrap-inner .head-menu-top-nav ul li a:hover{
    text-decoration: underline;
}
header .head-wrap .head-wrap-inner .head-menu-top-nav ul .top-nav01
{
    width:103px;
}
header .head-wrap .head-wrap-inner .head-menu-top-nav ul .top-nav02
{
    width:90px;
}
header .head-wrap .head-wrap-inner .head-menu-top-nav ul .top-nav03
{
    width:150px;
}

header .head-wrap .head-wrap-inner .head-menu-top-nav ul .top-nav04
{
    width: 90px;
}

header .head-wrap-sub ul li a:hover{
    text-decoration: underline;
    background-color: #2c2a29;
    color:var( --color-font-green);
}
    </style>
</head>
<body>
    <header>
        <div class="head-wrap">
            <div class="head-wrap-inner">
                <a class="navbar-brand" href="#"> <img class="head-logo"
                    src="${pageContext.request.contextPath }/resources/images/logo.png">
                </a>
                <nav class="head-menu-top-nav">
                    <ul>
                        <li class="top-nav01"><a href="#">MY PAGE</a></li>
                        <li class="top-nav02"><a href="#">MY HEART</a></li>
                        <li class="top-nav03"><a href="#">SHOPPING BAG</a></li>
                        <li class="top-nav03"><a href="${pageContext.request.contextPath}/member/memberLogin.do">LOGIN / JOIN</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
</body>
</html>