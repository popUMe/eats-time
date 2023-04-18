<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>공지사항</title>
<link rel="stylesheet" href="../../static/css/admin/noticeWrite.css">
</head>
<body>
	<div class="board_wrap">
		<div class="board_title">
			<strong>공지사항</strong>
		</div>
		<div class="board_write_wrap">
			<div class="board_write">
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dd>
							<input type="text" placeholder="제목 입력" value="제목">
						</dd>
					</dl>
				</div>
				<div class="cont">
					<textarea placeholder="내용 입력">
내용
내용
내용
						</textarea>
				</div>
			</div>
			<div class="btn">
			 <a href="noticeView.jsp" class="on">수정</a>
			 <a href="noticeView.jsp">취소</a>
			</div>
		</div>
	</div>

</body>
</html>