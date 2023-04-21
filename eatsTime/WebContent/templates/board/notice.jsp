<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/board/notice.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css" />
<title>이츠타임 - [공지사항]</title>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<!-- 페이지의 메인 부분 -->
	<div class="css-1i60c0e emilzgk3">
		<div class="css-1uvp5r6 emilzgk2">
			<div class="css-qwe8mt emilzgk1">공지사항</div>
			<div class="css-1funedv emilzgk0">이츠타임의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</div>
		</div>
		<div class="css-1t45bai erzmnr90">
			<div class="css-1dhg94g e1pwb5hv0">
				<div class="css-1xrh39a e1pwb5hv2">제목</div>
				<div class="css-8vgw34 e1pwb5hv1">[안내] 서비스 오픈 안내문</div>
			</div>
			<div class="css-1dhg94g e1pwb5hv0">
				<div class="css-1xrh39a e1pwb5hv2">작성자</div>
				<div class="css-8vgw34 e1pwb5hv1">이츠타임</div>
			</div>
			<div class="css-1dhg94g e1pwb5hv0">
				<div class="css-1xrh39a e1pwb5hv2">작성일</div>
				<div class="css-8vgw34 e1pwb5hv1">2023.05.03</div>
			</div>
			<div class="css-1xvp3jp ezf0ge90">
				<div>
					<p>
						<img alt="image" src="${pageContext.request.contextPath}/static/image/notice_001.jpg">
					</p>
				</div>
			</div>
			<div class="css-d7qwpj e1p3kiis0">
				<button onclick="location.href='noticeList.jsp'" class="css-214ym4 e4nu7ef3" type="button" width="150" height="42" radius="0">
					<span class="css-ymwvow e4nu7ef1">목록</span>
				</button>
			</div>		
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>