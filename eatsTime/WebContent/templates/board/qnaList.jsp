<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/board/qnaList.css" />
<title>Insert title here</title>
</head>
<body>
<!-- 페이지의 메인 부분 -->
	<div class="css-2b29tl">
		<!-- 좌측 고객센터 메뉴창 및 게시글 부분 -->
		<div class="css-luwwab eug5r811">
				<!-- 좌측 고객센터 메뉴창 -->
			<div class="css-833hqy ecbxmj3">
				<div class="css-1v4whg ecbxmj2">고객센터</div>
				<!-- 메뉴창 -->
				<ul class="css-1x9bshx ecbxmj1">
					<li>
						<a href="noticeList.jsp" class=" css-g4g0eu ecbxmj0">
							공지사항
							<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">						
							</svg>
						</a>
					</li>
					<li>
						<a class=" css-g4g0eu ecbxmj0">
							자주하는 질문
							<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">						
							</svg>
						</a>
					</li>
					<li>
						<a href="qnaList.jsp" class="active css-g4g0eu ecbxmj0">
							1:1 문의
							<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">						
							</svg>
						</a>
					</li>
					<li>
						<a class=" css-g4g0eu ecbxmj0">
							대량주문 문의
							<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">						
							</svg>
						</a>
					</li>
				</ul>
				<!-- 1:1 문의하기 -->
				<a href="" class="css-196gwz9 e19l01ug3">
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
		<!-- 게시판 상단부 '1:1 문의' -->
			<div class="css-j0lifa ed9qr673">
				<div class="css-fhxb3m ed9qr672">
					<h2 class="css-1268zpe ed9qr671">1:1 문의</h2>
				</div>
			</div>
		<!-- 게시글 칼럼 구분 -->
			<div class="css-e23nfx e16adls21">
				<div class="css-1ym8aqm e16adls20">제목</div>
				<div width="100" class="css-16tcewl e16adls20">작성일</div>
				<div width="100" class="css-16tcewl e16adls20">답변상태</div>
			</div>
		<!-- 게시글 목록 -->
			<ul class="css-1fttcpj e1cfowvj5">
				<li class="css-e0dnmk e1cfowvj3">
					<div class="css-nfcc9b e1cfowvj4">
						<div class="css-wqw6mu e1cfowvj2">
							<div class="css-4l2co e1vd1n2i2">s</div>
						</div>
						<div class="css-8e1vc1 e1cfowvj2">
							<span class="css-14kcwq8 e1vd1n2i1">2023.04.15</span>
						</div>
						<div class="css-8e1vc1 e1cfowvj2">
							<span color="#999" class="css-14kcwq8 e1hz5ei00">답변대기</span>
						</div>
					</div>
				</li>
				<!-- Q&A 내용 -->
				<li class="css-d3v9zr e1cfowvj0" style="opacity: 1; height: auto;">
					<div class="css-br5cai e1vd1n2i0">
						<div class="css-193iudv e94cdlt1">
							<span class="css-16ts9vc e94cdlt0">기타문의</span>
							<span class="css-a5dfz6 ecg7plp0"></span>
							<span class="css-16ts9vc e94cdlt0">기타(직접입력)</span>
						</div>
						<div class="css-zjik7 e82q4qc4">
							<span class="css-1ylw081 e1kayg9i0"></span>
							<div class="css-145c1ga e82q4qc3">
								<span type="QUESTION" css="css-190bjnp e82q4qc2">s</span>
								<br>
								<div class="css-1kl96ir ewad2cu1"></div>
							</div>
						</div>			
					</div>
				</li>			
				<li class="css-e0dnmk e1cfowvj3">
					<div class="css-nfcc9b e1cfowvj4">
						<div class="css-wqw6mu e1cfowvj2">
							<div class="css-4l2co e1vd1n2i2">s</div>
						</div>
						<div class="css-8e1vc1 e1cfowvj2">
							<span class="css-14kcwq8 e1vd1n2i1">2023.04.13</span>
						</div>
						<div class="css-8e1vc1 e1cfowvj2">
							<span color="#5f0080" class="css-1kxzrwz e1hz5ei00">답변완료</span>
						</div>
					</div>
				</li>
				<li class="css-d3v9zr e1cfowvj0" style="opacity: 1; height: auto;">
					<div class="css-br5cai e1vd1n2i0">
						<div class="css-193iudv e94cdlt1">
							<span class="css-16ts9vc e94cdlt0">기타문의</span>
							<span class="css-a5dfz6 ecg7plp0"></span>
							<span class="css-16ts9vc e94cdlt0">기타(직접입력)</span>
						</div>
						<div class="css-zjik7 e82q4qc4">
							<span class="css-1ylw081 e1kayg9i0"></span>
							<div class="css-145c1ga e82q4qc3">
								<span type="QUESTION" css="css-190bjnp e82q4qc2">s</span>
								<br>
								<div class="css-1kl96ir ewad2cu1"></div>
							</div>
						</div>
						<div class="css-1tsgnig e1vtrp070">
							<div class="css-b41fnw etpoi034">
								<div class="css-1i2xt0r etpoi030">
									<span class="css-1non6l6 ey0f1wv0"></span>
								</div>
								<div class="css-wm215i etpoi033">
									<span type="ANSWER" class="css-kfh61x etpoi032">안녕하세요, 고객님</span>
									<br>
									<span type="ANSWER" class="css-kfh61x etpoi032">구체적인 내용을 작성해주세요.</span>
									<br>
									<span type="ANSWER" class="css-kfh61x etpoi032">감사합니다.</span>
									<div class="css-iqoq9n e1b9s61w0"></div>
									<div class="css-1kna94k etpoi031">2023.04.14</div>
								</div>
							</div>
						</div>
					</div>
				</li>
			</ul>
		<!-- 페이지 앞/뒤로 넘기기 버튼 -->
			<div class="css-15jhycr e3tf63e0">
				<div class="css-sxxs1g eytury60">
					<button type="button" class="css-rzcdhr e1hbwyso0">
						<div class="css-7qb0sc e1ilyb3p0">이전</div>
					</button>
					<button type="button" class="css-1jwilit e1pk9060">
						<div class="css-7qb0sc e1ilyb3p0">다음</div>
					</button>
				</div>
				<button onclick="location.href='${pageContext.request.contextPath}/templates/member/writeQuestion.jsp'" class="css-1ibxj4m e4nu7ef3" type="button" width="120" height="44" radius="3">
					<span class="css-ymwvow e4nu7ef1">문의하기</span>
				</button>
			</div>
		</div>			
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/qnaList.js"></script>
</html>