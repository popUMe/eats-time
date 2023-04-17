<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/productUploadForm.css">
<title>컬리 - 마켓컬리/뷰티컬리</title>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="css-pculus e1ovi4141">
		<div class="css-o5dw7d e1ovi4140">상품 등록</div>
		<div class="css-mhmtvt e15so55l1">
			<div class="css-rb0i47 e1yyjjij1">
				<span class="css-qq9ke6 e1yyjjij0">*</span> 필수입력사항
			</div>
			<div class="css-y8aj3r eo6ykj40">
			<div class="css-1pjgd36 e744wfw6">
					<div class="css-1y8737n e744wfw5">
						<label class="css-1obgjqh e744wfw4">상품 이미지<span
							class="css-qq9ke6 e744wfw0">*</span></label>
					</div>
					<div class="css-82a6rk e744wfw3">
						<div class="css-jmalg e1uzxhvi6">
							<div class="css-176lya2 e1uzxhvi3">
								<button class="css-u52dqk e1uzxhvi2" type="button">
								<span class="css-ymwvow e4nu7ef1">상품 사진을 등록해주세요.</span>
								<p class="css-imagerule"> * 이미지 규격 : 123x123 </p>
								</button>
							</div>
						</div>
					</div>
<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->


						
				</div>
				<div class="css-1pjgd36 e744wfw6">
					<div class="css-1y8737n e744wfw5">
						<label class="css-1obgjqh e744wfw4">상품명<span
							class="css-qq9ke6 e744wfw0">*</span></label>
					</div>
					<div class="css-82a6rk e744wfw3">
						<div class="css-jmalg e1uzxhvi6">
							<div class="css-176lya2 e1uzxhvi3">
								<input data-testid="input-box" id="memberId" name="memberId"
									placeholder="상품명을 입력해주세요" type="text" required=""
									class="css-u52dqk e1uzxhvi2" value="">
							</div>
						</div>
					</div>
<!-- 						<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>
				
				
						<div class="css-1pjgd36 e744wfw6">
					<div class="css-1y8737n e744wfw5">
						<label class="css-1obgjqh e744wfw4">판매 가격<span
							class="css-qq9ke6 e744wfw0">*</span></label>
					</div>
					<div class="css-82a6rk e744wfw3">
						<div class="css-jmalg e1uzxhvi6">
							<div class="css-176lya2 e1uzxhvi3">
								<input data-testid="input-box" id="password" name="password"
									placeholder="판매 가격을 입력해주세요" type="password" autocomplete="off"
									class="css-u52dqk e1uzxhvi2" value="">
							</div>
						</div>
					</div>
<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>
				
				<div class="css-1pjgd36 e744wfw6">
					<div class="css-1y8737n e744wfw5">
						<label class="css-1obgjqh e744wfw4">판매 수량<span
							class="css-qq9ke6 e744wfw0">*</span></label>
					</div>
					<div class="css-82a6rk e744wfw3">
						<div class="css-jmalg e1uzxhvi6">
							<div class="css-176lya2 e1uzxhvi3">
								<input data-testid="input-box" id="password" name="password"
									placeholder="판매 가능한 수량을 입력해주세요" type="password" autocomplete="off"
									class="css-u52dqk e1uzxhvi2" value="">
							</div>
						</div>
					</div>
<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>
				<div class="css-1pjgd36 e744wfw6">
					<div class="css-1y8737n e744wfw5">
						<label class="css-1obgjqh e744wfw4">판매 및 발송지 주소<span
							class="css-qq9ke6 e744wfw0">*</span></label>
					</div>
					<div class="css-82a6rk e744wfw3">
						<div class="css-jmalg e1uzxhvi6">
							<div class="css-176lya2 e1uzxhvi3">
								<input data-testid="input-box" id="passwordConfirm"
									name="passwordConfirm" placeholder="판매할 주소를 입력해주세요"
									type="password" autocomplete="off" class="css-u52dqk e1uzxhvi2"
									value="">
							</div>
						</div>
					</div>
<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>
				
				<div class="css-1pjgd36 e744wfw6">
					<div class="css-1y8737n e744wfw5">
						<label class="css-1obgjqh e744wfw4">판매 유형<span
							class="css-qq9ke6 e744wfw0">*</span></label></label>
					</div>
					<div class="css-82a6rk e744wfw3">
						<div class="css-14wodj6 es1pbny0">

								<label
								class="css-z9g6s0 et8nqc33" for="delivery"><input
								id="delivery" name="how"
								type="radio" class="css-1pes2r6 et8nqc32" value="delivery"><span
								class="css-198i9ca e2sqze61"><div
										class="css-1dahn5m e2sqze60"></div></span><span
								 class="css-mgd87h et8nqc31">배송</span></label><label
								class="css-z9g6s0 et8nqc33" for="pickup"><input
								 id="pickup
								 " name="how"
								type="radio" class="css-1pes2r6 et8nqc32" value="pickup"
								checked=""><span class="css-5xw1m2 e2sqze61"><div
										class="css-1vic0rk e2sqze60"></div></span><span
								 class="css-mgd87h et8nqc31">픽업</span></label>
						</div>
					</div>
<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>
				
				<div class="css-1pjgd36 e744wfw6">
					<div class="css-1y8737n e744wfw5">
						<label class="css-1obgjqh e744wfw4">유통 기간<span
							class="css-qq9ke6 e744wfw0">*</span></label>
					</div>
					<div class="css-82a6rk e744wfw3">
						<div class="css-jmalg e1uzxhvi6">
							<div class="css-176lya2 e1uzxhvi3">
<!-- 							<form> -->
      						<p><input class="css-u52dqk e1uzxhvi2" type="date" value="sysdate"></p>
     						
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
		
				<div class="css-1pjgd36 e744wfw6">
					<div class="css-1y8737n e744wfw5">
						<label class="css-1obgjqh e744wfw4">제품정보<span
							class="css-qq9ke6 e744wfw0">*</span></label>
					</div>
					<div class="css-82a6rk e744wfw3">
						<div class="css-jmalg e1uzxhvi6">
							<div class="css-detailwrite e1uzxhvi3">
								<input data-testid="input-box" id="password" name="password"
									placeholder="안내사항을 작성해주세요" type="password" autocomplete="off"
									class="productDetail e1uzxhvi2" value="">
							</div>
						</div>
					</div>
<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>
			
				
			</div>
			<div class="css-1eo0fey e1j7jtti0"></div>

			<div class="css-137ca2h e1utgeno0">
				<button class="css-18m884r e4nu7ef3" type="submit" width="240"
					height="56" radius="3">
					<span class="css-ymwvow e4nu7ef1">등록하기</span>
				</button>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>

    const $radioPUD = $(".css-1pes2r6"); //(전체동의 제외) 나머지 체크박스 가져오기
    $radioPUD.on("click", function(){
        $radioPUD.prop("checked", true);
        $radioPUD.css("background-color", "#5f0080");
    }); //전체 동의 누르면, 모든 항목을 check상대로 바꾸기
</script>
</html>