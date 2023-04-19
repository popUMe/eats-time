<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/board/noticeList.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css" />
<title>이츠타임 - 공지사항 목록</title>
</head>
<body>
<jsp:include page="../header.jsp" />
<!-- 페이지의 메인 부분 -->
	<div class="css-2b29tl">
	<!-- 좌측 고객센터 메뉴창 및 게시글 부분 -->
		<div class="css-luwwab eug5r811">
		<!-- 좌측 고객센터 메뉴창 -->
			<div class="css-833hqy ecbxmj3">
				
				<!-- 1:1 문의하기 -->
				<a href="qnaList.jsp" class="css-196gwz9 e19l01ug3">
					<div class="css-rmee6s e19l01ug2">
						<span class="css-1sdidca e19l01ug1">도움이 필요하신가요?</span>
						<span class="css-rnnx2x e19l01ug0">1:1 문의하기</span>
					</div>	
					<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
						<defs>
							<path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657">
							</path>
						</defs>
						<g fill="none" fill-rule="evenodd">
							<g>
								<g>
									<g>
										<g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
											<use stroke="#333" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta">
											</use>
										</g>
									</g>
								</g>
							</g>
						</g>
					</svg>
				</a>
			</div>
				<!-- 게시판 부분 -->
		<div class="css-171zbec eug5r8l0">
		<!-- 게시판 상단부 '공지사항' -->
			<div class="css-j0lifa ed9qr673">
				<div class="css-fhxb3m ed9qr672">
					<h2 class="css-1268zpe ed9qr671">공지사항</h2>
					<span class="css-a3vgo2 ed9qr670">이츠타임의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span>
				</div>
			</div>
		<!-- 게시글 칼럼 구분 -->
			<div class="css-e23nfx e16adls21">
				<div width="50" class="css-mbsaqp e16adls20">번호</div>
				<div class="css-1ym8aqm e16adls20">제목</div>
				<div width="100" class="css-16tcewl e16adls20">작성자</div>
				<div width="100" class="css-16tcewl e16adls20">작성일</div>
			</div>
		<!-- 게시글 목록 -->
			<ul class="css-1fttcpj e1cfowvj5">
				<li>
					<a href="notice.jsp">
						<div class="css-14yglsw e1cfowvj4">
							<div class="css-3o6rrk e1cfowvj2">공지</div>
							<div class="css-fzefrb e1cfowvj2">[안내] 샛별배송 서비스 확장 안내(2023.04.01~)</div>
							<div class="css-3d2kks e1cfowvj2">이츠타임</div>
							<div class="css-b1hszl e1cfowvj2">2023.04.14</div>
						</div>
					</a>
				</li>
			</ul>
		<!-- 페이지 앞/뒤로 넘기기 버튼 -->
			<div class="css-1kbzkwh e14yho7m0">
				<div class="css-sxxs1g eytury60">
					<button type="button" class="css-rzcdhr e1hbwyso0">
						<div class="css-7qb0sc e1ilyb3p0">이전</div>
					</button>
					<button type="button" class="css-1jwilit e1pk9060">
						<div class="css-7qb0sc e1ilyb3p0">다음</div>
					</button>
				</div>
			</div>
		</div>
		</div>		
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>