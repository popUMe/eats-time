<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon"
	href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/admin/adminQna.css">
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath}/static/css/admin/adminIndex.css">
<title>문의내역 - 관리자모드</title>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap')
	;
</style>
</head>
<body>

	<div id="sidebar">
		<div id="logo">
			<a class="logo"
				href="${pageContext.request.contextPath}/adminindex.notificationboard">
				<img src="${pageContext.request.contextPath}/static/image/logo.png"
				alt="이츠타임 로고">
			</a>
		</div>
		<a class="nav_list"
			href="${pageContext.request.contextPath}/adminindex.notificationboard">공지사항</a>
		<a class="nav_list"
			href="${pageContext.request.contextPath}/listOk.member">회원관리</a> <a
			class="nav_list"
			href="${pageContext.request.contextPath}/lisOk.Inquiryboard">문의내역</a>
	</div>


	<div id=:logo></div>


	<div class="content">
		<h1>문의 관리</h1>
		<div class="con-wrap">
			<form action="${pageContext.request.contextPath}/deleteOk.answerBoard" name="delete-form">
				<div id=table-container>

			
							<!-- 게시글 목록 -->
                  
                 
			<table>
			 <tbody>
				<tr>
					<th>문의번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성날짜</th>
					<th>상태</th>
				</tr>
				<c:forEach var="boards" items="${boards}">
						<tr onclick="location.href='${pageContext.request.contextPath}/detailOk.answerBoard?inqbId=${boards.inqbId}'" style="cursor:hand">
						<td>${boards.inqbId}</td>
						<td>${boards.inqbTitle}</td>
						<td>${boards.memberIdentification}</td>
						<td>${boards.inqbDate}</td>     
						<td>${boards.inqbComplete ? '답변 미완료' : '답변 완료'}</td>
						</tr>
				</c:forEach>
				</tbody>
			</table>
			         
				<!-- 페이지 앞/뒤로 넘기기 버튼 --> 
				<div id="paging" class="paging">

				
     			 <!-- [S] 페이지 컨트롤러 -->
<!-- 					<div class="btn"> -->
<!-- 						<button type="button" class="btns" id="add-btn">작성</button> -->
<!-- 						<button type="submit" class="btns" id="delete-btn" disabled>삭제</button> -->
<!-- 					</div> -->

             
								<!-- 이전 페이지로 이동하기 -->
								<c:if test="${prev}">
									<a class="paging paging-move"
										href="${pageContext.request.contextPath}/answerList.answerBoard?page=${startPage - 1}">
										<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGElEQVR42mNgAIPi/8X/4QwwE5PBQJADAAKSG3cyVhtXAAAAAElFTkSuQmCC">
									</a>
								</c:if>
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
									<c:choose>
										<c:when test="${i eq page}">
											<a class="page-list active"><c:out
													value="${i}" /></a>
										</c:when>
										<c:otherwise>
											<a
												href="${pageContext.request.contextPath}/answerList.answerBoard?page=${i}"
												class="page-list"><c:out
													value="${i}" /></a>
										</c:otherwise>
									</c:choose>
								</c:forEach>

								<!-- 다음 페이지로 이동하기 -->
								<c:if test="${next}">
									<a class="paging paging-move"
										href="${pageContext.request.contextPath}/answerList.answerBoard?page=${endPage + 1}">
										<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGUlEQVR42mMo/l/8nwECQEwCHEwGhAlRBgA2mht3SwgzrwAAAABJRU5ErkJggg==">
									</a>
								</c:if>

								<!-- 마지막 페이지로 이동하기 -->
								<a class="paging paging-move"
									href="${pageContext.request.contextPath}/answerList.answerBoard?page=${realEndPage}">
									<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGUlEQVR42mMo/l/8nwECQEwCHEwGhAlRBgA2mht3SwgzrwAAAABJRU5ErkJggg==">
								</a>
							</div>
							<!-- [E] 페이지 컨트롤러 -->

							<!-- 			<div class="paging"> -->
							<!-- 				<a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a> -->
							<!-- 				<a href="#">4</a> <a href="#">5</a> -->
							<!-- 			</div> -->
							</div>

						
			</form>
</body>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminQna.js"></script>
<script>
	let contextPath = `${pageContext.request.contextPath}`;
	console.log(`${boards}`);
	
</script>
</html>