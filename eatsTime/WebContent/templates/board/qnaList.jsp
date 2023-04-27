<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/product/productListAll.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/board/qnaList.css" />
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
	padding: 0;RR
}

.swal2-content {
	padding: 0;
}

.swal2-show {
	animation: none;
}
</style>
<title>이츠타임 - 1:1 문의</title>
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
				<a href="qnaList.jsp" class="css-196gwz9 e19l01ug3">
					<div class="css-rmee6s e19l01ug2">
						<span class="css-1sdidca e19l01ug1">도움이 필요하신가요?</span> <span
							class="css-rnnx2x e19l01ug0">1:1 문의하기</span>
					</div> <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19"
						viewBox="0 0 24 24">
						<defs>
							<path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657">
							</path>
						</defs>
						<g fill="none" fill-rule="evenodd">
							<g>
								<g>
									<g>
										<g
							transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
											<use stroke="#333" stroke-linecap="round" stroke-width="1.8"
							stroke-linejoin="round" transform="rotate(45 5.657 5.657)"
							xlink:href="#gfk9q0rhta">
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
				<ul class="css-1fttcpj e1cfowvj5 listqna">

				</ul>
				<!-- 페이지 앞/뒤로 넘기기 버튼 -->
				<div class="css-15jhycr e3tf63e0">
					<div class="css-sxxs1g eytury60">
      <!-- [S] 페이지 컨트롤러 -->
               <div class="css-rdz8z7 e82lnfz1">

                  <!-- 처음 페이지로 이동하기 -->
                  <a class="css-1d20dg7 e82lnfz0"
                     href="${pageContext.request.contextPath}/listOk.inquiryboard?page=1">
                     <img
                     src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAHUlEQVR42mNgAIPi/8X/kWkwA8SE0UQIMJAsCKMBBzk27fqtkcYAAAAASUVORK5CYII="
                     alt="처음 페이지로 이동하기 아이콘">
                  </a>

                  <!-- 이전 페이지로 이동하기 -->
                  <c:if test="${prev}">
                     <a class="css-1d20dg7 e82lnfz0"
                        href="${pageContext.request.contextPath}/listOk.inquiryboard?page=${startPage - 1}">
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGElEQVR42mNgAIPi/8X/4QwwE5PBQJADAAKSG3cyVhtXAAAAAElFTkSuQmCC"
                        alt="이전 페이지로 이동하기 아이콘">
                     </a>
                  </c:if>
                  <c:forEach var="i" begin="${startPage}" end="${endPage}">
                     <c:choose>
                        <c:when test="${i eq page}">
                           <a class="css-19yo1fh css-1d20dg7 e82lnfz0 page-list"><c:out
                                 value="${i}" /></a>
                        </c:when>
                        <c:otherwise>
                           <a
                              href="${pageContext.request.contextPath}/listOk.inquiryboard?page=${i}"
                              class="css-1d20dg7 e82lnfz0 page-list"><c:out value="${i}" /></a>
                        </c:otherwise>
                     </c:choose>
                  </c:forEach>

                  <!-- 다음 페이지로 이동하기 -->
                  <c:if test="${next}">
                     <a class="css-1d20dg7 e82lnfz0"
                        href="${pageContext.request.contextPath}/listOk.inquiryboard?page=${endPage + 1}">
                        <img
                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGUlEQVR42mMo/l/8nwECQEwCHEwGhAlRBgA2mht3SwgzrwAAAABJRU5ErkJggg=="
                        alt="다음 페이지로 이동하기 아이콘">
                     </a>
                  </c:if>

                  <!-- 마지막 페이지로 이동하기 -->
                  <a class="css-1d20dg7 e82lnfz0"
                     href="${pageContext.request.contextPath}/listOk.inquiryboard?page=${realEndPage}">
                     <img
                     src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAIElEQVR42mMo/l/8n4GBgQFGQ5kgDowmQZCwAMImhDkAb0k27Zcisn8AAAAASUVORK5CYII="
                     alt="마지막 페이지로 이동하기 아이콘">
                  </a>
               </div>
               <!-- [E] 페이지 컨트롤러 -->


					</div>
					<button
						onclick="location.href='${pageContext.request.contextPath}/templates/member/writeQuestion.jsp'"
						class="css-1ibxj4m e4nu7ef3" type="button" width="120" height="44"
						radius="3">
						<span class="css-ymwvow e4nu7ef1">문의하기</span>
					</button>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
	<!-- 모달창(정말 삭제하시겠습니까>)  -->
	<div id="modal1"
		class="swal2-container swal2-center swal2-backdrop-show"
		style="overflow-y: auto; display: none;">
		<!-- 모달박스 -->
		<div class="swal2-popup swal2-modal swal2-show" style="display: flex;">
			<div class="swal2-content">
				<div id="swal2-content" class="swal2-html-container"
					style="display: block;">

					<div class="popup-content css-15yaaju e1k5padi2">해당 글을
						삭제하시겠습니까?</div>
					<div class="popup-footer css-1ol9ch1 e1k5padi0">
						<button type="submit" class="css-1necch4 yesdeletion">확인</button>
						<button class="css-1necch4 canceldeletion">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 모달창(삭제 완료)  -->
	<div id="modal2"
		class="swal2-container swal2-center swal2-backdrop-show"
		style="overflow-y: auto; display: none;">
		<!-- 모달박스 -->
		<div class="swal2-popup swal2-modal swal2-show" style="display: flex;">
			<div class="swal2-content">
				<div id="swal2-content" class="swal2-html-container"
					style="display: block;">

					<div class="popup-content css-15yaaju e1k5padi2">삭제가 완료되었습니다.</div>
					<div class="popup-footer css-1ol9ch1 e1k5padi0">
						<button class="css-1necch4 deleteioncomplete">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	let boards = JSON.parse(`${boards}`);
	console.log(boards);
</script>
<script src="${pageContext.request.contextPath}/static/js/qnaList.js"></script>
</html>