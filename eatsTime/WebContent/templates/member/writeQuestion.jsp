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
												<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeMedium MuiSelect-icon MuiSelect-iconOutlined MuiSelect-iconOpen css-1yhq19e" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="ArrowDropDownIcon">
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
					<div class="css-17bp14q e1vbjq4w3"></div>
					<div class="css-rm6te4 e1fgvk594"></div>
					<div class="css-17bp14q e1vbjq4w3"></div>
					<div class="css-v3zc4x effwtd5"></div>
					<div class="css-1spu0j4 ebvrvv11"></div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>