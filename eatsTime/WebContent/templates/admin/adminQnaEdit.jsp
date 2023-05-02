<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin/adminNoticeWrite.css">
<title>문의내역 수정- 관리자모드</title>
</head>
<body>
	<div class="board_wrap">
		<div class="board_title">
			<h1>문의내역 수정 - 관리자모드</h1>
		</div>
		<form action="${pageContext.request.contextPath}/updateOk.answerBoard?ansbId=${boards.ansbId}&inqbId=${boards.inqbId}"
						id="formtag" name="writeForm" method="post" >
		<div class="board_write_wrap">
			<div class="board_write">
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dd>
							<input type="text" name="ansbTitle" placeholder="제목 입력" value="${boards.ansbTitle}">
						</dd>
					</dl>
				</div>
				<div class="cont">
					<textarea name="ansbContent" placeholder="내용 입력">${boards.ansbContent}</textarea>
				</div>
			</div>
			<button class="btn" onclick="document.getElementById('formtag').submit();">수정</a></button>
		</form>
			
			<button class="btn" onclick="location.href=`${pageContext.request.contextPath}/templates/admin/adminQnaView.jsp">취소</button>
			</div>
		</div>
	</div>

</body>
</html>