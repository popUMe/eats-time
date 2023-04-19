<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/member/productUploadForm.css">
<title>컬리 - 마켓컬리/뷰티컬리</title>
</head>
<body>
	

	<jsp:include page="../header.jsp" />
	<div class="css-pculus">
		<div class="css-o5dw7d">상품 등록</div>
		<div class="css-mhmtvt">
			<div class="css-rb0i47">
				<span class="css-qq9ke6">*</span> 필수입력사항
			</div>
			<div class="css-y8aj3r">
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">상품 이미지<span class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">

								<label for="attach">

									<div class="css-u52dqk">
										<span class="css-ymwvow">상품 사진을 등록해주세요.</span>
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
					<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->



				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">상품명<span class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">
								<input data-testid="input-box" id="memberId" name="memberId"
									placeholder="상품명을 입력해주세요" type="text" required=""
									class="css-u52dqk" value="">
							</div>
						</div>
					</div>
					<!-- 						<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>


				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">판매 가격<span class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">
								<input type="text" id="price" name="price"
									placeholder="판매 가격을 입력해주세요" autocomplete="off"
									class="css-u52dqk" value="">
							</div>
						</div>
					</div>
					<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>

				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">판매 수량<span class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">
								<input type="text" id="sellcount" name="sellcount"
									placeholder="판매 가능한 수량을 입력해주세요" 
									autocomplete="off" class="css-u52dqk" value="">
							</div>
						</div>
					</div>
					<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">판매 및 발송지 주소<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">
								<input id="passwordConfirm"
									name="passwordConfirm" placeholder="판매할 주소를 입력해주세요"
									type="text" autocomplete="off" class="css-u52dqk" value="">
							</div>
						</div>
					</div>
					<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>

				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">판매 유형<span class="css-qq9ke6">*</span></label>
					</div>
					
					
					
		<div class="css-82a6rk">
			<div class="css-14wodj6">
		
			<label class="css-z9g6s0" for="delivery">
			<input id="delivery" name="pickup" type="radio"
			class="css-1pes2r6" value="DELIVERY">
				
			<span class="css-198i9ca" id="deliveryspan">
			<div class="css-1dahn5m" id="divdelivery"></div>
			</span>
				
			<span class="css-mgd87h">배송</span>
			</label>
		
		
			<label class="css-z9g6s0" for="pickup">
			<input id="pickup" name="pickup"
			type="radio" class="css-1pes2r6" value="">
			<span class="css-198i9ca" id="pickupspan">
			<div class="css-1dahn5m" id="divpickup"></div></span>
			<span class="css-mgd87h">픽업</span>
			</label>
				
				
		</div>
	</div>				
					
					
					
					
					
					<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>

				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">유통 기간<span class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">
								<!-- 							<form> -->
								<p>
									<input class="css-u52dqk" type="date" value="sysdate">
								</p>

								<!-- 	    					</form> -->

							</div>
						</div>
					</div>
					<!-- 					<div class="css-1w0ksfz e744wfw2"> -->
					<!-- 						<button class="css-ufulao e4nu7ef3" type="button" disabled=""> -->
					<!-- 							<span class="css-ymwvow e4nu7ef1">인증번호 받기</span> -->
					<!-- 						</button> -->
					<!-- 					</div> -->
				</div>

				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">제품정보<span class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-detailwrite">
								<input data-testid="input-box" id="password" name="password"
									placeholder="안내사항을 작성해주세요" type="password" autocomplete="off"
									class="productDetail" value="">
							</div>
						</div>
					</div>
					<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>


			</div>
			<div class="css-1eo0fey"></div>

			<div class="css-137ca2h">
				<button class="css-18m884r" type="submit" width="240" height="56"
					radius="3">
					<span class="css-ymwvow">등록하기</span>
				</button>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/productUploadForm.js"></script>


</html>