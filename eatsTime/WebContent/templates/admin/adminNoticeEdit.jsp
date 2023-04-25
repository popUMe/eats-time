<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin/adminNoticeWrite.css">
<title>공지사항 - 관리자모드</title>
</head>
<body>
	<div class="board_wrap">
		<div class="board_title">
			<h1>공지사항 - 관리자모드</h1>
		</div>
		<form action="editOk.notificationboard" method="post">
		<div class="board_write_wrap">
			<div class="board_write">
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dd>
							<input name="notbTitle" type="text" placeholder="제목 입력">
						</dd>
					</dl>
				</div>
				<div class="cont">
					<textarea name="notbContent" placeholder="내용 입력">
					</textarea>
				</div>
			</div>
			<div class="btn">
			 <a href="adminNoticeView.jsp" class="on">수정</a>
			 <a href="adminNoticeView.jsp">취소</a>
			</div>
		</div>
		</form>
	</div>

</body>
</html>