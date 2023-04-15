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
	href="${pageContext.request.contextPath}/static/css/changePw.css">
<title>컬리 - 마켓컬리/뷰티컬리</title>
</head>
<body>
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
					<p class="css-ua37vt">10자 이상 입력</p>
					<p class="css-ua37vt">영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</p>
					<p class="css-1319hys">동일한 숫자 3개 이상 연속 사용 불가</p>
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
					<p class="css-ua37vt">동일한 비밀번호를 입력해 주세요.</p>
				</div>
				<div class="css-3vxi16">
					<button class="css-1s9rhb5" type="submit" disabled="" radius="4">
						<span class="css-ymwvow">확인</span>
					</button>
				</div>
			</form>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/changePw.js"></script>
</html>