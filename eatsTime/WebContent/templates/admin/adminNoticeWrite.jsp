<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/admin/adminNoticeWrite.css">
<title>공지사항 - 관리자모드</title>
</head>
<body>
	<div class="board_wrap">
		<div class="board_title">
			<h1>공지작성 - 관리자모드</h1>
		</div>
		<div class="board_write_wrap">
			<div class="board_write">
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dd>
							<input type="text" placeholder="제목 입력">
						</dd>
					</dl>
				</div>
				<div class="cont">
					<textarea inputmode="text" placeholder="내용 입력"></textarea>
				</div>
			</div>
			<div class="btn">
				<a href="adminIndex.jsp" class="on">등록</a> <a href="adminIndex.jsp">취소</a>
			</div>
		</div>
	</div>

</body>
</html>