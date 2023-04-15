<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/board/writeQuestion.css" />
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
						<a class=" css-g4g0eu ecbxmj0">
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
						<a class="active css-g4g0eu ecbxmj0">
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
			<!-- 1:1 문의 게시글 작성 폼  -->
			<div class="css-185m8ch e1153ede0">
				<form>
					<div class="css-17bp14q e1vbjq4w3">
						<div class="css-mm5tap e1vbjq4w2">
							<label>
								유형
								<span class="css-hwfcu5 e1vbjq4w0">*</span>
							</label>
						</div>
						<div class="css-12l4j2c e1vbjq4w1">
							<div class="css-zjik7 epfrwk70">
								<div class="css-1a8mkrv e1u0xj870">
									<div>
										<div class="MuiFormControl-root css-tzsjye">
											<div class="MuiOutlinedInput-root MuiInputBase-root MuiInputBase-colorPrimary MuiInputBase-formControl jss2 css-eg1co4">
												<div class="MuiSelect-select MuiSelect-outlined MuiOutlinedInput-input MuiInputBase-input css-qiwgdb">문의유형을 선택해주세요</div>
												<input aria-hidden="true" tabindex="-1" class="MuiSelect-nativeInput css-1k3x8v3" value="">
												<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeMedium MuiSelect-icon MuiSelect-iconOutlined css-1636szt" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="ArrowDropDownIcon">
													<path d="M7 10l5 5 5-5z">
													</path>
												</svg>
												<fieldset aria-hidden="true" class="MuiOutlinedInput-notchedOutline css-igs3ac">
													<legend class="css-nnbavb">
														<span class="notranslate">
														​</span>
													</legend>
												</fieldset>
											</div>
										</div>
									</div>
								</div>
								<div class="css-1a8mkrv e1u0xj870">
									<div>
										<div class="MuiFormControl-root css-tzsjye">
											<div variant="outlined" class="MuiOutlinedInput-root MuiInputBase-root MuiInputBase-colorPrimary Mui-disabled MuiInputBase-formControl jss2 css-eg1co4">
												<div role="button" aria-disabled="true" aria-expanded="false" aria-haspopup="listbox" aria-label="Without label" class="MuiSelect-select MuiSelect-outlined Mui-disabled MuiOutlinedInput-input MuiInputBase-input Mui-disabled css-qiwgdb">상세유형을 선택해주세요</div>
												<input aria-hidden="true" tabindex="-1" disabled="" class="MuiSelect-nativeInput css-1k3x8v3" value="">
												<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeMedium MuiSelect-icon MuiSelect-iconOutlined Mui-disabled css-1636szt" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="ArrowDropDownIcon">
													<path d="M7 10l5 5 5-5z">
													</path>
												</svg>
												<fieldset aria-hidden="true" class="MuiOutlinedInput-notchedOutline css-igs3ac">
													<legend class="css-nnbavb">
														<span class="notranslate">​
														</span>
													</legend>
												</fieldset>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="css-17bp14q e1vbjq4w3">
						<div class="css-mm5tap e1vbjq4w2">
							<label for="inquiry-subject">
							제목
							<span class="css-hwfcu5 e1vbjq4w0">*</span>
							</label>
						</div>
						<div class="css-12l4j2c e1vbjq4w1">
							<div class="css-1waqr6j e1uzxhvi6">
								<div height="44" class="css-t7kbxx e1uzxhvi3">
									<input data-testid="input-box" id="inquiry-subject" name="subject" placeholder="제목을 입력해주세요" type="text" height="44" class="css-1quw3ub e1uzxhvi2" value="">
								</div>
							</div>
						</div>
					</div>
					<div class="css-rm6te4 e1fgvk594">
						<div class="css-17bp14q e1vbjq4w3">
							<div class="css-mm5tap e1vbjq4w2">
								<label for="inquiry-contents">
								내용
								<span class="css-hwfcu5 e1vbjq4w0">*</span>
								</label>
							</div>
							<!-- 내용을 작성할 곳 -->
							<div class="css-12l4j2c e1vbjq4w1">
								<div class="css-0 e1tjt2bn7">
									<div class="css-1gua357 e1tjt2bn5">
										<textarea id="inquiry-contents" inputmode="text" aria-label="textarea-message" name="contents" class="css-5etceh e1tjt2bn1"></textarea>
										<div class="placeholder css-1ofzfyp e1tjt2bn6">
											<div class="css-168e7y9 e1fgvk593">
												<strong class="css-c2iqrm e1fgvk592">1:1 문의 작성 전 확인해주세요</strong>
												<strong class="css-1sz9zst e1fgvk592">반품 / 환불</strong>
												<p class="css-1cdremq e1fgvk591">제품 하자 혹은 이상으로 반품(환불)이 필요한 경우 사진과 함께 구체적인 내용을 남겨주세요.</p>
												<strong class="css-1sz9zst e1fgvk592">주문취소</strong>
												<p class="css-1cdremq e1fgvk591">주문취소는 배송 단계별로 방법이 상이합니다.</p>
												<p class="css-1cdremq e1fgvk591">[주문완료] 상태일 경우에만 주문 취소 가능합니다.</p>
												<p class="css-1cdremq e1fgvk591">[마이페이지 &gt; 주문내역 상세페이지]에서 직접 취소하실 수 있습니다.</p>
												<p class="css-1cdremq e1fgvk591">생산이 시작된 [상품준비중] 이후에는 취소가 제한되는 점 고객님의 양해 부탁드립니다.</p>
												<p class="css-1cdremq e1fgvk591">[배송준비중] 이후에는 취소가 불가하니, 반품으로 진행해주세요. (상품에 따라 반품이 불가할 수 있습니다.)</p>
												<p class="css-1cdremq e1fgvk591">주문마감 시간에 임박할수록 취소 가능 시간이 짧아질 수 있습니다.</p>
												<p class="css-1cdremq e1fgvk591">비회원은 APP 또는 모바일 웹사이트에서 [마이컬리 &gt; 비회원 주문조회 페이지] 에서 취소가 가능합니다.</p>
												<p class="css-1cdremq e1fgvk591">일부 예약상품은 배송 3~4일 전에만 취소 가능합니다.</p>
												<p class="css-1bawe5n e1fgvk590">주문상품의 부분취소는 불가능합니다. 전체 주문 취소 후 다시 구매 해주세요.</p>
												<strong class="css-1sz9zst e1fgvk592">배송</strong>
												<p class="css-1cdremq e1fgvk591">주문 완료 후 배송 방법(샛별/택배)은 변경이 불가능합니다.</p>
												<p class="css-1cdremq e1fgvk591">배송일 배송시간 지정은 불가능합니다. (예약배송 포함)</p>
												<p class="css-1bawe5n e1fgvk590">전화번호, 이메일, 주소, 계좌번호 등의 상세 개인정보가 문의 내용에 저장되지 않도록 주의해 주시기 바랍니다.</p>
											</div>
										</div>
										<span class="content-length-counter css-dbwxb9 e1tjt2bn0">
											<span>
												<span class="css-14kcwq8 e1tjt2bn2">0자</span>
											</span>
											<span class="css-14kcwq8 e1tjt2bn3">
											/
											5000자
											</span>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="css-17bp14q e1vbjq4w3">
						<div class="css-mm5tap e1vbjq4w2">
							<label></label>
						</div>
						<div class="css-12l4j2c e1vbjq4w1">
							<div class="css-mlazth edd8l6o3">
								<div class="css-g8ewo8 e9bfpi41">
									<div class="css-175wokr e9bfpi40">
										<div class="css-0">
											<label for="photo-picker" class="css-0 e1l8vpkx2">
												<button type="button" class="css-j9ybaa e1l8vpkx0">
													<span class="css-113ip0v e1tcjz8t0"></span>
												</button>
												<input multiple="" type="file" accept="image/jpg, image/jpeg, image/png, image/bmp" class="css-eivff4 e1l8vpkx1">
											</label>
										</div>
									</div>
									<div class="css-sqqcql edd8l6o2">
										<div class="css-7n55a5 edd8l6o1">
											<span class="css-1xbds45 edd8l6o0"></span>
											30MB 이하의 이미지만 업로드 가능합니다.
										</div>
										<div class="css-7n55a5 edd8l6o1">
											<span class="css-1xbds45 edd8l6o0"></span>
											상품과 무관한 내용이거나 음란 및 불법적인 내용은 통보없이 삭제 될 수 있습니다.
										</div>
										<div class="css-7n55a5 edd8l6o1">
											<span class="class="css-1xbds45 edd8l6o0""></span>
											사진은 최대 8장까지 등록 가능합니다.
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="css-v3zc4x effwtd5">
						<div class="css-17bp14q e1vbjq4w3">
							<div class="css-mm5tap e1vbjq4w2">
								<label for="inquiryAllowsNotificationCheck" data-testid="label-text">답변 수신</label>
							</div>
							<div class="css-12l4j2c e1vbjq4w1">
								<div class="css-1wnowod effwtd4">
									<div class="css-n7yl5s effwtd3">
										<div class="css-bg7ww1 e1uzxhvi6">
											<div height="44" class="css-t7kbxx e1uzxhvi3">
												<input data-testid="input-box" id="inquiryAllowsNotificationCheck" disabled="" type="text" height="44" class="css-1quw3ub e1uzxhvi2" value="010-5128-****">
											</div>
										</div>
									</div>
									<div class="css-1s6b9a2 effwtd0">
										<label class="css-izsmfv e1dcessg3" for="InputAllowsNotificationCheck">
											<input name="allowsNotification" id="InputAllowsNotificationCheck" type="checkbox" class="css-agvwxo e1dcessg2" checked="">
											<div class="css-79hxr7 e1dcessg1">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080">
													</path>
													<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
													</path>
												</svg>
											</div>
											<span>문자/알림톡 받기</span>
										</label>
										<a class="css-1ybcx6v effwtd1">개인정보 수정</a>
									</div>
								</div>
								<div class="css-3ky9df effwtd2">
									<span>※ 야간에도 답변 완료 알림톡이 발송 되는 점 참고 부탁드립니다.</span>
								</div>
							</div>
						</div>
					</div>
					<div class="css-1spu0j4 ebvrvv11">
						<button type="submit" class="css-114fr9p ebvrvv10">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>