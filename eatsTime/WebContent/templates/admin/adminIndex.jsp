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
       <div id="logo">
          <a class="logo" href="${pageContext.request.contextPath}/lisOk.notificationboard">
             <img src="${pageContext.request.contextPath}/static/image/logo.png" alt="이츠타임 로고">
          </a>
       </div>
      <a class="nav_list" href="${pageContext.request.contextPath}/listOk.notificationboard">공지사항</a> 
      <a class="nav_list" href="${pageContext.request.contextPath}/listOk.member">회원관리</a> 
      <a class="nav_list" href="${pageContext.request.contextPath}/listOk.Inquiryboard">문의내역</a>
   </div>

	<div class="content">
		<h1>공지사항 관리</h1>
		<div id=table-container>
		<form action="deleteOk.notificationboard" method="post">
		<div class="btn">
		<button type="button" id="add-btn" onclick="location.href='adminNoticeWrite.notificationboard'">작성</button>
  		<button disabled id="delete-btn" type="submit">삭제</button>
  		</div>
  	<table class="overflow" id="pagingul">
  		<tr>
			<th style="width:30px"><input type="checkbox" id="chkAll" name="chkAll"/></th>
				<th>공지번호</th>
				<th>제목</th>
				<th>작성자</th>
			<th>작성날짜</th>
		</tr>
		<c:forEach var="notificationboards" items="${notificationboards}">
				<tr>
			    <td><input type="checkbox" name="chk" value="${notificationboards.notbId}"></td>
				<td onclick="javascript:location.href='${pageContext.request.contextPath}/viewOk.notificationboard?notbId=${notificationboards.notbId}'" name="notbId">${notificationboards.notbId}</td>
				<td onclick="javascript:location.href='${pageContext.request.contextPath}/viewOk.notificationboard?notbId=${notificationboards.notbId}'" name="notbTitle"><a>${notificationboards.notbTitle}</a></td>
				<td onclick="javascript:location.href='${pageContext.request.contextPath}/viewOk.notificationboard?notbId=${notificationboards.notbId}'" name="memberName">${notificationboards.memberName}</td>
				<td onclick="javascript:location.href='${pageContext.request.contextPath}/viewOk.notificationboard?notbId=${notificationboards.notbId}'" name="notbDate">${notificationboards.notbDate}</td>
			    </tr>
		</c:forEach>
	</table>
		</form>
		<div id="paging-wrap">
			<div class="paging">
				<c:if test="${prev}">
	                	<a href="${pageContext.request.contextPath}/listOk.notificationboard?page=${startPage - 1}" class="paging paging-move"><img src="${pageContext.request.contextPath}/static/image/prev.png" width="15px"></a>
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
	                  <a href="${pageContext.request.contextPath}/listOk.notificationboard?page=${endPage + 1}" class="paging paging-move"><img src="${pageContext.request.contextPath}/static/image/next.png" width="15px"></a>
                </c:if>
			</div>
		</div>	
	</div>
	</div>
</body>
<script>
</script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminIndex.js"></script>	
</html>