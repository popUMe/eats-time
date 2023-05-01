<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<h1>답변작성 - 관리자모드</h1>
		</div>  
		<form action="${pageContext.request.contextPath}/writeOk.answerBoard?inqbId=${param.inqbId}" id="formtag" name="writeForm" method="post" >
		<div class="board_write_wrap">
			<div class="board_write">
			
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dd>
							<input type="text" name="ansbTitle" placeholder="제목 입력">
						</dd>
					</dl>
				</div>
				<div class="cont">
					<textarea placeholder="내용 입력" name="ansbContent"></textarea>
				</div>
			</div>
			<div class="btn">
				<button onclick="document.getElementById('formtag').submit()" class="on">등록</button> <!-- <a href="adminQna.jsp">취소 </a> -->
			</div>
		</div>
		</form>
	</div>

</body>
</html>