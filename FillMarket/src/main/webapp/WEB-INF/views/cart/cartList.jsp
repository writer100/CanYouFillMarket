<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<!-- fontawesome 아이콘cdn -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
<style>
header {
	height: 230px;
	background-color: cornsilk;
	text-align: center;
}

.section {
	width: 1400px;
	/* background-color: crimson; */
	margin-right: auto;
	margin-left: auto;
}

.top {
	width: 1250px;
	margin-left: auto;
	margin-right: auto;
}

.cart {
	font-size: 22pt;
}

.btns {
	float: right;
}

.cart_tb {
	width: 1300px;
	margin-left: auto;
	margin-right: auto;
}

#cartList, #cartList2 {
	border-collapse: collapse;
	text-align: center;
}

#cartList th {
	height: 35px;
	border-bottom: 1px solid lightgray;
}

#cartList tbody td {
	border-bottom: 1px solid lightgray;
}

#cartList tbody tr td button {
	font-size: 11px;
}

#productImg {
	width: 200px;
	height: 180px;
}

#productImg img {
	width: 200px;
	height: 180px;
}

#deleteIcon {
	font-size: 18px;
	color: gray;
	cursor: pointer;
}

#cartList2 tr td:first-child {
	width: 200px;
	height: 30px;
	text-align: center;
}

#cartList2 tr td:last-child {
	width: 1100px
}
</style>
</head>
<body>
	<header>
		<h1>header</h1>
	</header>
	<br>
	<br>
	<section class="section">
		<div class="top">
			<span class="cart">장바구니</span>
		</div>
		<br>
		<br>
		<c:choose>
			<c:when test="${ map.count == 0 }">
    		장바구니가 비어있습니다.
    	</c:when>
			<c:otherwise>
				<div class="cart_tb">
					<form name="cart_frm" id="cart_frm" method="post" action="">
						<table id="cartList">
							<thead>
								<tr>
									<th colspan="2" width="770px">상 품</th>
									<th width="200px">가 격</th>
									<th width="100px">수 량</th>
									<th width="200px">합 계</th>
									<th width="30px"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="cartList" items="${map.list}" varStatus="i">
									<tr>
										<td id="productImg">
											<!-- <img src="${ cartLst.thumgImg }"> --> 
											<img src="images/childLife.png">
										</td>
										<td style="text-align: left;"><h5>ChildLife 차일드라이프 비타민D3 천연 베리맛 30ml</h5></td>
										<td>
											<!-- <fmt:formatNumber pattern="###,###,###" value="${ cartList.pPrice }"/> -->
											70,000
										</td>
										<td><input style="width: 35px;" type="number" value="${ cartList.amount }">
											<button type="submit" id="updateBtn">수정</button> 
											<input type="hidden" name="pNo" value="${ cartList.pNo }">
										</td>
										<td>
											<!-- <fmt:formatNumber pattern="###,###,###" value="${ cartList.orderPrice }"/> -->
											140,000
										</td>
										<td id="deleteBtn">
											<i id="deleteIcon" class="fas fa-times"></i>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<br>
						<table id="cartList2">
							<tr>
								<td><b>Total</b></td>
								<td style="text-align: right;">
									<!-- <b><fmt:formatNumber pattern="###,###,###" value="${ map.sumPrice }"/></b> -->
									<b>140,000</b>
								</td>
							</tr>
							<tr>
								<td>배송비</td>
								<td style="text-align: right;">
									<!-- ${ map.fee } --> + 3,000
								</td>
							</tr>
						</table>
						<br>
						<br>
						<table id="cartList2">
							<tr>
								<td><b>총 주문 금액</b></td>
								<td style="text-align: right;">
									<!-- <b><fmt:formatNumber pattern="###,###,###" value="${ map.allSum }"/></b> -->
									<h3>143,000</h3>
								</td>
							</tr>
						</table>
						<input type="hidden" name="cartNo" value="${ map.count }">
					</form>
			</c:otherwise>
		</c:choose>
		</div>
	</section>
</body>
</html>