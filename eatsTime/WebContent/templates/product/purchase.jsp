<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<title>이츠타임 - 결제</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/product/purchase.css" />
</head>
<body>
	<jsp:include page="../header.jsp" />
	<!-- 주문 시작 부분 -->
	<div class="css-1ykiyus e146m4rf2">
		<!-- 주문 전체 부분 -->
		<div class="css-1uom1od e146m4rf0">
			<h2 class="css-10owlr e146m4rf1">주문서</h2>
			<!-- 주문서 부분 제외한 전체 부분 -->
			<div class="css-ixlb9s epvroj94">
				<!-- 주문 상품 -->
				<div class="css-zo1i6f edbbr7c2">
					<h3 class="css-1ddzp0m edbbr7c1">주문 상품</h3>
					<button class="css-lvqq7y e17cst861">
						<img
							src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzAiIGhlaWdodD0iMzAiIHZpZXdCb3g9IjAgMCAzMCAzMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8ZGVmcz4KICAgICAgICA8cGF0aCBpZD0iN2EwMnFxZzNqYSIgZD0iTTExIDEyaDl2OSIvPgogICAgPC9kZWZzPgogICAgPGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8cGF0aCBkPSJNMCAwaDMwdjMwSDB6Ii8+CiAgICAgICAgPHVzZSBzdHJva2U9IiMzMzMiIHN0cm9rZS13aWR0aD0iMiIgc3Ryb2tlLWxpbmVjYXA9InNxdWFyZSIgdHJhbnNmb3JtPSJyb3RhdGUoLTQ1IDE1LjUgMTYuNSkiIHhsaW5rOmhyZWY9IiM3YTAycXFnM2phIi8+CiAgICA8L2c+Cjwvc3ZnPgo="
							alt="펼치기" class="css-jusoug e17cst860">
					</button>
				</div>
				<!-- 상품 내용 부분 -->
				<!-- 				<div class="css-r6muhy e19uchq31">[Kurly's] 데일리 물티슈(100매 X
					10팩) 상품을 주문합니다.</div> -->
				<!-- 상품 내용 부분 -->
				<div class="css-bd9p1l e17a7yib9">
					<img
						src="https://product-image.kurly.com/product/image/06d85013-b2b3-4b13-bee3-b567589e1737.jpeg"
						alt="[Kurly's] 데일리 물티슈(100매 X 10팩)" class="css-1ixzt3f e17a7yib8">
					<!-- 상품 내용 부분 내용 -->
					<span class="css-10nl60h e17a7yib7"><span
						class="css-9j7jhp e17a7yib6"> 데일리 물티슈(100매 X 10팩)</span></span>
					<!-- 상품 내용 부분 유통기한 -->
					<span class="css-1efb5i1 e17a7yib4">유통기한 2023.04.19</span>
					<!-- 상품 내용 부분 수량 -->
					<span class="css-1efb5i1 e17a7yib4">1개</span>
					<!-- 상품 내용 부분 가겨 -->
					<span class="css-1j31gob e17a7yib3"><span
						class="css-jnogx7 e17a7yib0">11,900원</span></span>
				</div>
				<!-- 주문자 정보 부분 -->
				<div class="css-12aowi2 edbbr7c2">
					<h3 class="css-1ddzp0m edbbr7c1">주문자 정보</h3>
				</div>
				<!-- 주문자 정보 부분 내용 -->
				<div id="kurly-orderer-info" class="css-shoa2s e1vfdada3">
					<!-- 주문자 정보 부분 보내는 분 -->
					<div class="css-yazyg9 e150alo82">
						<span class="css-ln1csn e150alo81">보내는 분</span>
						<div class="css-82a6rk e150alo80">
							<div class="css-t6o2y8 e1vfdada2">김인진</div>
						</div>
					</div>
					<!-- 주문자 정보 부분 휴대폰 -->
					<div class="css-yazyg9 e150alo82">
						<span class="css-ln1csn e150alo81">휴대폰</span>
						<div class="css-82a6rk e150alo80">
							<div class="css-t6o2y8 e1vfdada2">010-8894-3132</div>
						</div>
					</div>
					<!-- 주문자 정보 부분 이메일 -->
					<div class="css-yazyg9 e150alo82">
						<span class="css-ln1csn e150alo81">이메일</span>
						<div class="css-82a6rk e150alo80">
							injin0318@gmail.com
							<div class="css-1r0yqr6 e1vfdada1">
								<!-- <p class="css-i7dt79 e1vfdada0">이메일을 통해 주문처리과정을 보내드립니다.</p>
								<p class="css-i7dt79 e1vfdada0">정보 변경은 마이컬리 &gt; 개인정보 수정
									메뉴에서 가능합니다.</p> -->
							</div>
						</div>
					</div>
				</div>
				<!-- 배송 정보 부분 전체 -->
				<div id="shipping-container">
					<!-- 배송 정보 -->
					<div class="css-12aowi2 edbbr7c2">
						<h3 class="css-1ddzp0m edbbr7c1">배송 정보&픽업 정보</h3>
					</div>
					<div class="css-iqoq9n e1pxan880">
						<button class="css-q8bpgr e4nu7ef3" type="button" width="60"
							height="30" radius="3">
							<span class="css-ymwvow e4nu7ef1" id="addressTest">픽업</span>
						</button>
					</div>
					<div class="css-iqoq9n e1pxan880">
						<button class="css-q8bpgr e4nu7ef3" type="button" width="60"
							height="30" radius="3">
							<span class="css-ymwvow e4nu7ef1" id="addressTest2">배송</span>
						</button>
					</div>
					<!-- 배송 정보 배송지 -->
					<!-- 					<div class="css-5d6nlw e17yjk9v2">
						<div class="css-1gshg9u e150alo82">
							<span class="css-ln1csn e150alo81">배송지</span>
							<div class="css-82a6rk e150alo80">
								<span class="css-3uygi7 e17yjk9v1">기본배송지</span>여기 회원가입때 쓰는 주소 검색
								부분 끝나면 맞춰서 수정(필요한 DB도 수정)
								<p class="css-36j4vu e17yjk9v0">서울 노원구 공릉로42길 107 대림빌리지 302호</p>
							</div>
						</div>
					</div> -->
					<!-- 배송주소 부분 -->
					<div id="checkout-shipping-details"
						class="css-1y0xj4c e1pxan881 addressDelivery">
						<div class="css-1gshg9u e150alo82">
							<span class="css-ln1csn e150alo81">배송 주소</span>
							<div class="css-82a6rk e150alo80">
								<p class="css-f170u1 erv3izt0">배송 주소를 입력해 주세요</p>
								<div class="css-lgy2fd e12ad82f1"
									style="padding-top: 0px; height: 240px">
									<div class="css-acvisw e1uzxhvi6"
										style="display: height:175px;">
										<div style="display: flex; justify-content: space-between">
											<div height="44" class="css-t7kbxx e1uzxhvi3">
												<input data-testid="input-box" id="receiver-name"
													name="name" placeholder="이름을 입력해 주세요" type="text"
													required="" height="44" class="css-1quw3ub e1uzxhvi2"
													value="김인진" style="visibility: hidden">
											</div>
											<div class="css-iqoq9n e1pxan880">
												<button class="css-q8bpgr e4nu7ef3" id="address_kakao"
													name="address_kakao" type="button" width="60" height="30"
													radius="3">
													<span class="css-ymwvow e4nu7ef1">입력</span>
												</button>
											</div>
										</div>
										<br>
										<div height="44" class="css-t7kbxx e1uzxhvi3">
											<input data-testid="input-box" id="deliveryAddress" name="deliveryAddress"
												placeholder="" type="text" required="" height="44"
												class="css-1quw3ub e1uzxhvi2" value="(주소)" readonly>
										</div>
										<br>
										<div height="44" class="css-t7kbxx e1uzxhvi3">
											<input data-testid="input-box" id="deliveryAddressDetail" name="deliveryAddressDetail"
												name="subAddress" placeholder="" type="text" required=""
												height="44" class="css-1quw3ub e1uzxhvi2" value="(상세주소)"
												>
										</div>
										<br>
										<!-- <p class="css-1tak4sl eh5sxvr3" style="display: padding-top: 5px;">주문 상품이 <span style="font-weight: bold">'픽업'</span>일 경우 판매자의 주소를
											입력해주세요</p> -->
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- 픽업주소 부분 -->
					<div id="checkout-shipping-details"
						class="css-1y0xj4c e1pxan881 addressPickup" style="display: none">
						<div class="css-1gshg9u e150alo82">
							<span class="css-ln1csn e150alo81">픽업 주소</span>
							<div class="css-82a6rk e150alo80">
								<div class="css-lgy2fd e12ad82f1"
									style="padding-top: 0px; height: 240px">
									<div class="css-acvisw e1uzxhvi6"
										style="display: height:175px;">
										<div style="display: flex; justify-content: space-between">
											<div height="44" class="css-t7kbxx e1uzxhvi3">
												<input data-testid="input-box" id="receiver-name"
													name="name" placeholder="이름을 입력해 주세요" type="text"
													required="" height="44" class="css-1quw3ub e1uzxhvi2"
													value="김인진" style="visibility: hidden">
											</div>
											<!-- 픽업은 입력버튼 필요 없어서 주석 -->
											<!-- div class="css-iqoq9n e1pxan880">
												<button class="css-q8bpgr e4nu7ef3" type="button" width="60"
													height="30" radius="3">
													<span class="css-ymwvow e4nu7ef1">입력</span>
												</button>
											</div> -->
										</div>
										<br>
										<div height="44" class="css-t7kbxx e1uzxhvi3">
											<input data-testid="input-box" id="pickupAddress" name="pickupAddress"
												placeholder="이름을 입력해 주세요" type="text" required=""
												height="44" class="css-1quw3ub e1uzxhvi2" value="(주소)"
												readonly>
										</div>
										<br>
										<div height="44" class="css-t7kbxx e1uzxhvi3">
											<input data-testid="input-box" id=pickupAddressDetail" name="pickupAddressDetail"
												placeholder="이름을 입력해 주세요" type="text" required=""
												height="44" class="css-1quw3ub e1uzxhvi2" value="(상세주소)"
												readonly>
										</div>
										<br>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="css-yazyg9 e150alo82">
						<span class="css-ln1csn e150alo81"> 배송비</span>
						<div class="css-82a6rk e150alo80">

							<div class="css-t6o2y8 e1vfdada2">3,000원</div>
						</div>
					</div>
					<!-- 					배송 정보 상세 정보
					<div id="checkout-shipping-details" class="css-1y0xj4c e1pxan881">
						<div class="css-1gshg9u e150alo82">
							<span class="css-ln1csn e150alo81">상세 정보</span>
							<div class="css-82a6rk e150alo80">
								<p class="css-f170u1 erv3izt0">받으실 분 정보를 입력해 주세요</p>
								<div class="css-iqoq9n e1pxan880">
									<button class="css-q8bpgr e4nu7ef3" type="button" width="60"
										height="30" radius="3">
										<span class="css-ymwvow e4nu7ef1">입력</span>
									</button>
								</div>
							</div>
						</div>
						배송 정보 상세 정보
						<div class="css-kc45zq e150alo82">
							<span class="css-ln1csn e150alo81">상세 정보</span>
							<div class="css-82a6rk e150alo80">
								<div class="css-1p5vzx4 e14u1xpe0">김인진, 010-8894-3132</div>
								<div>
									<span class="css-7unc75 efthce40">문 앞</span><span
										class="css-4jyz7e efthce40">자유 출입 가능</span>
								</div>
								<div class="css-1soh0gv efthce41">
									<span class="css-7unc75 efthce40">배송완료 메시지(삭제예정)</span><span
										class="css-4jyz7e efthce40">배송 직후(삭제예정)</span>
								</div>
								<div class="css-iqoq9n e1pxan880">
									<button class="css-117jo2j e4nu7ef3" type="button" width="60"
										height="30" radius="3">
										<span class="css-ymwvow e4nu7ef1">수정</span>
									</button>
								</div>
							</div>
						</div> -->
					<!-- 배송 정보 상세 정보 -->
					<div class="css-kc45zq e150alo82">
						<span class="css-ln1csn e150alo81">상세 정보</span>
						<div class="css-82a6rk e150alo80">
							<div class="css-lgy2fd e12ad82f1">
								<br>
								<div class="css-acvisw e1uzxhvi6">
									<label for="receiver-input1" class="css-c3g9of e1uzxhvi4">받으실
										분</label><span class="css-19lkxd2 e1uzxhvi5">*</span>
									<div height="44" class="css-t7kbxx e1uzxhvi3">
										<input data-testid="input-box" id="receiver-input1"
											name="name" placeholder="이름을 입력해 주세요" type="text" required=""
											height="44" class="css-1quw3ub e1uzxhvi2" value="김인진">
										<button class="css-118q5z4 e8bjkbi0" size="16"
											id="delete-input" tabindex="-1" aria-label="delete-input"
											type="button" onclick="clearInput1()"></button>
									</div>
								</div>
								<div class="css-acvisw e1uzxhvi6">
									<label for="receiver-input2" class="css-c3g9of e1uzxhvi4">휴대폰</label><span
										class="css-19lkxd2 e1uzxhvi5">*</span>
									<div height="44" class="css-t7kbxx e1uzxhvi3">
										<input data-testid="input-box" id="receiver-input2"
											name="phone" placeholder="숫자만 입력해 주세요" type="tel" required=""
											height="44" class="css-1quw3ub e1uzxhvi2" value="01088943132">
										<button class="css-118q5z4 e8bjkbi0" size="16"
											id="delete-input" tabindex="-1" aria-label="delete-input"
											type="button" onclick="clearInput2()"></button>
									</div>
								</div>
								<div class="css-acvisw e1uzxhvi6">
									<label for="receiver-input3" class="css-c3g9of e1uzxhvi4">받으실
										장소</label><span class="css-19lkxd2 e1uzxhvi5">*</span> (주문 상품이 <span
										style="font-weight: bold">'픽업'</span> 일 때 <span
										class="css-19lkxd2 e1uzxhvi5" style="font-size: 15px;">
										주소지 </span> 라고 작성해주세요)
									<div height="44" class="css-t7kbxx e1uzxhvi3">
										<input data-testid="input-box" id="receiver-input3"
											name="name" placeholder="ex)문앞, 경비실, 택배함, 기타장소" type="text"
											required="" height="44" class="css-1quw3ub e1uzxhvi2"
											value="">
										<button class="css-118q5z4 e8bjkbi0" size="16"
											id="delete-input" tabindex="-1" aria-label="delete-input"
											type="button" onclick="clearInput3()"></button>
									</div>
								</div>
								<!-- 								<div style="padding-bottom: 25px;">
									<label class="css-snlcph egijpni2">받으실 장소<span
										class="css-19lkxd2 egijpni1">*</span></label>
									<div class="css-pfcyp7 egijpni0">
										<label class="css-z9g6s0 et8nqc33" for="door"><input
											data-testid="radio-DOOR" id="door" name="receivePlace"
											type="radio" class="css-1pes2r6 et8nqc32" value="DOOR"
											checked=""><span class="css-5xw1m2 e2sqze61"><div
													class="css-1vic0rk e2sqze60"></div></span><span
											aria-labelledby="door" class="css-mgd87h et8nqc31">문 앞</span></label><label
											class="css-z9g6s0 et8nqc33" for="security-office"><input
											data-testid="radio-SECURITY_OFFICE" id="security-office"
											name="receivePlace" type="radio" class="css-1pes2r6 et8nqc32"
											value="SECURITY_OFFICE"><span
											class="css-198i9ca e2sqze61"><div
													class="css-1dahn5m e2sqze60"></div></span><span
											aria-labelledby="security-office" class="css-mgd87h et8nqc31">경비실</span></label><label
											class="css-z9g6s0 et8nqc33" for="locker"><input
											data-testid="radio-PICKUP_BOX" id="locker"
											name="receivePlace" type="radio" class="css-1pes2r6 et8nqc32"
											value="PICKUP_BOX"><span class="css-198i9ca e2sqze61"><div
													class="css-1dahn5m e2sqze60"></div></span><span
											aria-labelledby="locker" class="css-mgd87h et8nqc31">택배함</span></label><label
											class="css-z9g6s0 et8nqc33" for="etc"><input
											data-testid="radio-ETC" id="etc" name="receivePlace"
											type="radio" class="css-1pes2r6 et8nqc32" value="ETC"><span
											class="css-198i9ca e2sqze61"><div
													class="css-1dahn5m e2sqze60"></div></span><span
											aria-labelledby="etc" class="css-mgd87h et8nqc31">기타
												장소</span></label>
									</div>
								</div> -->
								<div class="css-acvisw e1uzxhvi6">
									<label for="receiver-input4" class="css-c3g9of e1uzxhvi4">공동현관
										출입방법 (주문 상품이 <span style="font-weight: bold">'배송'</span> 일 때
										입력해주세요)
									</label>
									<div height="44" class="css-t7kbxx e1uzxhvi3">
										<input data-testid="input-box" id="receiver-input4"
											name="name" placeholder="ex)공동현관 비밀번호는 1234 입니다, 자유 출입 가능합니다"
											type="text" required="" height="44"
											class="css-1quw3ub e1uzxhvi2" value="">
										<button class="css-118q5z4 e8bjkbi0" size="16"
											id="delete-input" tabindex="-1" aria-label="delete-input"
											type="button" onclick="clearInput4()"></button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div></div>
			<div class="css-4c6dm7 epvroj93">
				<div class="css-134fy6p epvroj92">
					<!-- 결제수단 -->
					<!-- 					<div class="css-12aowi2 edbbr7c2">
						<h3 class="css-1ddzp0m edbbr7c1">결제 수단</h3>
					</div>
					결제수단 선택
					<div class="css-1gshg9u e150alo82">
						<span class="css-ln1csn e150alo81">결제수단 선택</span>
						<div class="css-82a6rk e150alo80">
							<div class="css-gd125q e4nb37r1">
								<div>
									결제수단 선택 부트페이
									<div class="css-18dvwsu ef0cmoa0">
										<button type="button" class="css-1pvbmgb ehlmjxl0"
											data-testid="creditcard-button">부트페이</button>
										<button type="button" class="css-1wlyg0y ehlmjxl0"
											data-testid="simplepay-button">
											<span class="css-1oanxtx e106vb1p0">혜택</span>삭제 예정
										</button>
										<button type="button" class="css-1wlyg0y ehlmjxl0"
											data-testid="mobilians">삭제예정</button>
									</div>
								</div>
								<div class="css-p04ye2 eqgsbpy1">
									<div class="css-fzwzwt eqgsbpy0">
										<span>혜택안내</span>
									</div>
									<div class="css-xok1if e1dfkh4o3">
										<p class="css-1rlhglk e1dfkh4o2">컬리페이</p>
										<p class="css-5jw6s3 e1dfkh4o1">컬리카드, 최대 9만원 혜택 + 5% 추가 적립</p>
										<p class="css-95xna2 e1dfkh4o0">첫 결제 즉시할인 3만원 + 최대 3만원 쿠폰팩
											+ 3만원 적립금</p>
										<p class="css-95xna2 e1dfkh4o0">구매금액의 최대 5% 적립금 지급</p>
										<p class="css-95xna2 e1dfkh4o0">4/10~5/31 24시</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					결제수단 맨 아래
					<ul class="css-wx42bm e4nb37r0">
						<li>※ 카카오페이, 토스, 네이버페이, 페이코 결제 시, 결제하신 수단으로만 환불되는 점 양해부탁드립니다.</li>
						<li>※ 고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한 토스 페이먼츠의
							구매안전(에스크로) 서비스를 이용하실 수 있습니다.</li>
					</ul> -->
					<!-- 개인정보 수집/제공 -->
					<div class="css-12aowi2 edbbr7c2" style="margin-top: 0px;">
						<h3 class="css-1ddzp0m edbbr7c1">개인정보 수집/제공</h3>
					</div>
					<div class="css-37px7p eh5sxvr5">
						<div class="css-vtybye eh5sxvr2">
							<span class="css-0 eh5sxvr1">개인정보 수집∙이용 및 처리 동의</span>
							<button class="css-1q6jmiw eh5sxvr0 agreeButton1">보기</button>
						</div>
						<div class="css-vtybye eh5sxvr2">
							<span class="css-0 eh5sxvr1">전자지급 결제대행 서비스 이용약관 동의</span>
							<button class="css-1q6jmiw eh5sxvr0 agreeButton2">보기</button>
						</div>
						<strong class="css-87vide eh5sxvr4">위 내용을 확인 하였으며 결제에
							동의합니다.</strong>
					</div>
					<p class="css-1tak4sl eh5sxvr3">주문완료 상태일 경우에만 주문 취소가 가능하며, 상품
						미배송 시 결제하신 수단으로 환불됩니다.</p>
					<p class="css-1tak4sl eh5sxvr3">이츠타임 내 개별 판매자가 등록한 오픈마켓 상품의 경우
						이츠타임은 통신판매중개자로서 주문, 품질, 교환/환불 등 의무와 책임을 부담하지 않습니다.</p>
					<!-- 결제하기 버튼 -->
					<div class="css-1azakc el0c5j40"
						onclick="location.href='purchaseSuccess.jsp';">
						<button class="css-1lha8en e4nu7ef3" type="button" width="240"
							height="56" radius="3">
							<span class="css-ymwvow e4nu7ef1">14,900원 결제하기</span>
						</button>
					</div>
				</div>


				<!-- 결제 금액 전체 -->
				<div class="css-1rz7w0y epvroj91">
					<div class="css-9i9om4 epvroj90">
						<div class="css-1gxrfiw epvroj90">
							<!-- 일정 위치부터 스티키 디브 -->
							<div class="css-6hge48 edbbr7c2">
								<h3 class="css-1ddzp0m edbbr7c1">결제 금액</h3>
							</div>
							<div class="css-hdnk73 e12lli9y0">
								<div class="css-11quaim eahaaoi10">
									<div class="css-yct5co eahaaoi9">주문금액</div>
									<div>
										<span class="css-2pg1ps eahaaoi8"><span
											class="css-rfpchb eahaaoi1"></span>11,900</span><span
											class="css-vu318a eahaaoi6">원</span>
									</div>
								</div>
								<div class="css-ulbnf2 eahaaoi7">
									<div class="css-yct5co eahaaoi9">상품금액</div>
									<div>
										<span class="css-2pg1ps eahaaoi8"><span
											class="css-rfpchb eahaaoi1"></span>11,900</span><span
											class="css-vu318a eahaaoi6">원</span>
									</div>
								</div>
								<!-- <div class="css-ulbnf2 eahaaoi7">
									<div class="css-yct5co eahaaoi9">상품할인금액</div>
									<div>
										<span class="css-2pg1ps eahaaoi8"><span
											class="css-rfpchb eahaaoi1"></span>0</span><span
											class="css-vu318a eahaaoi6">원</span>
									</div>
								</div> -->
								<div class="css-1bj5qaf eahaaoi10">
									<div class="css-yct5co eahaaoi9">배송비</div>
									<div>
										<span class="css-2pg1ps eahaaoi8"><span
											class="css-rfpchb eahaaoi1"></span>3,000</span><span
											class="css-vu318a eahaaoi6">원</span>
									</div>
								</div>
								<!-- <div class="css-1bj5qaf eahaaoi10">
									<div class="css-yct5co eahaaoi9">쿠폰할인</div>
									<div class="css-0">
										<span class="css-2pg1ps eahaaoi8"><span
											class="css-rfpchb eahaaoi1"></span>0</span><span
											class="css-vu318a eahaaoi6">원</span>
									</div>
								</div>
								<div class="css-1bj5qaf eahaaoi10">
									<div class="css-yct5co eahaaoi9">카드즉시할인</div>
									<div class="css-37wf0k">
										<span class="css-2pg1ps eahaaoi8"><span
											class="css-rfpchb eahaaoi1"></span>0</span><span
											class="css-vu318a eahaaoi6">원</span>
									</div>
								</div>
								<div class="css-1bj5qaf eahaaoi10">
									<div class="css-yct5co eahaaoi9">적립금사용</div>
									<div class="css-37wf0k">
										<span class="css-2pg1ps eahaaoi8"><span
											class="css-rfpchb eahaaoi1"></span>0</span><span
											class="css-vu318a eahaaoi6">원</span>
									</div>
								</div> -->
								<div class="css-gs4y0w eahaaoi5">
									<div class="css-yct5co eahaaoi9">최종결제금액</div>
									<div>
										<span class="css-2pg1ps eahaaoi8"><span
											class="css-rfpchb eahaaoi1"></span>14,900</span><span
											class="css-vu318a eahaaoi6">원</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- 개인정보 수집 이용 및 처리 동의 모달 -->
	<div role="presentation" class="MuiDialog-root css-ggxhzp" id="modal"
		style="position: fixed; z-index: 1300; inset: 0px;">
		<div class="MuiBackdrop-root" aria-hidden="true"
			style="opacity: 1; transition: opacity 225ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;"></div>
		<div tabindex="0" data-test="sentinelStart"></div>
		<div class="MuiDialog-container MuiDialog-scrollPaper"
			role="none presentation" tabindex="-1"
			style="opacity: 1; transition: opacity 225ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;">
			<div
				class="MuiPaper-root MuiDialog-paper MuiDialog-paperScrollPaper MuiDialog-paperWidthSm MuiDialog-paperFullWidth MuiPaper-elevation24 MuiPaper-rounded"
				role="dialog">
				<div class="MuiDialogContent-root css-1qtcb7g">
					<div>
						<div class="wrapper">
							<h2>개인정보 수집·이용 및 처리 동의 (필수)</h2>
							<br>
							<div class="scroll_wrapper box_tbl">
								<h4 class="tit_main">개인정보 수집·이용 동의</h4>
								<table>
									<caption class="screen_out">개인정보의 수집 및 이용목적</caption>
									<colgroup>
										<col width="30%">
										<col width="35%">
										<col width="35%">
									</colgroup>
									<thead>
										<tr>
											<th scope="row">수집 목적</th>
											<th scope="row">수집 항목</th>
											<th scope="row">보유 기간</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>온라인 쇼핑 구매자에 대한 상품 결제 및 배송</td>
											<td>결제정보, 수취인명, 휴대폰 번호, 수취인 주소, 구매상품정보</td>
											<td rowspan="4" class="emph">업무 목적 달성 후 파기<br>(단, 타
												법령에 따라 법령에서 규정한 기간 동안 보존)
											</td>
										</tr>
										<tr>
											<td>주류 구매 관리 및 신고</td>
											<td>구매자 이름(성인인증 정보를 이용함), 구매자 주소</td>
										</tr>
										<tr>
											<td>여행상품(숙박) 예약</td>
											<td>투숙자 정보(이름, 휴대폰 번호)</td>
										</tr>
										<tr>
											<td>여행상품(항공) 예약</td>
											<td>탑승자 정보(이름, 휴대폰 번호, 생년월일, 성별)</td>
										</tr>
									</tbody>
								</table>
								<br>
								<p class="txt_service">서비스 제공을 위해서 필요한 최소한의 개인정보입니다. 동의를 해
									주셔야 서비스를 이용하실 수 있으며, 동의하지 않으실 경우 서비스에 제한이 있을 수 있습니다.</p>
							</div>
						</div>

					</div>
				</div>
				<div
					class="MuiDialogActions-root css-156dd0p MuiDialogActions-spacing close-button">
					<button class="css-738xq4 e4nu7ef3 agreeCloseButton1" type="button"
						height="56" radius="0">
						<span class="css-ymwvow e4nu7ef1">확인</span>
					</button>
				</div>
			</div>
		</div>
		<div tabindex="0" data-test="sentinelEnd"></div>
	</div>

	<!-- 전자지급 결제대행 서비스 동의 모달 -->
	<div role="presentation" class="MuiDialog-root css-ggxhzp" id="modal2"
		style="position: fixed; z-index: 1300; inset: 0px;">
		<div class="MuiBackdrop-root" aria-hidden="true"
			style="opacity: 1; transition: opacity 225ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;"></div>
		<div tabindex="0" data-test="sentinelStart"></div>
		<div class="MuiDialog-container MuiDialog-scrollPaper"
			role="none presentation" tabindex="-1"
			style="opacity: 1; transition: opacity 225ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;">
			<div
				class="MuiPaper-root MuiDialog-paper MuiDialog-paperScrollPaper MuiDialog-paperWidthSm MuiDialog-paperFullWidth MuiPaper-elevation24 MuiPaper-rounded"
				role="dialog">
				<div class="MuiDialogContent-root css-1qtcb7g">
					<div>
						<div class="wrapper">
							<h2>이츠타임페이 전자지급 결제대행 서비스 이용약관</h2>
							<br>
							<div class="scroll_wrapper">
								<div class="terms_view">
									<strong class="tit_main">제1조 (목적)</strong> 본 약관은 주식회사 이츠타임페이(이하
									“회사”라 합니다)가 제공하는 전자지급 결제대행 서비스를 “이용자”가 이용함에 있어 “회사”와 “이용자” 간
									권리, 의무 및 “이용자”의 이용 절차 등에 관한 사항을 규정하는 것을 그 목적으로 합니다. <strong
										class="tit_main">제2조 (용어의 정의)</strong> ① 본 약관에서 사용하는 용어의 정의는
									다음과 같습니다. <br> <br> 1. “전자금융거래”라 함은 “회사”가 “전자적 장치”를
									통하여 금융상품 및 서비스를 제공(이하 “전자금융업무”라 합니다)하고, “이용자”가 “회사”의 종사자와 직접
									대면하거나 의사소통을 하지 아니하고 자동화된 방식으로 이를 이용하는 거래를 말합니다. <br> 2.
									“전자금융거래서비스”라 함은 “회사”가 “전자금융업무”로서 제공하는 전자지급 결제대행 서비스를 말합니다. <br>
									3. “전자지급 결제대행 서비스”라 함은 전자적 방법으로 재화의 구입 또는 용역의 이용에 있어서 지급결제정보를
									송신하거나 수신하는 것 또는 그 대가의 정산을 대행하거나 매개하는 서비스를 말합니다. <br> 4.
									“전자지급수단”이라 함은 신용카드 등 전자금융거래법 제2조 제11호에서 정하는 전자적 방법에 따른 지급수단을
									말합니다. <br> 5. “전자지급거래”라 함은 자금을 주는 자(이하 “지급인”이라 합니다)가 “회사”로
									하여금 “전자지급수단”을 이용하여 자금을 받는 자(이하 “수취인”이라 합니다)에게 자금을 이동하게 하는
									“전자금융거래”를 말합니다. <br> 6. “전자적 장치”라 함은 “전자금융거래”정보를 전자적 방법으로
									전송하거나 처리하는데 이용되는 장치로서 현금자동지급기, 자동입출금기, 지급용 단말기, 컴퓨터, 전화기 그 밖에
									전자적 방법으로 정보를 전송하거나 처리하는 장치를 말합니다. <br> 7. “접근매체”라 함은
									“전자금융거래”에 있어서 “거래지시”를 하거나 “이용자” 및 거래내용의 진실성과 정확성을 확보하기 위하여 사용되는
									다음 각 목의 어느 하나에 해당하는 수단 또는 정보를 말합니다. <br> 가) 전자식 카드 및 이에
									준하는 전자적 정보 <br> 나) 전자서명법 제2조 제4호의 전자서명생성정보 및 같은 조 제7호의 인증서
									<br> 다) “회사”에 등록된 “이용자”번호 <br> 라) “이용자”의 생체정보 <br>
									마) 가목 또는 나목의 수단이나 정보를 사용하는데 필요한 비밀번호 <br> 8. “이용자”라 함은 본
									약관에 동의하고 본 약관에 따라 “회사”가 제공하는 “전자금융거래서비스”를 이용하는 자를 말합니다. <br>
									9. “거래지시”라 함은 “이용자”가 본 약관에 따라 “회사”에게 “전자금융거래”의 처리를 지시하는 것을
									말합니다. <br> 10. “오류”라 함은 “이용자”의 고의 또는 과실 없이 “전자금융거래”가 본 약관
									또는 “이용자”의 “거래지시”에 따라 이행되지 아니한 경우를 말합니다. <br> ② 본 조 및 본 약관의
									다른 조항에서 정의한 것을 제외하고는 전자금융거래법 등 관련 법령에서 정한 바에 따릅니다. <strong
										class="tit_main">제3조 (약관의 명시 및 변경)</strong> ① “회사”는 “이용자”가
									“전자금융거래서비스”를 이용하기 전에 본 약관을 서비스페이지에 게시하고 “이용자”가 본 약관의 중요한 내용을
									확인할 수 있도록 합니다. <br> ② “회사”는 “이용자”의 요청이 있는 경우 전자문서의 전송방식(이하
									전자우편을 이용한 전송을 포함합니다) 등에 의하여 본 약관의 사본을 “이용자”에게 교부합니다. <br>
									③ “회사”는 “이용자”가 약관의 내용에 대한 설명을 요청하는 경우 다음 각 호의 어느 하나의 방법으로
									“이용자”에게 약관의 중요내용을 설명합니다. <br> 1. 약관의 중요내용을 “이용자”에게 직접 설명 <br>
									2. 약관의 중요내용에 대한 설명을 전자적 장치를 통하여 “이용자”가 알기 쉽게 표시하고 “이용자”로부터 해당
									내용을 충분히 인지하였다는 의사표시를 전자적 장치를 통하여 수령 <br> ④ “회사”가 본 약관을
									변경하는 때에는 그 시행일 1개월 전에 변경되는 약관을 “회사” 홈페이지에 게시함으로써 “이용자”에게 공지합니다.
									다만 법령의 개정으로 인하여 긴급하게 약관을 변경하는 때에는 변경된 약관을 “회사” 홈페이지에 1개월 이상
									게시하고 “이용자”에게 통지합니다. <br> ⑤ “회사”는 제4항의 공지나 통지를 할 경우, “이용자”가
									약관의 변경에 동의하지 아니한 경우 공지나 통지를 받은 날로부터 30일 이내에 계약을 해지할 수 있으며,
									변경내용에 대하여 이의를 제기하지 아니하는 경우에는 변경에 동의한 것으로 본다”라는 취지의 내용을 함께
									공지합니다. <br> ⑥ “이용자”가 제4항의 공지나 통지된 날로부터 변경되는 약관의 시행일 전의
									영업일까지 변경내용에 대하여 이의를 제기하지 아니하는 경우에는 약관의 변경에 동의한 것으로 봅니다. <strong
										class="tit_main">제4조 (서비스 이용 시간)</strong> ① “회사”는 “이용자”에게 연중무휴
									1일 24시간 “전자금융거래서비스”를 제공함을 원칙으로 합니다. 단, 금융기관 및 기타 결제수단 발행업자 등의
									사정에 따라 달리 정할 수 있습니다. <br> ② “회사”는 정보통신설비의 보수, 점검 및 기타 기술상의
									필요나 금융기관 및 기타 결제수단 발행업자의 사정에 의하여 서비스 중단이 불가피한 경우, “전자금융거래서비스”
									중단 3일 전까지 게시 가능한 전자적 수단을 통하여 “전자금융거래서비스” 중단 사실을 게시한 후
									“전자금융거래서비스”를 일시 중단할 수 있습니다. 다만, 시스템 장애복구, 긴급한 프로그램 보수, 외부요인 등
									불가피한 경우에는 사전 게시 없이 “전자금융거래서비스”를 중단할 수 있습니다. <strong
										class="tit_main">제5조 (거래내용의 확인)</strong> ① “회사”는 “이용자”가
									“전자금융거래”에 사용하는 “전자적 장치”(“회사”와 “이용자” 사이에 미리 약정한 “전자적 장치”가 있는
									경우에는 그 “전자적 장치”를 포함합니다)를 통하여 “이용자”의 거래내용 (“이용자”의 “오류”정정 요구사실 및
									처리결과에 관한 사항'을 포함합니다.)을 확인할 수 있도록 하며, “이용자”가 거래내용을 서면(전자문서를
									제외합니다. 이하 같습니다)으로 제공할 것을 요청하는 경우에는 그 요청을 받은 날부터 2주 이내에 거래내용에 관한
									서면을 교부합니다. <br> ② “회사”는 “이용자”가 “전자적 장치”의 운영장애, 그 밖의 사유로
									거래내용을 확인하게 할 수 없는 때에는 인터넷 등을 이용하여 즉시 그 사유를 알리고, 그 사유가 종료된 때부터
									“이용자”가 거래내용을 확인할 수 있도록 합니다. <br> ③ “회사”는 제1항에 따라 “이용자”로부터
									거래내용을 서면으로 제공할 것을 요청받은 경우 “전자적 장치”의 운영장애, 그 밖의 사유로 거래내용을 제공할 수
									없는 때에는 그 “이용자”에게 즉시 알리며, 이 경우 거래내용에 관한 서면의 교부기간을 산정함에 있어서 “전자적
									장치”의 운영장애, 그 밖의 사유로 거래내용을 제공할 수 없는 기간은 산입하지 아니 합니다. <br> ④
									제1항의 대상이 되는 거래내용 중 대상기간이 5년인 것은 다음 각 호와 같습니다. <br> 1.
									“전자금융거래”의 종류 및 금액, “전자금융거래”의 상대방에 관한 정보 <br> 2. “전자금융거래”의
									거래일시, “전자적 장치”의 종류 및 “전자적 장치”를 식별할 수 있는 정보 <br> 3.
									“전자금융거래”가 계좌를 통하여 이루어지는 경우 거래계좌의 명칭 또는 번호 <br> 4. “전자금융거래”
									신청, 조건변경에 관한 내용 <br> ⑤ 제1항의 대상이 되는 거래내용 중 대상기간이 1년인 것은 다음
									각 호와 같습니다. <br> 1. “이용자”의 “오류” 정정 요구사실 및 처리결과에 관한 사항 <br>
									⑥ “이용자”가 제1항에서 정한 서면교부를 요청하고자 할 경우 다음의 주소 및 전화번호로 요청할 수 있습니다. <br>
									1. 주소 : 서울특별시 강남구 테헤란로 133, 2층(역삼동, 한국타이어빌딩) <br> 2. 이메일 :
									kurlypay@kurlypay.co.kr <br> 3. 전화번호 : 02-6953-7312 <strong
										class="tit_main">제6조 (“거래지시”의 철회)</strong> ① “이용자”가 “회사”의
									“전자금융거래서비스”를 이용하여 “전자지급거래”를 한 경우, “이용자”는 그 지급의 효력이 발생하기 전까지 제5조
									제6항에 기재된 연락처로 전자문서의 전송 등을 통하여 “거래지시”를 철회할 수 있습니다. <br> ②
									전항의 지급의 효력이 발생하는 시점이란, “거래지시”된 금액의 정보가 “수취인”의 계좌가 개설되어 있는 금융회사
									또는 “회사”의 전자적 장치에 입력이 끝난 때를 의미합니다. <br> ③ “이용자”는 제1항의 지급의
									효력이 발생한 경우에는 전자상거래 등에서의 소비자보호에 관한 법률 등 관련 법령상 청약의 철회의 방법에 따라
									결제대금을 반환 받을 수 있습니다. <strong class="tit_main">제7조
										(“오류”의 정정 등)</strong> ① “이용자”는 “전자금융거래서비스”를 이용함에 있어 “오류”가 있음을 안 때에는
									“회사”에 대하여 그 정정을 요구할 수 있습니다. <br> ② “회사”는 전항의 규정에 따른 “오류”의
									정정요구를 받은 때 또는 스스로 “전자금융거래”에 “오류”가 있음을 안 때에는 이를 즉시 조사하여 처리한 후
									정정요구를 받은 날 또는 “오류”가 있음을 안 날부터 2주 이내에 그 원인과 결과를 문서, 전화 또는 전자우편으로
									“이용자”에게 알려 드립니다. 다만, “이용자”가 문서로 알려줄 것을 요청하는 경우에는 문서로 알려 드립니다. <strong
										class="tit_main">제8조 (“전자금융거래”기록의 생성∙보존 및 파기)</strong> ① “회사”는
									“전자금융거래”의 내용을 추적, 검색하거나 그 내용에 오류가 발생할 경우에 이를 확인하거나 정정할 수 있는
									기록(이하 본 조에서 “전자금융거래”기록 이라 합니다)을 생성하여 보존합니다. <br> ② 전항의 규정에
									따라 “회사”가 보존하여야 하는 기록의 종류 및 보존기간은 다음 각 호와 같습니다. <br> 1. 다음
									각 목의 “전자금융거래” 기록은 5년간 보존합니다. <br> 가) 본 약관 제5조 제4항 제1호 내지
									제4호에 관한 사항 <br> 나) 해당 “전자금융거래”와 관련한 “전자적 장치”의 접속기록 <br>
									다) 건당 거래금액이 1만원을 초과하는 “전자금융거래”에 관한 기록 <br> 2. 다음 각 목의
									“전자금융거래” 기록은 1년간 보존합니다. <br> 가) 제5조 제5항 제1호에 관한 사항 <br>
									나) 건당 거래금액이 1만원 이하인 “전자금융거래”에 관한 기록 <br> 다) “전자지급수단”의 이용과
									관련된 거래승인에 관한 기록 <br> ③ “회사”는 본 조 제2항에 따라 보존하여야 하는 기간이 경과하고
									금융거래 등 상거래관계가 종료된 경우에는 5년 이내에 “전자금융거래”기록(신용정보의 이용 및 보호에 관한 법률에
									따른 신용정보는 제외)을 파기합니다. 다만, 다른 법령 등에 따라 보관하여야 하는 경우에는 그러하지 아니합니다.
									<strong class="tit_main">제9조 (“전자금융거래”정보의 제공금지)</strong> ①
									“회사”는 “전자금융거래서비스”를 제공함에 있어서 취득한 “이용자”의 인적사항, “이용자”의 계좌, “접근매체”
									및 “전자금융거래”의 내용과 실적에 관한 정보 또는 자료를, 법령에 의하거나 “이용자”의 동의를 얻은 경우를
									제외하고는 제3자에게 제공, 누설하거나 업무상 목적 외에 사용하지 아니합니다. <br> ② “회사”는
									“이용자”가 안전하게 “전자금융거래서비스”를 이용할 수 있도록 “이용자”의 개인정보보호를 위하여 개인정보처리방침을
									제정하여 운용합니다. “회사”의 개인정보처리방침은 “회사”의 홈페이지에서 확인할 수 있습니다. <strong
										class="tit_main">제10조 (“접근매체”의 관리)</strong> ① “회사”는
									“전자금융거래서비스” 제공 시 “접근매체”를 선정하여 “이용자”의 신원, 권한 및 “거래지시”의 내용 등을
									확인합니다. <br> ② “이용자”는 “접근매체”를 사용함에 있어서 다른 법률에 특별한 규정이 없는 한
									다음 각 호의 행위를 하여서는 아니 됩니다. 다만, 전자금융거래법 제18조에 따른 선불전자지급수단이나 전자화폐의
									양도 또는 담보제공을 위하여 필요한 경우(제3호의 행위 및 이를 알선하는 행위는 제외한다)에는 그러하지
									아니합니다. <br> 1. “접근매체”를 양도하거나 양수하는 행위 <br> 2. 대가를 수수,
									요구 또는 약속하면서 “접근매체”를 대여받거나 대여하는 행위 또는 보관, 전달, 유통하는 행위 <br>
									3. 범죄에 이용할 목적으로 또는 범죄에 이용될 것을 알면서 “접근매체”를 대여받거나 대여하는 행위 또는 보관,
									전달, 유통하는 행위 <br> 4. “접근매체”를 질권의 목적으로 하는 행위 <br> 5.
									제1호부터 제4호까지의 행위를 알선하거나 광고하는 행위 <br> ③ “이용자”는 자신의 “접근매체”를
									제3자에게 누설 또는 노출하거나 방치하여서는 안되며, “접근매체”의 도용이나 위조 또는 변조를 방지하기 위하여
									충분한 주의를 기울여야 합니다. <br> ④ “회사”는 “이용자”로부터 “접근매체”의 분실이나 도난 등의
									통지를 받은 때에는 그 때부터 제3자가 그 접근매체를 사용함으로 인하여 “이용자”에게 발생한 손해를 배상할 책임이
									있습니다. 다만, 선불전자지급수단이나 전자화폐의 분실∙도난의 통지 전 저장된 금액에 대한 손해에 대하여는 책임을
									지지 아니합니다. <strong class="tit_main">제11조 (회사의 책임)</strong> ①
									“회사”는 다음 각 호의 어느 하나에 해당하는 사고로 인하여 “이용자”에게 손해가 발생한 경우에는 그 손해를
									배상할 책임을 집니다. <br> 1. “접근매체”의 위조나 변조로 발생한 사고 <br> 2.
									계약체결 또는 “거래지시”의 전자적 전송이나 처리 과정에서 발생한 사고 <br> 3. “전자금융거래”를
									위한 “전자적 장치” 또는 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제2조 제1항 제1호에 따른
									정보통신망에 침입하여 거짓이나 그 밖의 부정한 방법으로 획득한 “접근매체”의 이용으로 발생한 사고 <br>
									② 제1항의 규정에도 불구하고 “회사”는 다음 각 호의 어느 하나에 해당하는 경우에는 그 책임의 전부 또는 일부를
									“이용자”가 부담하게 할 수 있습니다. <br> 1. “이용자”가 “접근매체”를 제3자에게 대여하거나 그
									사용을 위임한 경우 또는 양도나 담보의 목적으로 제공한 경우 <br> 2. 제3자가 권한 없이
									“이용자”의 “접근매체”를 이용하여 “전자금융거래”를 할 수 있음을 알았거나 쉽게 알 수 있었음에도 불구하고
									“접근매체”를 누설하거나 노출 또는 방치한 경우 <br> 3. “회사”가 제10조 제1항에 따른 확인
									외에 보안강화를 위하여 “전자금융거래” 시 요구하는 추가적인 보안조치를 “이용자”가 정당한 사유 없이 거부하여
									제1항 제3호에 따른 사고가 발생한 경우 <br> 4. “이용자”가 제3호에 따른 추가적인 보안조치에
									사용되는 매체, 수단 또는 정보에 대하여 다음 각 목의 어느 하나에 해당하는 행위를 하여 제1항 제3호에 따른
									사고가 발생한 경우 <br> 가) 누설, 노출 또는 방치한 행위 <br> 나) 제3자에게
									대여하거나 그 사용을 위임한 행위 또는 양도나 담보의 목적으로 제공한 행위 <br> 5.
									법인(중소기업기본법 제2조 제2항에 의한 소기업을 제외합니다)인 “이용자”에게 손해가 발생한 경우로 “회사”가
									사고를 방지하기 위하여 보안절차를 수립하고 이를 철저히 준수하는 등 합리적으로 요구되는 충분한 주의의무를 다한
									경우 <strong class="tit_main">제12조 (“전자지급거래”계약의 효력)</strong> ①
									“회사”는 “이용자”와 체결한 “전자지급거래” 계약에 따라 “이용자”가 “거래지시”한 금액을 전송하여 지급이
									이루어지도록 합니다. <br> ② “회사”는 제1항의 규정에 따른 자금의 지급이 이루어질 수 없게 된
									때에는 수령한 자금을 “이용자”에게 반환하여야 합니다. 이 경우 “이용자”의 과실로 인하여 지급이 이루어지지
									아니한 때에는 그 전송을 하기 위하여 지출한 비용을 공제할 수 있습니다. <strong
										class="tit_main">제13조 (이용금액의 한도)</strong> “회사”의 정책 및
									결제업체(신용카드사, 이동통신사 등)의 기준에 따라 “이용자”의 결제수단 별 월 누적 결제액 및 결제한도가 제한될
									수 있습니다. <strong class="tit_main">제14조 (분쟁처리 및 분쟁조정)</strong> ①
									“이용자”는 “회사”의 홈페이지에 게시된 분쟁처리 책임자 및 담당자에 대하여 “전자금융거래”에 관련한 의견 및
									불만의 제기, 손해배상의 청구 등의 분쟁처리를 요구할 수 있습니다. <br> ② “이용자”는 “회사”에
									대하여 서면(전자문서를 포함한다) 또는 전자적 장치를 이용하여 “회사”에 분쟁의 처리를 신청할 수 있으며, 이
									경우 “회사”는 15일 이내에 이에 대한 조사 또는 처리 결과를 “이용자”에게 안내합니다. <br> ③
									“이용자”가 “전자금융거래”의 처리에 관하여 이의가 있을 때에는 금융위원회의 설치 등에 관한 법률에 따른
									금융감독원의 금융분쟁조정위원회 또는 소비자기본법에 따른 한국소비자원의 소비자분쟁조정위원회에 분쟁조정을 신청할 수
									있습니다. <strong class="tit_main">제15조 (회사의 안정성 확보 의무)</strong>
									“회사”는 “전자금융거래”가 안전하게 처리될 수 있도록 선량한 관리자로서의 주의를 다하며, “전자금융거래”의
									안전성과 신뢰성을 확보할 수 있도록 전자적 전송이나 처리를 위한 인력, 시설, “전자적 장치”, 소요경비 등의
									정보기술부문, 전자금융업무 및 전자서명법에 의한 인증서의 사용 등 인증방법에 관하여 금융위원회가 정하는 기준을
									준수합니다. <strong class="tit_main">제16조 (약관 외 준칙)</strong> ① “회사”와
									“이용자” 사이에 개별적으로 합의한 사항이 본 약관에 정한 사항과 다를 때에는 그 합의 사항을 본 약관에 우선하여
									적용합니다. <br> ② 제1항에서 정한 사항 이외에 본 약관에서 정하지 아니한 사항(용어의 정의를
									포함합니다)에 대하여 “회사”와 “이용자” 사이에 다른 합의사항이 없는 때에는 전자금융거래법, 전자상거래 등에서의
									소비자 보호에 관한 법률, 여신전문금융업법 등 관련 법령에서 정한 바에 따릅니다. <strong
										class="tit_main">제17조 (관할)</strong> “회사”와 “이용자” 간에 발생한 분쟁에 관한
									관할은 민사소송법에서 정한 바에 따릅니다. <strong class="tit_main">부칙</strong> <strong
										class="tit_main">제1조 (시행일)</strong> 본 약관은 2021년 10월 13일부터
									적용합니다. <br> <br> 주식회사 이츠타임페이 <br> <br>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div
					class="MuiDialogActions-root css-156dd0p MuiDialogActions-spacing">
					<button class="css-738xq4 e4nu7ef3 agreeCloseButton2" type="button"
						height="56" radius="0">
						<span class="css-ymwvow e4nu7ef1">확인</span>
					</button>
				</div>
			</div>
		</div>
		<div tabindex="0" data-test="sentinelEnd"></div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	/* 주소 api  */
	window.onload = function() {
		document.getElementById("address_kakao").addEventListener("click",function() { //주소입력칸을 클릭하면
		//카카오 지도 발생
		new daum.Postcode({
			oncomplete : function(data) { //선택시 입력값 세팅
				document.getElementById("deliveryAddress").value = data.address; // 주소 넣기
				document.querySelector("input[name=deliveryAddressDetail]").value=""; //상세 주소 초기화
				document.querySelector("input[name=deliveryAddressDetail]").focus(); //상세 주소 포커싱
			}
		}).open();
	});
}
	
	/* 동의 부분 모달 */
	$(".agreeButton1").on("click", function() {
		/* 	$('.banner-online').fadeIn(); */
		$('#modal').fadeIn();
		$("html").css("overflow-y", "hidden");
	})

	$('.agreeCloseButton1').click(function() {
		/* 	$('.banner-online').fadeOut(); */
		$('#modal').fadeOut();
		$("html").css("overflow-y", "");
	})

	$(".agreeButton2").on("click", function() {
		/* 	$('.banner-online').fadeIn(); */
		$('#modal2').fadeIn();
		$("html").css("overflow-y", "hidden");
	})

	$('.agreeCloseButton2').click(function() {
		/* 	$('.banner-online').fadeOut(); */
		$('#modal2').fadeOut();
		$("html").css("overflow-y", "");
	})

	/* x버튼(받으실 분) */
	function clearInput1() {
		document.getElementById("receiver-input1").value = "";
	}

	/* x버튼(휴대폰) */
	function clearInput2() {
		document.getElementById("receiver-input2").value = "";
	}

	/* x버튼(받으실 장소) */
	function clearInput3() {
		document.getElementById("receiver-input3").value = "";
	}

	/* x버튼(공동현관 출입방법) */
	function clearInput4() {
		document.getElementById("receiver-input4").value = "";
	}

	/* 픽업정보 테스트 */
	$('#addressTest').on('click', function() {
		$('.addressDelivery').hide();
		$('.addressPickup').show();
	});

	/* 배송정보 테스트 */
	$('#addressTest2').on('click', function() {
		$('.addressDelivery').show();
		$('.addressPickup').hide();
	});
	/* let $input = $('receiver-name');
	$(clearInput).on('click', function(){
		$input.value = "";
	}) */
</script>
</html>