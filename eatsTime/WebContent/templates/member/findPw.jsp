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
	href="${pageContext.request.contextPath}/static/css/findPw.css">
<title>컬리 - 마켓컬리/뷰티컬리</title>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="css-140915z">
		<div class="css-7500ra">비밀번호 찾기</div>
		<div class="css-u3y03b">
			<div class="css-1izr46f">
				<button type="button" class="css-1vhrqx7 certification-button">휴대폰
					인증</button>
				<button type="button" class="css-j8h1l4 certification-button">이메일 인증</button>
			</div>
			<form action="findIdPwOk.jsp" class="css-s3iz85">
				<div class="css-1blp8ou">
					<div class="css-1yjqrpx">
						<label for="name" class="css-c3g9of">아이디</label>
						<div class="css-176lya2">
							<input id="memberId" name="memberId" placeholder="아이디를 입력해주세요."
								type="text" class="css-u52dqk input-content1" value="">
							<button class="css-118q5z4 textbutton1" size="16"
								id="delete-input" aria-label="delete-input" type="button"
								style="visibility: hidden"></button>
						</div>
					</div>
					<p class="css-1ozil7i error1" name="error1"></p>
				</div>
				<div class="css-1blp8ou">
					<div class="css-1yjqrpx email-input">
						<label for="email" class="css-c3g9of">이메일</label>
						<div class="css-176lya2">
							<input id="email" name="email" placeholder="이메일을 입력해 주세요"
								type="email" class="css-u52dqk input-content2" value="">
							<button class="css-118q5z4 textbutton2" size="16"
								id="delete-input" aria-label="delete-input" type="button"
								style="visibility: hidden"></button>
						</div>
						<p class="css-1ozil7i error2" name="error2"></p>
					</div>
				</div>
				<!-- 휴대폰  -->
				<div class="css-1blp8ou phone-input">
					<div class="css-1yjqrpx ">
						<label for="phone" class="css-c3g9of">휴대폰 번호</label>
						<div height="46" class="css-1iilz1t">
							<input id="phone" name="phone" placeholder="휴대폰 번호를 입력해 주세요"
								type="text" height="46" class="css-17iio5j input-content3"
								maxlength='11' numberOnly value="">
							<button class="css-118q5z4 textbutton3" size="16"
								id="delete-input" aria-label="delete-input" type="button"
								style="visibility: hidden"></button>
						</div>
						<p class="css-1ozil7i error3" name="error3"></p>
					</div>
				</div>
				<div class="certification-number-wrap">
					<div class="css-5g3j4g">
						<div class="css-99fv0w">
							<label for="verification-number" class="css-c3g9of">인증번호</label>
							<div height="46" class="css-1iilz1t">
								<input id="verification-number" name="verificationNumber"
									type="text" maxlength='7' numberOnly
									placeholder="인증번호 7자리" height="46"
									class="css-17iio5j input-content4" value="">
								<button class="css-118q5z4 textbutton4" size="16"
									id="delete-input" aria-label="delete-input" type="button"
									style="visibility: hidden"></button>
							</div>
						</div>
						<button class="css-m5a8v7 resend-button" type="button" width="88"
							height="48" radius="4">
							<span class="css-ymwvow">재발송</span>
						</button>
						<p class="css-1ec0hfe timer"></p>
					</div>
					<p class="css-1ozil7i error4">인증번호를 입력해 주세요</p>
				</div>
				<div class="css-3vxi16">
					<!-- 이메일인증버튼 -->
					<button class="css-1s9rhb5 email-button button" type="submit"
						disabled="" radius="4">
						<span class="css-ymwvow button-text">확인</span>
					</button>
					<!-- 폰인증번호 받기 버튼 -->
					<button class="css-1s9rhb5 phone-button button" type="button"
						disabled="" radius="4">
						<span class="css-ymwvow button-text">인증번호 받기</span>
					</button>
					<!-- 폰인증후 버튼 -->
					<button class="css-1s9rhb5 phone-confirmButton button"
						type="button" disabled="" radius="4">
						<span class="css-ymwvow button-text">확인</span>
					</button>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
	<div id="modal">
		<div class="banner-online">
			<div class="modal-content1">가입시 입력하신 회원 정보가 맞는지 다시 한번 확인해 주세요.</div>
			<div class="close-button" style="cursor: pointer;">확인</div>
		</div>
	</div>
	<div id="modalSubmit">
		<div class="banner-online">
			<div class="modal-content">가입시 입력하신 회원 정보가 맞는지 다시 한번 확인해 주세요.</div>
			<div class="close-button-submit" style="cursor: pointer;">확인</div>
		</div>
	</div>
	<div id="modal2">
		<div class="banner-online">
			<div class="modal-content2">
				이메일 인증 화면으로 이동하시겠습니까? <br> 입력하신 휴대폰 인증 정보는 초기화됩니다.
			</div>
			<div class="modal-wrap">
				<div class="close-button-cancle" style="cursor: pointer;">취소</div>
				<div class="email-move-button" style="cursor: pointer;">확인</div>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/findPw.js"></script>
</html>