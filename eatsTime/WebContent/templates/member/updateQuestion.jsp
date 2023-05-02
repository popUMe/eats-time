<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon"
	href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/all.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/member/writeQuestion.css" />
<title>이츠타임 - 1:1 문의 수정</title>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<!-- 페이지의 메인 부분 -->
	<div class="css-2b29tl">
		<!-- 좌측 고객센터 메뉴창 및 게시글 부분 -->
		<div class="css-luwwab eug5r811">
			<!-- 좌측 고객센터 메뉴창 -->
			<div class="css-833hqy ecbxmj3">
				<div class="css-1v4whg ecbxmj2">마이이츠</div>
				<!-- 메뉴창 -->
				<ul class="css-1x9bshx ecbxmj1">
					<li><a
						href="${pageContext.request.contextPath}/templates/product/productListAll.jsp"
						class=" css-g4g0eu ecbxmj0"> 상품목록 <svg
								xmlns="http://www.w3.org/2000/svg" width="19" height="19"
								viewBox="0 0 24 24">                  
                     </svg>
					</a></li>
					<li><a
						href="${pageContext.request.contextPath}/templates/member/seller_list.jsp"
						class=" css-g4g0eu ecbxmj0"> 판매목록 <svg
								xmlns="http://www.w3.org/2000/svg" width="19" height="19"
								viewBox="0 0 24 24">                  
                     </svg>
					</a></li>
					<li><a
						href="${pageContext.request.contextPath}/templates/member/editPersonal.jsp"
						class="css-g4g0eu ecbxmj0"> 개인정보 수정 <svg
								xmlns="http://www.w3.org/2000/svg" width="19" height="19"
								viewBox="0 0 24 24">                  
                     </svg>
					</a></li>
				</ul>
				<!-- 1:1 문의하기 -->
				<a
					href="${pageContext.request.contextPath}/templates/board/qnaList.jsp"
					class="css-196gwz9 e19l01ug3">
					<div class="css-rmee6s e19l01ug2">
						<span class="css-1sdidca e19l01ug1">도움이 필요하신가요?</span> <span
							class="css-rnnx2x e19l01ug0">1:1 문의하기</span>
					</div> <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19"
						viewBox="0 0 24 24">
                  <defs>
                     <path id="gfk9q0rhta"
							d="M1.657 1.657L9.657 1.657 9.657 9.657">
                     </path>
                  </defs>
                  <g fill="none" fill-rule="evenodd">
                     <g>
                        <g>
                           <g>
                              <g
							transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                 <use stroke="#333"
							stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round"
							transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta">
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
				<!-- 1:1 문의 게시글 작성 폼  -->
				<div class="css-185m8ch e1153ede0">


					<form action="${pageContext.request.contextPath}/updateOk.inquiryboard?inqbId=${boards.inqbId}"
						id="formtag" name="writeForm" method="post" >
						<input type="hidden" name="inqbId">
						<div class="css-17bp14q e1vbjq4w3">
							<div class="css-mm5tap e1vbjq4w2">
								<label for="inquiry-subject"> 제목 <span
									class="css-hwfcu5 e1vbjq4w0">*</span>
								</label>
							</div>
							<div class="css-12l4j2c e1vbjq4w1">
								<div class="css-1waqr6j e1uzxhvi6">
									<div height="44" class="css-t7kbxx e1uzxhvi3">
										<input data-testid="input-box" id="inquiry-subject"
											name="inqbTitle" placeholder="제목을 입력해주세요" type="text"
											height="44" class="css-1quw3ub e1uzxhvi2" autocomplete="off" value="${boards.inqbTitle}">
											
									</div>
								</div>
							</div>
						</div>
						<div class="css-rm6te4 e1fgvk594">
							<div class="css-17bp14q e1vbjq4w3">
								<div class="css-mm5tap e1vbjq4w2">
									<label for="inquiry-contents"> 내용 <span
										class="css-hwfcu5 e1vbjq4w0">*</span>
									</label>
								</div>
								<!-- 내용을 작성할 곳 -->
								
								<div class="css-12l4j2c e1vbjq4w1">
									<div class="css-0 e1tjt2bn7">
										<div class="css-1gua357 e1tjt2bn5">
											<textarea id="inquiry-contents" inputmode="text"
												aria-label="textarea-message" name="inqbContent"
												class="css-5etceh e1tjt2bn1" maxlength="5000"
												>${boards.inqbContent}</textarea>
										
											<span class="content-length-counter css-dbwxb9 e1tjt2bn0">
												<span> <span class="css-14kcwq8 e1tjt2bn2">0자</span>
											</span> <span class="css-14kcwq8 e1tjt2bn3"> / 5000자 </span>
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="css-1spu0j4 ebvrvv11">
							<button disabled="disabled" class="css-13kn1it ebvrvv10">수정</button>
						</div>
					
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
	<!-- 모달창  -->
	<div class="swal2-container swal2-center swal2-backdrop-show"
		style="overflow-y: auto; display: none;">
		<!-- 모달박스 -->
		<div class="swal2-popup swal2-modal swal2-show" style="display: flex;">
			<div class="swal2-content">
				<div id="swal2-content" class="swal2-html-container"
					style="display: block;">
					<style>
.swal2-html-container {
	padding: 0;
}

.swal2-container {
	padding: 0 24px;
}

.swal2-popup {
	max-width: 360px;
	border-radius: 12px;
	padding: 0;
}

.swal2-content {
	padding: 0;
}

.swal2-show {
	animation: none;
}
</style>
					<div class="popup-content css-15yaaju e1k5padi2">1:1 문의가
						정상적으로 수정되었습니다.</div>
					<div class="popup-footer css-1ol9ch1 e1k5padi0">
						<button onclick="document.getElementById('formtag').submit();" 
							class="css-1necch4 e1k5padi1">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	
</script>
<script
	src="${pageContext.request.contextPath}/static/js/writeQuestion.js"></script>
</html>