<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="https://www.kurly.com//favicon.ico" />
<title>헤더</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css" />
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
						<a class="css-12olpw6 ecncdj40" href="board/qnaList.jsp">1:1 문의</a>
					</div>
				</div>
			</div>
			
			<!-- </c:when> -->
			<!-- <c:otherwise> -->
			
			<!-- DB 구현 이후 화면 추가 작업 예정 --><!-- <div class="css-fexq9b eo7pjfk4">
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
						src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iODIiIGhlaWdodD0iNDIiIHZpZXdCb3g9IjAgMCA4MiA0MiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGwtcnVsZT0ibm9uemVybyIgZmlsbD0ibm9uZSI+CiAgICAgICAgPHBhdGggZD0iTTAgMGg4MnY0MkgweiIvPgogICAgICAgIDxwYXRoIGQ9Ik02Mi41Ljk2NWMxLjAyNi0uNTU3IDIuNDY2LS43MTggMy4zNTYuMTA3Ljg5LjgyNS42NzYgMi4wNDggMCAzLjk3MyAwIDAtMS41MDUgNC4wNjYtMy4wNTUgOC4yNjJsLS4zOTggMS4wOGMtMS40MTQgMy44My0yLjc2MiA3LjQ4Ny0yLjkyNyA3Ljk2My0xLjQ5OCA0LjI0NSAxLjk2NyA0LjEyMiA0LjAyNC0uMTUyIDEuMTU5LTIuMzk0IDIuNjQ0LTYuMzU3IDIuNjQ0LTYuMzU3LjUyNC0xLjU2My42ODItMi41MDQuMzU5LTIuODI4LS4xMDctLjExMy4wNDUtLjI1Mi4xOC0uMzIzIDIuMjY5LTEuMTQ5IDQuNjMtLjA3MiAzLjMzNiAzLjMxbC0uMDU0LjEzOGMtLjM4Ny45NzgtMi42OCA2LjczMy0yLjY4IDYuNzMzLS42NzYgMS42Ni0uNTk1IDMuMjM2LjQxOCAzLjIzNi42ODYtLjAwNCAxLjQ2LS4zODUgMi4zMDQtMS4wODggMS44MTgtMS41MDQgMy4yMjItNC4zMTIgMy43MjctNS40NTQuMjMtLjUwOCAxLjA4Ny0yLjQyIDEuNzY2LTQuMzYxLjIzNi0uNjY1LjM2OS0xLjM2LjM5NS0yLjA2NWEuNDQzLjQ0MyAwIDAgMSAuMTk0LS40NTkgMy41NzggMy41NzggMCAwIDEgMS42Ny0uNDIgMS44MDUgMS44MDUgMCAwIDEgMS40NjUuNzA1Yy40NDMuNTk4LjU2NiAxLjU3OS4xMDMgMi44MDgtLjEyLjMyLTMuNzc1IDkuOTU4LTMuNzc1IDkuOTU4di4wMjZjMi4wNDEtMS4yMjMgMy44Ny0xLjMxMyA0Ljk1My0uODU0bC0uMDAzLS4wMTNjMS40OTUuNjQ3IDEuOTkgMi40NC45MzggMy41NTktLjEwMy4xMS0uMzYyLjA4NC0uMzYyLS4wOS0uMDk0LTEuMjUzLTIuNTE3LTMuNDk1LTYuMTA5LTEuMDc1bC0uMTQ1LjM4NS0xLjA2OCAyLjgwOGMtMi42MiA3LjAxOC01LjQwMyAxMi4xMzYtOS40MTUgMTEtMi42ODgtLjc2LTIuMzc3LTQuNjA3LjUxNS03Ljc5YTU0LjkgNTQuOSAwIDAgMSA2LjQ5LTUuODk4Yy4wNjgtLjE4OC4xMy0uMzUuMTg4LS41MTEuMjc4LS43OC40OTEtMS40MzQuNzkyLTIuMjY1bC4xNTktLjUxOGMtLjE3OC4yLS40OTguNTczLS43MTIuODEyLS43MTIuOC0yLjQ5NCAyLjc1Ny01LjMyOSAyLjIwN2wtLjIzNC0uMDUyYy0yLjA1LS41MDgtMi42MDgtMS45ODYtMi42NTUtMy4yNzctMi4xNDIgMi42NTYtNC4zNTEgMy40MjYtNS44MDcgMy4zOS0xLjk0OC0uMDQ4LTMuMzc4LTEuNTE0LTIuNDI3LTQuMjkgMS4wNTgtMy4xMDYgNS41LTE1LjMzMiA2Ljc5NS0xOSAuNDg1LTEuNTguNjY2LTIuNTguMTg0LTIuOTc0LS4xMjMtLjEwMy4wNTItLjI2NS4yLS4zNDZ6bTguMzY0IDI4Ljc3OGMtMS4xMDMuODgtNS41MjYgNC41My02Ljc1MiA3LjQ0MS0uNTA1IDEuMTk3LS4zNzYgMi4xNDkuNDg4IDIuMjMzIDEuOTYuMTk0IDQuMDEyLTMuODE4IDYuMjI4LTkuNTEyek0xNi4wMjggNS4zNTJjLS4wODcuMzMyLTEuMzE5IDMuODYtMi43MDEgNy43NDlsLS4yMDkuNTg2LS4yMS41ODktLjIxNS42MDRjNC42OTEtMS4xMjMgMTMuMDY0LTYuNTcgMTQuMDM1LTEwLjA4NS4xMi0uMTYxLjI5LS4yMi41NjYtLjAzNS40OTUuMzMuNjg2IDEuMTU1LjQ5NSAxLjkxOC0uNzY0IDMuMDM4LTYuNDE2IDcuMzQxLTExLjM3OSA5LjU1NC42MTIgMS42MzcgMi42ODIgNi4yNjcgNC4yMDYgOS4xMTEgMS42NjMgMy4xMTkgMy40MiA0LjU3NSA2LjE0NyA0LjczNyAxLjQ2LjA4NSAzLjAxNC0uNDQ3IDMuODkzLTEuMjJsLjE0OC0uMTQtLjAxMy4wM2MuMTk0LS4yMDQuNTExLjA3Ny4zNjYuMzIzYTYuNSA2LjUgMCAwIDEtNC45OTIgMi44NjdjLTYuMzQ1LjQyNy04Ljc3NC0zLjg3LTEzLjMwNC0xNC40OTQtLjM2Ni4xMjYtLjgwOS4yODgtMS4yNTUuNDUtLjA3NS4xODctMi4wNyA1LjY0Mi0yLjEzIDUuODIzLS45NDQgMi44Ny0xLjAwNSA0LjQ0Mi0uMzU4IDQuODk1LjE0NS4wOS4wNzQuMzMzLS4xNzguNDE0LTIuNTI3Ljc5Ni00Ljg1My0uNjk2LTMuNTU5LTQuNDQyIDEuMTYxLTMuMzE2IDUuNjktMTYuMTggNi45MTQtMTkuNjI2LjQyNy0xLjI5NC4xOTctMi4xMjUtLjQ5Mi0yLjMwNkM4LjUwNiAxLjc4Ljg3NyA4Ljc0OSAxLjk3MSAxNS4xODRjLjE5IDEuMTIuOTggMS43NDcgMS4zNzggMS42NjNhLjEzMy4xMzMgMCAwIDEgLjE1Ni4xNTkgMS41MDggMS41MDggMCAwIDEtMS44NDUgMS4wMzJDLjQ5IDE3Ljc4Mi4xMDcgMTYuNTI3LjA0MyAxNS44OC0uNjAxIDkuMjIgNi4xNDggMS4yMyAxMi4zODkuNThjMi4zNzgtLjI1IDQuNjEuOTYgMy42NCA0Ljc3MnptMjQuMDQgOS45MTMtLjA2LjIwNy0yLjgzIDguMTZjLS4zMDQuODUtLjEgMS43MzcuNTAxIDEuOTAyIDEuNzU3LjQ4MiA0LjAyOC0yLjE0NSA1LjEzMS00LjczM2E2Ny43OTQgNjcuNzk0IDAgMCAwIDEuNDc2LTMuODE1Yy41ODItMS42NDMgMS4xMDYtMy4xODMuNzgzLTMuOTA4LS4wNzUtLjE2OC4wNDUtLjI1Ni4yMjMtLjM1LjUwNS0uMjU1IDIuMjI2LS44MjUgMy4xNDEuMDY4LjY5NS42NzQuNjA5IDEuNzcxLS4wMyAzLjQzN2wtLjA5Ni4yNDIuMjItLjI3M2MyLjcwMy0zLjMgNC43OTItNC4yOTIgNi41NjMtMy41OTdsLjE0Ny4wNjJjMi4zODEgMS4wNzQgMS4xNDYgNS4yMTUtMi4xMTYgNS40OC0uMi4wMTctLjM1Ni0uMTI2LS4xNTgtLjQwNy4zOTUtLjYwNS4zNTYtMS45MDktLjc5Ni0yLjAyMi0xLjE1Mi0uMTEzLTIuODMgMS4yMDctNC4wMzggMi44NDQtMS4wODQgMS40NS0yLjIgMy45MTEtMy4zMjIgNy4yNzMtLjI3Mi44MTgtLjE0MyAxLjAxMi0uMTEgMS4wNjdhLjEuMSAwIDAgMSAwIC4wOTRjLS4xNDMuMjcyLS45NjUuNTk2LTEuNzYuNTk2LTEuNjI1LS4wMDctMi4yOTEtLjk0NS0xLjk2Ny0yLjQzNy0xLjg0OCAxLjc2NC0zLjcxMSAyLjYxNC01LjM1NSAyLjQ2NmEyLjUyNCAyLjUyNCAwIDAgMS0yLjIzNi0zLjEwM2MtMS40MjYgMS44MDktMy41NDIgMy4yNjgtNS42OTcgMy4wNjctMi4xNTUtLjItMy41LTEuNjY2LTIuODAyLTQuNzg4LjU5LTIuNTk4IDEuNTkyLTUuMjkgMi4yMDctNy4wMjcuNTE0LTEuNDU2LjYxOC0yLjQwNy4yOTQtMi43NS0uMTAzLS4xMTQuMDU1LS4yNS4xOTQtLjMyNCAxLjY5LS44ODYgNC4zOTQtLjMxNCAzLjYzIDIuMDktLjgwMiAyLjUyNy0yLjI1NSA2LjQ5LTIuNTUgNy40LS43MzcgMi4yODctLjI5IDMuNTIzLjc1NSAzLjU4IDEuMDQ1LjA2IDIuNDMtLjk2IDMuNDItMi41MDMgMS43Ni0yLjUyNCAyLjU4MS01LjY4NSAzLjM3Ny03Ljg4Mi4yMDQtLjU2LjUyNy0xLjg2Ni4xODUtMi4zNTItLjA5MS0uMTIzLjA2Ny0uMjU4LjI3NS0uMzcyIDEuNTM3LS44NDkgNC4yODUtLjY0IDMuNDAyIDIuNjA4eiIgZmlsbD0iIzVGMDA4MCIvPgogICAgPC9nPgo8L3N2Zz4K"
						alt="마켓컬리 로고" class="css-17mnrrx e1s3pt0j0">
					<button class="active css-j0ug0x ekdqe1a1"  onclick="location.href='index.jsp'">이츠타임</button>
					<button class=" css-1sia941 ekdqe1a0" style="visibility: hidden">삭제예정</button>
				</div>
				<!-- 검색창 부분 -->
				<div class="css-pqw0uk e1493ofl4">
					<div class="css-w444a2 e1493ofl1">
						<input id="gnb_search" placeholder="검색어를 입력해주세요" required=""
							class="css-11ntk83 e1493ofl3" value="">
						<button id="submit" aria-label="submit"
							class="css-ywxmlw e1493ofl0"></button>
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
						class="css-1xyu7j9 e17w4cfr2"><a href="product/productListAll.jsp">배송&픽업</a></span></li>
					<li class="css-59mmhh e17w4cfr4"><span
						class="css-1xyu7j9 e17w4cfr2"><a href="product/productListDelivery.jsp">배송</a></span></li>
					<li class="css-59mmhh e17w4cfr4"><span
						class="css-1xyu7j9 e17w4cfr2"><a href="product/productListPickup.jsp">픽업</a></span></li>
					<li class="css-59mmhh e17w4cfr4"><span
						class="css-1xyu7j9 e17w4cfr2"><a href="product/productListAll.jsp">이츠타임</a></span></li>
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
	$(document).ready(function() {
		$("#board").hover(function() {
			$(".css-1qolcqm .menu").show();
		}, function() {
			$(".css-1qolcqm .menu").hide();
		});
	});
</script>
</html>