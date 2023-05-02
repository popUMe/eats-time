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
	href="${pageContext.request.contextPath}/static/css/member/productUploadForm.css">
<title>이츠타임 - 판매 등록</title>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="css-pculus">
		<div class="css-o5dw7d">판매 등록</div>
		<div class="css-mhmtvt">
			<div class="css-rb0i47">
				<span class="css-qq9ke6">*</span> 필수입력사항
			</div>

			<!-- inputs -->
			<form action="${pageContext.request.contextPath}/saleRegisterOk.sale">
				<div class="css-y8aj3r">
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">판매 제목<span class="css-qq9ke6">*</span></label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<input data-testid="input-box" id="saleTitle" name="saleTitle"
										placeholder="판매 제목을 입력해주세요" type="text" required=""
										class="css-u52dqk " value="">
								</div>
							</div>
						</div>
					</div>

					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">상품 설명<span class="css-qq9ke6">*</span></label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<input data-testid="input-box" id="saleContent" name="saleContent"
										placeholder="상품에 대한 간략한 설명을 입력해주세요" type="text" required=""
										class="css-u52dqk" value="">
								</div>
							</div>
						</div>
					</div>

					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">상품명</label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<input data-testid="input-box"
										placeholder="상품명을 입력해주세요" type="text" required=""
										class="css-u52dqk" value="${productName}" readonly>
								</div>
							</div>
						</div>
					</div>

					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">판매 가격</label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<input type="text" 
										placeholder="판매 가격을 입력해주세요" autocomplete="off"
										class="css-u52dqk" value="${productPrice}" readonly>
								</div>
							</div>
						</div>
						<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
					</div>

					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">판매 수량</label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<input type="text"
										placeholder="판매 가능한 수량을 입력해주세요" autocomplete="off"
										class="css-u52dqk" value="${productStock}" readonly>
								</div>
							</div>
						</div>
						<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
					</div>

					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">유통 기간</label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<!-- 							<form> -->
									<p>
										<input class="css-u52dqk" type="text" value="${productExpirationDate}" readonly>
									</p>

									<!-- 	    					</form> -->

								</div>
							</div>
						</div>
					</div>

					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">판매 유형</label>
						</div>

						<div class="css-82a6rk">
							<div class="css-14wodj6"
								style="display: flex; justify-content: flex-start;">

								<label class="css-z9g6s0" for="delivery" style="padding-right: 40px;"> 
									<input type="radio" class="css-1pes2r6" value="" readonly>
									 <span class="css-198i9ca" id="deliveryspan">
									 	<div class="css-1dahn5m" id="divdelivery"></div>
									</span> 
									<span class="css-mgd87h">배송</span>
								</label>
								<label class="css-z9g6s0" for="pickup">
									<input type="radio" class="css-1pes2r6" value="" readonly> 
									<span class="css-198i9ca" id="pickupspan">
										<div class="css-1dahn5m" id="divpickup"></div>
									</span> 
									<span class="css-mgd87h">픽업</span>
								</label>
							</div>
						</div>
					</div>
				</div>

				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">배송&픽업주소</label>
					</div>
					<div style="display: flex; width: 77%;">
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<input style="width: 90%"
										placeholder="배송이나 픽업 관련 주소를 입력해주세요" type="text"
										autocomplete="off" class="css-u52dqk" value="${productAddress}" readonly>
								</div>
							</div>
						</div>

						<button class="css-ufulao e4nu7ef3" type="button"
							id="addressSearch" style="visibility: hidden;">
							<span class="css-ymwvow e4nu7ef1">검색</span>
						</button>
					</div>
				</div>

				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">상세주소</label>
					</div>
					<div style="display: flex; width: 77%;">
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<input style="width: 90%" placeholder="상세주소를 입력해주세요" type="text"
										autocomplete="off" class="css-u52dqk" value="${productAddressDetail}" readonly>
								</div>
							</div>
						</div>

						<button class="css-ufulao e4nu7ef3" type="button" id="checkEmail"
							style="visibility: hidden;">
							<span class="css-ymwvow e4nu7ef1">검색</span>
						</button>
					</div>
				</div>

				<div class="css-1pjgd36" style="display: none">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">상품 이미지<span class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk" >
						<div class="css-jmalg">
							<div class="css-176lya2">

								<label for="attach">

									<div class="css-u52dqk">
										<span class="css-ymwvow">상품 사진을 등록해주세요</span>
										<p class="css-imagerule">* 이미지 규격 : 123x123</p>
									</div>

								</label> <input type="file" id="attach" style="display: none;">

								<div class="image">
									<div class="cancel" style="display: none";>X</div>
									<!--이미지를 없애는 X 버튼-->
								</div>

							</div>
						</div>
					</div>
				</div>

				<div class="css-1eo0fey"></div>

				<div class="css-137ca2h">
					<button class="css-18m884r" type="submit" width="240" height="56"
						radius="3">
						<span class="css-ymwvow">등록하기</span>
					</button>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	let productName = `${productName}`;
	let productCategory = `${productCategory}`;
</script>
<script src="/static/js/sellingForm.js"></script>
</html>