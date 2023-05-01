<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/admin/adminNoticeWrite.css">
<title>공지사항 - 관리자모드</title>
</head>
<body>
	<div class="board_wrap">
		<div class="board_title">
			<h1>공지사항 - 관리자모드</h1>
		</div>
		<div id="notificationboard" class="board_view_wrap">
			<div class="board_view">
				<div class="title"><c:out value="${notbTitle}"/></div>
				<div class="info">
					<dl id="id_wrapper">
						<dt>번호</dt>
						<dd><c:out value="${notbId}"/></dd>
					</dl>
					<dl id="date_wrapper">
						<dt>작성일</dt>
						<dd><c:out value="${notbDate}"/></dd>
					</dl>
					<dl id="hit_wrapper">
						<dt>조회</dt>
						<dd><c:out value="${notbHit}"/></dd>
					</dl>
				</div>
				<div id="content_wrapper">
					<div class="cont"><pre><c:out value="${notbContent}"/></pre></div>
				</div>
			</div>
			<div class="btn" style="background-color: black;">
				<a href="${pageContext.request.contextPath}/adminindex.notificationboard" class="on">목록</a>
			</div> 
			<div class="btn">
				<a href="${pageContext.request.contextPath}/adminEdit.notificationboard?notbId=${notbId}">수정</a>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminNoticeView.js"></script>	
</html>