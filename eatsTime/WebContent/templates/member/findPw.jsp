<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="https://www.kurly.com//favicon.ico" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/findId.css">
<title>컬리 - 마켓컬리/뷰티컬리</title>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="css-140915z">
		<div class="css-7500ra">비밀번호 찾기</div>
		<div class="css-u3y03b">
			<div class="css-1izr46f">
				<button type="button" class="css-j8h1l4">이메일 인증</button>
			</div>
			<form action="findIdPwOk.jsp" class="css-s3iz85">
				<div class="css-1blp8ou">
					<div class="css-1yjqrpx">
						<label for="name" class="css-c3g9of">아이디</label>
						<div class="css-176lya2">
							<input id="memberId" name="memberId" placeholder="아이디를 입력해주세요."
								type="text" class="css-u52dqk input-content1" value="" >
						<button class="css-118q5z4 textbutton1" size="16" id="delete-input"
							aria-label="delete-input" type="button"
							style="visibility: hidden"></button>
						</div>
					</div>
					<p class="css-1ozil7i error1" name="error1"></p>
				</div>
				<div class="css-1blp8ou">
					<div class="css-1yjqrpx">
						<label for="email" class="css-c3g9of">이메일</label>
						<div class="css-176lya2">
							<input id="email" name="email" placeholder="이메일을 입력해 주세요"
								type="email" class="css-u52dqk input-content2" value="">
							<button class="css-118q5z4 textbutton2" size="16"
								id="delete-input" aria-label="delete-input" type="button"
								style="visibility: hidden"></button>
						</div>
					</div>
					<p class="css-1ozil7i error2" name="error2"></p>
				</div>
				<div class="css-3vxi16">
					<button class="css-1s9rhb5 button" type="submit" disabled=""
						radius="4">
						<span class="css-ymwvow">확인</span>
					</button>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
		<div id="modal">
		<div class="banner-online">
			<div class="modal-content">가입시 입력하신 회원 정보가 맞는지 다시 한번 확인해 주세요.</div>
			<div class="close-button" style="cursor: pointer;">
				확인
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/findPw.js"></script>
</html>