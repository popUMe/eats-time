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
	href="${pageContext.request.contextPath}/static/css/findIdOk.css">
<title>컬리 - 마켓컬리/뷰티컬리</title>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="css-140915z">
		<div class="css-6mht10">
			<div class="css-1ymrnwr">
				고객님의 컬리 계정을 찾았습니다.
				<div class="css-1jlgal3">아이디 확인 후 로그인해 주세요.</div>
			</div>
			<ul class="css-14o5m2r ewnnxio4">
				<li class="css-1qp8f6i"><img class="css-ate73y"
					src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDAiIGhlaWdodD0iNDAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxjaXJjbGUgZmlsbD0iI0Y1RjVGNSIgY3g9IjIwIiBjeT0iMjAiIHI9IjIwIi8+CiAgICAgICAgPHBhdGggZD0iTTIwIDE5YzQuNjUzIDAgOC41IDMuNDc2IDguNSA3LjcyIDAgLjQzLS4zNDYuNzgtLjc3My43OEgxMi4yNzNhLjc3Ni43NzYgMCAwIDEtLjc3My0uNzhjMC00LjI4NSAzLjgyNC03LjcyIDguNS03Ljcyem0wLTguNWEzLjQgMy40IDAgMSAxIDAgNi44IDMuNCAzLjQgMCAwIDEgMC02Ljh6IiBzdHJva2U9IiNDQ0MiIGZpbGw9IiNDQ0MiLz4KICAgIDwvZz4KPC9zdmc+Cg=="
					alt="정보보기">
					<div class="css-yzpdz">
						<div class="css-1kkr6j1">아이디</div>
						<div class="css-1081952">가입일</div>
					</div></li>
			</ul>
			<div class="css-gyfngb">
				<button class="css-ufulao sendMail-button" type="button">
					<span class="css-ymwvow">아이디 전체보기</span>
				</button>
				<button class="css-1qirdbn login-button" type="button">
					<span class="css-ymwvow">로그인</span>
				</button>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
		<div id="modal">
		<div class="banner-online">
			<div class="modal-content">가입하신 이메일로 아이디가 발송되었습니다.<br>메일을 받지 못하셨다면 스팸함을 확인해 보세요.</div>
			<div class="close-button" style="cursor: pointer;">
				확인
			</div>
		</div>
	</div>
</body>
<script src="${pageContext.request.contextPath}/static/js/findIdOk.js"></script>
</html>