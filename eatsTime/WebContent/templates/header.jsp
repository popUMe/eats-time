<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<title>이츠타임 - 헤더</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/main.css" />
</head>
<body>
	<!-- 헤더 전체 -->
	<div>
		<!--헤더 위 부분 -->
		<div class="css-t79vuj e15sbxqa2">
			<!-- 헤더 오른쪽 위(회원가입, 로그인, 고객센터) 부분 -->

			<!-- <c:choose> -->
			<!-- <c:when test="${sessionId eq null}"> -->

			<div class="css-fexq9b eo7pjfk4">
				<a class="css-1g7d8zf eo7pjfk2" href="member/signup.jsp">회원가입</a>
				<div class="css-1qgm48u eo7pjfk0"></div>
				<a class="css-1pu21l0 eo7pjfk2" href="member/login.jsp">로그인</a>
				<div class="css-1qgm48u eo7pjfk0"></div>
				<div class="css-1qolcqm eo7pjfk3" id="board">
					<a class="css-1pu21l0 eo7pjfk2" href="board/noticeList.jsp">고객센터<span
						class="css-1lrerrk eo4j3y50"></span></a>
					<div class="menu css-1ia5eje ecncdj41">
						<a class="css-12olpw6 ecncdj40" href="board/noticeList.jsp">공지사항</a>
						<a class="css-12olpw6 ecncdj40" href="board/qnaList.jsp">1:1
							문의</a>
					</div>
				</div>
			</div>

			<!-- </c:when> -->
			<!-- <c:otherwise> -->

			<!-- DB 구현 이후 화면 추가 작업 예정 -->
			<!-- <div class="css-fexq9b eo7pjfk4">
				<a class="css-1g7d8zf eo7pjfk2" href="member/signup.jsp">마이페이지</a>
				<div class="css-1qgm48u eo7pjfk0"></div>
				<a class="css-1pu21l0 eo7pjfk2" href="member/login.jsp">로그아웃</a>
				<div class="css-1qgm48u eo7pjfk0"></div>
				<div class="css-1qolcqm eo7pjfk3" id="board">
					<a class="css-1pu21l0 eo7pjfk2" href="board/noticeList.jsp">고객센터<span
						class="css-1lrerrk eo4j3y50"></span></a>
					<div class="menu css-1ia5eje ecncdj41">
						<a class="css-12olpw6 ecncdj40" href="board/noticeList.jsp">공지사항</a>
						<a class="css-12olpw6 ecncdj40" href="board/qnaList.jsp">1:1 문의</a>
					</div>
				</div>
			</div> -->

			<!-- </c:otherwise> -->
			<!-- </c:choose> -->

			<!-- 헤더 로고, 검색창, 장바구니 등 라인 부분 -->
			<div class="css-r7wmjj e15sbxqa3">
				<!-- 로고하고 마켓컬리, 뷰티컬리 부분 -->
				<div class="css-boc80u ekdqe1a2">
					<img
						src="${pageContext.request.contextPath}/static/image/logo_98x42.png"
						alt="마켓컬리 로고" class="css-17mnrrx e1s3pt0j0">
					<button class="active css-j0ug0x ekdqe1a1"
						onclick="location.href='index.jsp'">이츠타임</button>
					<button class=" css-1sia941 ekdqe1a0" style="visibility: hidden">삭제예정</button>
				</div>
				<!-- 검색창 부분 -->
				<div class="css-pqw0uk e1493ofl4">
					<div class="css-w444a2 e1493ofl1">
						<input id="gnb_search" placeholder="검색어를 입력해주세요" required=""
							class="css-11ntk83 e1493ofl3" value=""
							onkeypress="if( event.keyCode == 13 ){search();}">
						<button id="submit" aria-label="submit"
							class="css-ywxmlw e1493ofl0" onclick="search();"></button>
					</div>
				</div>
				<!-- 헤더 오른쪽 장바구니 등 부분 -->
				<div class="css-pqw0uk e15sbxqa1" style="visibility: hidden">
					<div class="css-c4pbxv e15sbxqa0">
						<div class=" css-1n4p7us e1n3mt0d1"></div>
						<button class="css-231fw3 etxxzpc0" aria-label="찜하기" type="button"></button>
						<div class="css-ff2aah e14oy6dx2">
							<button class="css-g25h97 e14oy6dx1"></button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 헤더 메뉴 부분 -->
		<div id="header" class="css-19ndp9a e17w4cfr1">
			<!--카테고리부터 샛별, 택배 배송안내까지 부분 -->
			<div class="css-mlddcv e17w4cfr6">
				<!-- 헤더 카테고리 버튼 부분 -->
				<div class="css-0 e17w4cfr3">
					<div class="css-axtlq9 eqn756m2" style="visibility: hidden">
						<span class="css-1k5gn9s eqn756m1"></span><span
							class="css-t75x7c eqn756m0">삭제예정</span>
					</div>
				</div>
				<!-- 헤더 버튼 부분 -->
				<ul class="css-1887xqd e17w4cfr5">
					<li class="css-59mmhh e17w4cfr4"><span
						class="css-1xyu7j9 e17w4cfr2"><a
							href="product/productListAll.jsp">배송&픽업</a></span></li>
					<li class="css-59mmhh e17w4cfr4"><span
						class="css-1xyu7j9 e17w4cfr2"><a
							href="product/productListDelivery.jsp">배송</a></span></li>
					<li class="css-59mmhh e17w4cfr4"><span
						class="css-1xyu7j9 e17w4cfr2"><a
							href="product/productListPickup.jsp">픽업</a></span></li>
					<li class="css-59mmhh e17w4cfr4"><span
						class="css-1xyu7j9 e17w4cfr2"><a
							href="product/productListAll.jsp">이츠타임</a></span></li>
				</ul>
				<!-- 헤더 샛별, 택배 배송안내 부분 -->
				<div class="css-s5xdrg e17w4cfr0" style="visibility: hidden">
					<a
						href="/shop/event/kurlyEvent.php?htmid=event/delivery_search/delivery_search">
						<div class="css-dnwaeo e1mmzaxa1">
							<span class="css-1s2o3jp e1mmzaxa0">샛별・택배</span> 삭제예정
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div hidden="" class="css-1px7x3s e1py5jsz0"></div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	/* 고객센터 마우스 올릴 때 부분 */
	$(document).ready(function() {
		$("#board").hover(function() {
			$(".css-1qolcqm .menu").show();
		}, function() {
			$(".css-1qolcqm .menu").hide();
		});
	});

	/* 검색 기능 */
	/* 	let input = document.getElemetById("gnb_search");

	 input.addEventListner("keyup", function(event) {
	 if (event.keyCode === 13) {
	 event.preventDefault();
	 document.getElementById("submit").click();
	 }
	 }); */
	function search() {
		alert("검색기능");
	}
</script>
</html>