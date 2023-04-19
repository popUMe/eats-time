<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../header.jsp" />
<link rel="icon" href="https://www.kurly.com//favicon.ico" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/signup.css" />
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
	<form>
	<div class="css-pculus">
		<div class="css-o5dw7d">회원가입</div>
		<div class="css-mhmtvt">
			<div class="css-rb0i47">
				<span class="css-qq9ke6">*</span> 필수입력사항
			</div>
			<div class="css-y8aj3r">
    <div class="css-1pjgd36">
        <div class="css-1y8737n">
            <label class="css-1obgjqh">아이디<span class="css-qq9ke6">*</span></label>
        </div>
        <div class="css-82a6rk">
            <div class="css-jmalg">
                <div class="css-176lya2">
                    <input data-testid="input-box" id="memberId" name="memberId" placeholder="아이디를 입력해주세요" type="text" required="" class="css-u52dqk" value="">
                </div>
            </div>
            <div class="css-shoa2s">
                <p class="css-1ozi17i">6자 이상 16자 이하의 영문 혹은 영문과 숫자를 조합</p>
            </div>
        </div>
        <div class="css-1w0ksfz">
            <button class="css-ufulao" type="button">
                <span class="css-ymwvow">중복확인</span>
            </button>
        </div>
    </div>
    <!-- 모달창 -->
    <div id="modal">
        <div class="banner-online">
            <div class="modal-content">6자 이상 16자 이하의 영문 혹은 영문과 숫자를 조합</div>
            <div class="close-button" style="cursor: pointer;">확인</div>
      		  </div>
    		</div>
		</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">비밀번호<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">
								<input data-testid="input-box" id="password" name="password"
									placeholder="비밀번호를 입력해주세요" type="password" autocomplete="off"
									class="css-u52dqk" value="" aria-autocomplete="list">
							</div>
						</div>
					</div>
					<div class="css-1w0ksfz"></div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">비밀번호확인<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2 ">
								<input data-testid="input-box" id="passwordConfirm"
									name="passwordConfirm" placeholder="비밀번호를 한번 더 입력해주세요"
									type="password" autocomplete="off" class="css-u52dqk"
									value="">
							</div>
						</div>
					</div>
					<div class="css-1w0ksfz"></div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">이름<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">
								<input data-testid="input-box" id="name" name="name"
									placeholder="이름을 입력해 주세요" type="text" required=""
									class="css-u52dqk" value="">
							</div>
						</div>
					</div>
					<div class="css-1w0ksfz"></div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">이메일<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk ">
						<div class="css-jmalg">
							<div class="css-176lya2">
								<input data-testid="input-box" id="email" name="email"
									placeholder="예: marketkurly@kurly.com" type="text" required=""
									class="css-u52dqk" value="">
							</div>
						</div>
					</div>
					<div class="css-1w0ksfz">
						<button class="css-ufulao" type="button">
							<span class="css-ymwvow">중복확인</span>
						</button>
					</div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">휴대폰<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">
								<input data-testid="input-box" id="mobileNumber"
									name="mobileNumber" placeholder="숫자만 입력해주세요." type="tel"
									required="" class="css-u52dqk" value="">
							</div>
						</div>
					</div>
					<div class="css-1w0ksfz">
						
					</div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">주소<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<button class="css-1schgvv" type="button" height="44"
							radius="4">
							<span class="css-ymwvow"><img
								src="https://res.kurly.com/pc/service/cart/2007/ico_search.svg"
								alt="" class="css-1m3kac1">주소 검색</span>
						</button>
						<span class="css-vukl2m">배송지에 따라 상품 정보가 달라질 수
							있습니다.</span>
					</div>
					<div class="css-1w0ksfz"></div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">성별</label>
					</div>
					<div class="css-82a6rk">
						<div class="css-14wodj6">
							<label class="css-z9g6s0" for="gender-man"><input
								data-testid="radio-MALE" id="gender-man" name="gender"
								type="radio" class="css-1pes2r6" value="MALE">
								<span class="css-198i9ca">
								<div class="css-1dahn5m"></div>
								</span>
								
								<span aria-labelledby="gender-man" class="css-mgd87h">남자</span></label>
								<input type="checkbox" class="css-1pes2r6" value="MALE"style="display: none;">
								<label class="css-z9g6s0" for="gender-woman">
								<input data-testid="radio-FEMALE" id="gender-woman" name="gender"
								type="radio" class="css-1pes2r6" value="FEMALE">
								<span class="css-198i9ca">
								<div class="css-1dahn5m"></div>
								</span>
								<span aria-labelledby="gender-woman" class="css-mgd87h">여자</span>
								</label>
								<input type="checkbox" class="css-1pes2r6" value="FEMALE"style="display: none;">
								<label class="css-z9g6s0" for="gender-none">
								<input data-testid="radio-NONE" id="gender-none" name="gender"
								type="radio" class="css-1pes2r6" value="NONE" checked="">
								<span class="css-5xw1m2 ">
								<div class="css-1vic0rk"></div>
								</span>
								<span aria-labelledby="gender-none" class="css-mgd87h">선택안함</span>
								
								</label>
						</div>
					</div>
					<div class="css-1w0ksfz"></div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">생년월일</label>
					</div>
					<div class="css-82a6rk">
						<div class="css-18n8lnw">
							<div class="css-1dkwuq4">
								<div height="40" class="css-xsmgyi">
									<input data-testid="input-box" name="birthYear"
										placeholder="YYYY" type="text" height="40"
										class="css-151eme7" value="">
								</div>
							</div>
							<span class="css-5lnvt6"></span>
							<div class="css-1dkwuq4">
								<div height="40" class="css-xsmgyi">
									<input data-testid="input-box" name="birthMonth"
										placeholder="MM" type="text" height="40"
										class="css-151eme7" value="">
								</div>
							</div>
							<span class="css-5lnvt6"></span>
							<div class="css-1dkwuq4">
								<div height="40" class="css-xsmgyi">
									<input data-testid="input-box" name="birthDay" placeholder="DD"
										type="text" height="40" class="css-151eme7" value="">
								</div>
							</div>
						</div>
					</div>
					<div class="css-1w0ksfz"></div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						
					</div>
					<div class="css-82a6rk">
						<div class="css-14wodj6">
						
						</div>
					</div>
					<div class="css-1w0ksfz"></div>
				</div>
			</div>
			<div class="css-1eo0fey"></div>
			
			<div class="css-y8aj3r">
				<div class="css-2yzr8b">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">이용약관동의<span
							class="css-qq9ke6">*</span>
						</label>
					</div>
					<div class="css-82a6rk">
						<div class="css-ov2xfu">
							<label class="css-msja7w" for="TermsAgreeAll"><input
								id="TermsAgreeAll" type="checkbox" class="css-agvwxo">
							<div class="css-79hxr7">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
											stroke="#ddd" fill="#fff"></path>
								<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
											stroke-width="1.5" stroke-linecap="round"
											stroke-linejoin="round"></path>
								</svg>
								</div>
								<span>전체 동의합니다.</span>
								</label>
							<p class="css-nygcgj">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인
								서비스를 이용할 수 있습니다.</p>
						</div>
						<div class="css-ov2xfu">
							<div class="css-s5xdrg">
								<label class="css-1mjkje9" for="RequiredTermsCondition">
								<input id="RequiredTermsCondition" type="checkbox" class="css-agvwxo">
								<div class="css-79hxr7">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5
								.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd" fill="#fff"></path>
								<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
										stroke-linejoin="round"></path></svg>
									</div>
									<span>이용약관 동의</span></label><span class="css-g5xq45">(필수)</span>
							</div>
							<a class="css-7chi73">약관보기</a>
						</div>
						<div class="css-ov2xfu">
							<div class="css-s5xdrg">
								<label class="css-1mjkje9" for="RequiredTermsOfPrivacy">
								<input id="RequiredTermsOfPrivacy" type="checkbox" class="css-agvwxo">
								<div class="css-79hxr7">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 
										23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
											stroke="#ddd" fill="#fff">
										</path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
											stroke-linejoin="round">
										</path>
									</svg>
								</div>
									<span>개인정보 수집∙이용 동의</span></label><span class="css-g5xq45">(필수)</span>
							</div>
							<a class="css-7chi73">약관보기</a>
						</div>
						<div class="css-ob6kg2">
							<div class="css-s5xdrg">
								<label class="css-1mjkje9" for="SignupEventAll">
								<input id="SignupEventAll" type="checkbox" class="css-agvwxo">
							</div>
						</div>
						<div class="css-ov2xfu">
							<div class="css-s5xdrg">
								<label class="css-1mjkje9" for="RequiredSignupAge">
								<input id="RequiredSignupAge" type="checkbox" class="css-agvwxo">
								<div class="css-79hxr7">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 
										0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
										stroke="#ddd" fill="#fff">
										</path>
								<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" 
								stroke-linecap="round" stroke-linejoin="round">
								</path>
								</svg>
							</div>
									<span>본인은 만 14세 이상입니다.</span></label><span class="css-g5xq45">(필수)</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			</form>
			<div class="css-137ca2h">
				<button class="css-18m884r" type="submit" width="240"
					height="56" radius="3">
					<span class="css-ymwvow">가입하기</span>
				</button>
			</div>
		</div>
	</div>
	<div id="myModal" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal()">&times;</span>
    <p>중복 확인 결과: 사용 가능한 아이디입니다.</p>
  </div>
</div>
	<jsp:include page="../footer.jsp" />
	<div id="modal">
  		<div class="modal-content"></div>
  		<div class="close-button" style="cursor: pointer;">확인</div>
	</div>
	
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/signup.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>