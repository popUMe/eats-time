<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="https://www.kurly.com//favicon.ico" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/findId.css">
<title>컬리 - 마켓컬리/뷰티컬리</title>
</head>
<body>
	<div class="css-140915z">
		<div class="css-7500ra">아이디 찾기</div>
		<div class="css-u3y03b">
			<div class="css-1izr46f">
				<button type="button" class="css-j8h1l4">이메일 인증</button>
			</div>
			<form class="css-s3iz85">
				<div class="css-1blp8ou">
					<div class="css-1yjqrpx">
						<label for="name" class="css-c3g9of">이름</label>
						<div class="css-176lya2">
							<input data-testid="input-box" id="name" name="name"
								placeholder="이름을 입력해 주세요" type="text"
								class="css-u52dqk" value="">
						</div>
					</div>
				</div>
				<div class="css-1blp8ou">
					<div class="css-1yjqrpx">
						<label for="email" class="css-c3g9of e1uzxhvi4">이메일</label>
						<div class="css-176lya2 e1uzxhvi3">
							<input data-testid="input-box" id="email" name="email"
								placeholder="이메일을 입력해 주세요" type="email"
								class="css-u52dqk e1uzxhvi2" value="">
						</div>
					</div>
				</div>
				<div class="css-3vxi16">
					<button class="css-1s9rhb5" type="submit" disabled=""
						radius="4">
						<span class="css-ymwvow">확인</span>
					</button>
				</div>
			</form>
		</div>
	</div>
</body>
<script src="${pageContext.request.contextPath}/static/js/findId.js"></script>
</html>