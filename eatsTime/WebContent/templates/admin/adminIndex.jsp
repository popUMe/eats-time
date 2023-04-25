<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath}/static/css/admin/adminIndex.css">
<title>공지사항 - 관리자모드</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
</style>
</head>
<body>
<div id="sidebar">
	 	 <div id="logo"></div>
		<a href="adminIndex.jsp">공지사항</a> 
		<a href="adminMember.jsp">회원관리</a> 
		<a href="adminQna.jsp">문의내역</a>
	</div>
	<div id=:logo></div>
	
	<div class="content">
		<h1>공지사항 관리</h1>
				<div id=table-container>
		<div class="btn">
		  <button id="add-btn">작성</button>
  		<button id="delete-btn">삭제</button>
  		</div>
  	<table class="overflow" id="pagingul">
	</table>
		<div id="paging-wrap">
			<div class="paging">
				<c:if test="${prev}">
	                	<a href="${pageContext.request.contextPath}/listOk.notificationboard?page=${startPage - 1}" class="paging paging-move"><img src="/static/image/prev.png" width="15px"></a>
                </c:if>	
                <c:forEach var="i" begin="${startPage}" end="${endPage}">
                	<c:choose>
                		<c:when test="${i eq page}">
			                <a href="javascript:void(0)" class="active"><c:out value="${i}"/></a>
                		</c:when>
                		<c:otherwise>
			               <a href="${pageContext.request.contextPath}/listOk.notificationboard?page=${i}"><c:out value="${i}"/></a>
                		</c:otherwise>
                	</c:choose>
                </c:forEach>
                <c:if test="${next}">
	                  <a href="${pageContext.request.contextPath}/listOk.notificationboard?page=${endPage + 1}" class="paging paging-move"><img src="/static/image/next.png" width="15px"></a>
                </c:if>
			</div>
		</div>	
	</div>
</div>
</body>
<script>
let notificationboards = JSON.parse(`${notificationboards}`);
console.log(notificationboards);
</script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminIndex.js"></script>	
</html>