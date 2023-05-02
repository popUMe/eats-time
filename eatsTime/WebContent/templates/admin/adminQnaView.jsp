<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon"
	href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/admin/adminNoticeWrite.css">
<title>문의내역 - 관리자모드</title>
</head>
<body>
	<div class="board_wrap">
		<div class="board_title">
			<h1>문의내역 - 관리자모드</h1>
		</div>
		<div class="board_view_wrap">
			<div class="board_view">
				<div class="title">
					<c:out value="${inqbTitle}" />
				</div>


				<div class="info">
					<dl>
						<dt>회원 아이디</dt>
						<dd>
							<c:out value="${memberIdentification}" />
						</dd>
					</dl>
					<dl>
						<dt>작성일</dt>
						<dd>
							<c:out value="${inqbDate}" />
						</dd>
					</dl>

				</div>
				<div class="cont">
					<c:out value="${inqbContent}" />

				</div>

				<c:choose>
					<c:when test="${answers ne null}">
						<div style='font-size:18px; padding-left:10px; padding-top:20px;'>
							[관리자 답변]
							<div>
								답변 제목 :
								<c:out value="${answers.ansbTitle}" />
							</div>
							<div>
								답변 내용 : <c:out value="${answers.ansbContent}" />
							</div>
<!-- 							<div> -->
<%-- 								답변 시간 : <c:out value="${answers.ansbDate}" /> --%>
<!-- 							</div> -->
						</div>
					</c:when>
					<c:otherwise>
						<div style='font-size:15px;'>답변이 등록 되지 않았으니 달아주세요.</div>
						<button class="btn"
							onclick="location.href='${pageContext.request.contextPath}/writeAnswer.answerBoard?inqbId=${boards.inqbId}'"
							style="cursor: pointer;">등록</button>
					</c:otherwise>
				</c:choose>



				<button class="btn">
					<a href="${pageContext.request.contextPath}/answerList.answerBoard">목록</a>
				</button>
				<button class="btn">
					<a href="${pageContext.request.contextPath}/deleteAnswer.answerBoard?inqbId=${boards.inqbId}" >삭제</a>
				</button>
			</div>
		</div>


		<%--             <form action="${pageContext.request.contextPath}/writeAnswer.answerBoard" id="formtag" name="writeForm">답변 작성</a></form> --%>
	</div>

</body>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>console.log(${boards.memberIdentification})
</script>
</html>