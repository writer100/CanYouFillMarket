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
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css">
<style>
.section {
width: 1400px;
/* background-color: crimson; */
margin-right: auto;
margin-left: auto;
}
.product {
	font-size: 22pt;
}
.btns {
	float: right;
}
.product_tb {
	width: 1300px;
	margin-left: auto;
	margin-right: auto;
}

	#thumbnailArea {
		width : 760px;
		height : auto;
		margin-left : auto;
		margin-right : auto;
	}
	
	.thumb-list {
		width : 220px;
		border : 1px solid yellow;
		display : inline-block;
		margin : 10px;
		align : center;
	}		
	</style>
	<script>
		/*function fn_goCart(){
			location.href = "${pageContext.request.contextPath}/cart/cart.do";
		}
		
		$(function(){
			$("div[id]").on("click",function(){
				var pNo = $(this).attr("id");
				console.log("PNo="+PNo);
				location.href = "${pageContext.request.contextPath}/cart/cart.do?pno="+PNo;
			});
		});*/
	</script>
	
</head>
<body>
	<!-- 헤더와 네비바 -->
	<c:import url="../common/header.jsp" />
	<c:import url="../common/navbar.jsp" />
		
		<div class="container">
	        <div class="search_bar">
		        <!-- 검색창 -->
		        <form class="">
			        <div role="group" class="search"><!---->
				        <input type="text" placeholder="제품명, 브랜드를 입력하세요" style="box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 2px inset; border-radius: 2px; border: 0px;" id="productSearch">
				        <button type="submit" class="fn_goCart">
				        	검색
				        </button>
			        </div>		    
		        </form>
	        </div>
		    <div class="row product">
		        <div class="pic col-md-6"></div>
		        <div class="priceInfo col-md-6"></div>
		    </div>
		    <div class="row productInfo">
		        <div class="col-xs-12"></div>
		    </div>
		    <div class="row howToUse">
		        <div class="col-xs-12"></div>
		    </div>
		    <div class="row review">
		        <div class="review2 col-xs-12"></div>
		    </div>
		</div>
				
	

	
	<div id="container">
	        
		    <section>
		        <div class="ProductList">
		            
		        </div>
		    </section>
	        
	        <!-- 페이지 번호 -->
	        <div class="ListNum">
	           <c:out value=" ${pageBar}" escapeXml="false"/>
	        </div>
	</div>
	
	<!-- JQuery CDN-->
	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous">
	</script>
	<!-- 푸터 -->
	<c:import url="../common/footer.jsp" />
</body>
</html>