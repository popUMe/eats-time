<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon"
	href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/member/lastPageWithdraw.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/modal/modal.css">
<title>이츠타임 - 회원 탈퇴</title>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="css-191mpdx">
		<div class="modal">
			<div class="warn-modal">
				<div id="content-wrap"></div>
			</div>
		</div>
		<div class="css-1n0iowd">계정 비활성화 안내</div>
		<div class="css-lmufyc">
			<div class="css-w9v2bl">
				<div class="css-1y8737n">
					<label class="css-1obgjqh">계정 비활성화 안내</label>
				</div>
				<div class="css-82a6rk">
					<strong class="css-11v4spm">계정 비활성화 시 아래 사항을 숙지하시기 바랍니다.</strong>
					<ul class="css-0">
						<li class="css-0">1.계정 비활성화 시 고객님의 정보는 상품 반품 및 A/S를 위해
							전자상거래 등에서의 소비자 보호에 관한 법률에 의거한 고객정보 보호정책에따라 관리 됩니다.</li>
							<br>
						<li class="css-0">2.계정 비활성화 시 이츠패스 해지는 별도로
							고객행복센터(1234-5678)를 통해서 가능합니다. 직접 해지를 요청하지 않으면 해지 처리가 되지 않습니다.</li>
					</ul>

				</div>
			</div>
		</div>
		<form>


			<div class="css-1fb6x3">
				<a
					href="${pageContext.request.contextPath}/modify.member"><button
						class="css-h1qqcg" type="button" height="44">
						<span class="css-ymwvow">취소</span>
					</button></a>
				<button class="css-1vv342v" type="button" id="button" height="44">
					<span class="css-ymwvow">탈퇴</span>
				</button>
			</div>
		</form>
	</div>
	<jsp:include page="../footer.jsp" />

</body>
<script
	src="${pageContext.request.contextPath}/static/js/modal/modal.js"></script>
<script>
	/* 회원탈퇴 ajax */

	$(function() {
		$("#button").on("click", getData);
	});
	//	$('#button').on('click', function(){
	//		console.log('1');
	//	});

	function getData() {
		$
				.ajax({
					type : "post",
					url : "deleteOk.member",
					data : {
						memberId : '1'
					},
					//	 	data: {memberId: $(this).val()},
					success : function() {
						showWarnModal("고객님의 계정은 더이상 사용이 불가하며, 다시 사용을 원하실 경우 로그인 하여 요청해주시기 바랍니다.");
						setTimeout(function(){
							location.href = '${pageContext.request.contextPath}/index.member';	
						}, 2500);
					}
				});
	}
</script>
</html>