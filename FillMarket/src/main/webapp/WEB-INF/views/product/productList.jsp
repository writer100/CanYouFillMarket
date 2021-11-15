<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상품 목록</title>
	<c:import url="../common/header.jsp"/>
	<style>
		/*장바구니버튼*/
		input#btn-add{float:right; margin: 0 0 15px;}
	</style>
	<script>
		function fn_goCart(){
			location.href = "${pageContext.request.contextPath}/cart/cart.do";
		}
		
		$(function(){
			$("div[id]").on("click",function(){
				var pNo = $(this).attr("id");
				console.log("pNo="+pNo);
				location.href = "${pageContext.request.contextPath}/cart/cart.do?no="+pNo;
			});
		});
	</script>
</head>
<body>
	<div id="container">
	  <c:import url="../common/menubar.jsp"/>
	    <div class="row product">
	        <!-- 검색창 -->
	        <form class="">
		        <div role="group" class="input-group d-flex align-items-center justify-content-center my-3"><!---->
			        <input type="text" placeholder="제품명, 브랜드를 입력하세요" style="box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 2px inset; border-radius: 2px; border: 0px;" id="productSearch">
			        <button type="submit" class="btn p-0 btn-link">
			        	<i class="icon icon-search text-32 text-primary" style="line-height: 0;"></i>
			        </button>
		        </div>
	        </form>
	        <!-- 상품리스트 -->
	     	<c:forEach items="${list}" var="product" >
	        <div class="card" style="width: 18rem;">
			  <img src="..." class="card-img-top" alt="...">
			  <div class="card-body" id="${ product.pNo }">
			    <h5 class="card-title">${ product.pName }</h5>
			    <p class="card-text">${ product.pPrice }</p>
			    <button type="button" class="btn btn-outline-info" onclick="insertcart(${ product.pNo });">장바구니 담기</button>
			  </div>
			</div>
	        </c:forEach>
	        <!-- 페이지 번호 -->
	        <div class="ListNum">
	           <c:out value=" ${pageBar}" escapeXml="false"/>
	        </div>
	    </div>
	<c:import url="../common/footer.jsp"/>
	</div>
</body>
</html>