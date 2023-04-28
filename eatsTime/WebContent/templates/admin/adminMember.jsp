<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath}/static/css/admin/adminIndex.css">
<title>회원관리 - 관리자모드</title>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
</style>
</head>
<body>
	
	<div id="sidebar">
	 	<div id="logo">
	 		<a class="logo" href="${pageContext.request.contextPath}/lisOk.notificationboard">
	 			<img src="${pageContext.request.contextPath}/static/image/logo.png" alt="이츠타임 로고">
	 		</a>
	 	</div>
		<a class="nav_list" href="${pageContext.request.contextPath}/lisOk.notificationboard">공지사항</a> 
		<a class="nav_list" href="${pageContext.request.contextPath}/listOk.member">회원관리</a> 
		<a class="nav_list" href="${pageContext.request.contextPath}/lisOk.Inquiryboard">문의내역</a>
	</div>
	
	
	<div class="content">
		<h1>회원 관리</h1>
		<div id=table-container>
			<form action="${pageContext.request.contextPath}/updateStatusOk.member?page=${page}" name='status-form'>
			<input type="hidden" name="status" value="">
			<input type="hidden" name="page" value="${page}">
			<div class="btn">
			  	<button type="button" class="btns" id="add-btn">활성</button>
	  			<button type="button" class="btns" id="delete-btn">비활성</button>
	  		</div>
	  		
			<table>
			
				<tr>
					<th style="width:30px"><input type="checkbox" id="chkAll" name="chkAll"/></th>
					<th>회원번호</th>
					<th>이름</th>
					<th>가입날짜</th>
					<th>상태</th>
				</tr>
				
				<!-- [S] 반복 출력할 부분 -->
				<tbody class="member-list">
				</tbody>
				<!-- [E] 반복 출력할 부분 -->

			</table>
			
			
          	<!-- [S] 페이지 컨트롤러 -->
			<div id="paging" class="paging">
               	<c:if test="${prev}">
                	<a href="${pageContext.request.contextPath}/listOk.member?page=${startPage - 1}" class="paging paging-move">
                		<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGElEQVR42mNgAIPi/8X/4QwwE5PBQJADAAKSG3cyVhtXAAAAAElFTkSuQmCC">
                	</a>
               	</c:if>
               	<c:forEach var="i" begin="${startPage}" end="${endPage}">
               		<c:choose>
               			<c:when test="${i eq page}">
		                	<a href="javascript:void(0)" class="page-list active"><c:out value="${i}"/></a>
               			</c:when>
               			<c:otherwise>
		                    <a href="${pageContext.request.contextPath}/listOk.member?page=${i}" class="page-list"><c:out value="${i}"/></a>
               			</c:otherwise>
               		</c:choose>
               	</c:forEach>
               	<c:if test="${next}">
                    <a href="${pageContext.request.contextPath}/listOk.member?page=${endPage + 1}" class="paging paging-move">
                    	<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGUlEQVR42mMo/l/8nwECQEwCHEwGhAlRBgA2mht3SwgzrwAAAABJRU5ErkJggg==">
                    </a>
               	</c:if>
          	</div>
          	<!-- [E] 페이지 컨트롤러 -->
          	
			</form>
			
		</div>
	</div>
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminMember.js"></script>

<script>
	let members = `${members}`;
	let contextPath = `${pageContext.request.contextPath}`;
</script>
 </html>