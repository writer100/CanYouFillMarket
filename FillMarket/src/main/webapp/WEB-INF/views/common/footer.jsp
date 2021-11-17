<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <title>푸터</title>
    <style>
        @charset "UTF-8";
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
    footer{
    	position: absolute;
    	bottom: 0;
    }
    
    *{
        font-family: 'Nanum Gothic', sans-serif;
    }
    .col-md1 {
        float: left;
        width: 20%;
    }
    .col-md2 {
        float: left;
        width: 28%;
    }
    .col-md3 {
        float: left;
        width: 21%;
    }
    .col-md4 {
        float: left;
        width: 21%;
    }

    .footer_aray {
        border-bottom: lightgray 1px solid;
    }
    .footer-top {
        color: rgb(231, 133, 110);
        text-align: center;
    }
    a {
        text-decoration: none;
        color: black;
    }
    #footer-mid-size1 {
        width: 268px;
        text-align: right;
    }
    #footer-mid-size2 {
        width: 251px;
        text-align: right;
    }

    #footer-mid-size4 {
        width: 312px;
        text-align: right;
    }
    .footer-menu {
        list-style: none;
    }
    #footer-menu-size1 {
        width: 300px;
        margin-left: 55px;
    }
    #footer-menu-size2 {
        margin-left: 115px;
    }
    #footer-menu-size3 {
        width: 300px;
        padding-top: 15px;
        margin-left: 63px;
    }
    #footer-menu-size4 {
        width: 300px;
        margin-left: 87px;
    }
    .footer_bottom {
        width: 100%;
        position:absolute;
        top: 220px;
        padding-left: 80px;
        border-top: lightgray 1px solid;
    }
    </style>
</head>
<body>
    <footer>
        <div class="footer_aray">
            <div class="col-md1">
                <h2 class="footer-top">회사정보</h2>
                <h3 id="footer-mid-size1" class="footer-mid">Can You Pill Market</h3>
                <ul id="footer-menu-size1" class="footer-menu">
                    <li>상호명&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 캔유필마켓</li>
                    <li>대&nbsp;&nbsp;&nbsp;&nbsp;표 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;약사조</li>
                    <li>주&nbsp;&nbsp;&nbsp;&nbsp;소 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;서울특별시 강남구 테헤란로 130
                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(역삼동
                        823-23)5층 352반</li>
                </ul>
            </div>
            <div class="col-md2">
                <h2 class="footer-top">고객센터</h2>
                <h3 id="footer-mid-size2" class="footer-mid">1234-1234</h3>
                <ul id="footer-menu-size2" class="footer-menu">
                    <li>WEEK&nbsp;&nbsp;&nbsp;&nbsp; 09:00 ~ 18:00</li>
                    <li>LUNCH&nbsp;&nbsp;13:00 ~ 14:00</li> <br>
                    주말, 공휴일은 휴무입니다.
                </ul>
            </div>

            <div id="footer-size3" class="col-md3">
                <h2 class="footer-top">계좌정보</h2>

                <ul id="footer-menu-size3" class="footer-menu">
                    <li>농협&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 123-1234-1234-11</li>
                    <li>국민&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 123456-01-1234567</li>
                    <li>우체국&nbsp;&nbsp;123456-02-123456</li> <br>
                    예금주 : 캔유필마켓
                </ul>
            </div>

            <div class="col-md4">
                <h2 class="footer-top">반품</h2>
                <h3 id="footer-mid-size4" class="footer-mid"><a href="#">교환/반품 정책 확인 ▶︎</a></h3>
                <ul id="footer-menu-size4" class="footer-menu">
                    <li>서울특별시 강남구 테헤란로 130 <br>(역삼동 823-23)5층 352반 <br>
                        캔유필마켓 앞</li>
                </ul>
            </div>
            <div class="footer_bottom">
                <p>COPYRIGHT Ⓒ2021 CANYOUPILLMARKET, ALL RIGHTS RESERVED. FINALPROJECT | KH Academy reserved by Gichang, Jieun, Changhwan, Yeji, SeungByung.</p>
            </div>
        </div>

        </div>
    </footer>
</body>
</html>