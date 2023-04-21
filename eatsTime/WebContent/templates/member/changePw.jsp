<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/changePw.css">
<title>이츠타임 - [비밀번호 재설정]</title>
</head>
<body>
<jsp:include page="../header.jsp" />
	<div class="css-140915z">
		<div class="css-7500ra">비밀번호 재설정</div>
		<div class="css-u3y03b">
			<form class="css-s3iz85">
				<div class="css-1blp8ou">
					<div class="css-1yjqrpx">
						<label for="password" class="css-c3g9of">새 비밀번호 등록</label>
						<div class="css-176lya2">
							<input type="password" id="password" name="password" value=""
								placeholder="새 비밀번호를 입력해 주세요" class="css-u52dqk input-content1"
								aria-autocomplete="list">
							<button class="css-118q5z4 textbutton1" size="16"
								id="delete-input" aria-label="delete-input" type="button"
								style="visibility: hidden"></button>
						</div>
					</div>
					<p class="checkPw"></p>
					<p class="checkPw"></p>
					<p class="checkPw"></p>
				</div>
				<div class="css-1blp8ou">
					<div class="css-1yjqrpx">
						<label for="passwordConfirm" class="css-c3g9of">새 비밀번호 확인</label>
						<div class="css-176lya2">
							<input type="password" id="passwordConfirm"
								name="passwordConfirm" value=""
								placeholder="새 비밀번호를 한 번 더 입력해 주세요" class="css-u52dqk input-content2">
						<button class="css-118q5z4 textbutton2" size="16"
							id="delete-input" aria-label="delete-input" type="button"
							style="visibility: hidden"></button>
						</div>
					</div>
					<p class="checkConfirm"></p>
				</div>
				<div class="css-3vxi16">
					<button class="css-1s9rhb5 button" type="button" disabled="" radius="4">
						<span class="css-ymwvow">확인</span>
					</button>
				</div>
			</form>
		</div>
	</div>
<jsp:include page="../footer.jsp" />
	<div id="modal">
		<div class="banner-online">
			<div class="modal-content">비밀번호 변경이 완료되었습니다.</div>
			<div class="close-button" style="cursor: pointer;">
				확인
			</div>
		</div>
	</div>	
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/changePw.js"></script>
</html>