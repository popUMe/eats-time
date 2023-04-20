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
	href="${pageContext.request.contextPath}/static/css/member/lastPageWithdraw.css">
<title>컬리 - 마켓컬리/뷰티컬리</title>
</head>
<body>
	<jsp:include page="../header.jsp" />
	
	<div class="css-191mpdx">
		<div class="css-1n0iowd">회원탈퇴안내</div>
		<div class="css-lmufyc">
			<div class="css-w9v2bl">
				<div class="css-1y8737n">
					<label class="css-1obgjqh">회원탈퇴안내</label>
				</div>
				<div class="css-82a6rk">
					<strong class="css-11v4spm">회원 탈퇴시의 아래 사항을 숙지하시기
							바랍니다.</strong>
						<ul class="css-0">
							<li class="css-0">1. (숙지사항1)회원 탈퇴 시 고객님의 정보는 상품 반품 및 A/S를
								위해 전자상거래 등에서의 소비자 보호에 관한 법률에 의거한 고객정보 보호정책에따라 관리 됩니다.</li>
							<li class="css-0">2. (숙지사항2)탈퇴 시 고객님께서 보유하셨던 적립금은 모두 삭제
								됩니다.</li>
							<li class="css-0">3. (숙제사항3)회원 탈퇴 후 3개월간 재가입이 불가능합니다.</li>
							<li class="css-0">4. (숙지사항4)회원 탈퇴 시 컬리패스 해지는 별도로
								고객행복센터(1644-1107)를 통해서 가능합니다. 직접 해지를 요청하지 않으면 해지 처리가 되지 않습니다.</li>
						</ul>
					
				</div>
			</div>
		</div>
		<form>
			

			<div class="css-1fb6x3">
				<button class="css-h1qqcg" type="button" height="44">
					<span class="css-ymwvow">취소</span>
				</button>
				<button class="css-1vv342v" type="submit" height="44">
					<span class="css-ymwvow">탈퇴</span>
				</button>
			</div>
		</form>
	</div>
<jsp:include page="../footer.jsp" />

</body>
</html>