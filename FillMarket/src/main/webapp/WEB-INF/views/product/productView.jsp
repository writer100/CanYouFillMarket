<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상품 상세목록</title>
	<c:import url="../common/header.jsp"/>
	<style>
		div#product-container{width:400%; margin:0 auto; text-align:center;}
		div#product-container input,div#product-container button{margin-bottom:15px;}

	</style>
	<script>
		
	</script>
</head>
<body>
	<div id="container">
		<c:import url="../common/menubar.jsp"/>
		<div id="product-container">
			<input type="text" class="form-control" placeholder="제목" name="boardTitle" id="boardTitle" value="${board.boardTitle }" required>
			<input type="text" class="form-control" name="boardWriter" value="${board.boardWriter}" readonly required>
		
			<c:forEach items="${attachmentList}" var="a" varStatus="vs">
				<button type="button" 
						class="btn btn-outline-success btn-block"
						onclick="fileDownload('${a.originalFileName}','${a.renamedFileName }');">
					첨부파일${vs.count} - ${a.originalFileName }
				</button>
			</c:forEach>
		    <textarea class="form-control" name="boardContent" placeholder="내용" required>${board.boardContent }</textarea>
		    <br>
		    <button class="btn btn-outline-info" type="button" onclick="location.href='${pageContext.request.contextPath}/board/boardList.do'">리스트로</button>
		    <c:if test="${member.userId eq board.boardWriter}">
		    &nbsp;
			
			</c:if>
		</div>
		<c:import url="../common/footer.jsp"/>
	</div>
</body>
</html>