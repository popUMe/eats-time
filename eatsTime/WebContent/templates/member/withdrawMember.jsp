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
	href="${pageContext.request.contextPath}/static/css/member/withdrawMember.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/modal/modal.css">
<title>이츠타임 - 개인 정보 수정</title>
</head>

<body>
	<jsp:include page="../header.jsp" />
	<div class="css-luwwab">
		<div class="modal">
			<div class="warn-modal">
				<div id="content-wrap"></div>
			</div>
		</div>
		<div class="css-833hqy">
			<div class="css-1v4whg">마이타임</div>
			<!--css-1v4whg ecbxmj2  -->
			<ul class="css-1x9bshx">
				<li><a class="css-g4g0eu" id="li-1">주문내역 <svg
							xmlns="http://www.w3.org/2000/svg" width="19" height="19"
							viewBox="0 0 24 24">
                     <defs>
                     <path id="gfk9q0rhta"
								d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs>
                     <g fill="none" fill-rule="evenodd">
                     <g>
                     <g>
                     <g>
                     <g
								transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                     <use class="point1" stroke="#999"
								stroke-linecap="round" stroke-width="1.8"
								stroke-linejoin="round" transform="rotate(45 5.657 5.657)"
								xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg></a></li>

				<li><a class=" css-g4g0eu" id="li-2">상품 문의 <svg
							xmlns="http://www.w3.org/2000/svg" width="19" height="19"
							viewBox="0 0 24 24">
                     <defs>
                     <path id="gfk9q0rhta"
								d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs>
                     <g fill="none" fill-rule="evenodd">
                     <g>
                     <g>
                     <g>
                     <g
								transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                     <use class="point2" stroke="#999"
								stroke-linecap="round" stroke-width="1.8"
								stroke-linejoin="round" transform="rotate(45 5.657 5.657)"
								xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg>
				</a></li>

				<li><a class="active css-g4g0eu" id="li-3">개인 정보 수정 <svg
							xmlns="http://www.w3.org/2000/svg" width="19" height="19"
							viewBox="0 0 24 24">
                     <defs>
                     <path id="gfk9q0rhta"
								d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs>
                     <g fill="none" fill-rule="evenodd">
                     <g>
                     <g>
                     <g>
                     <g
								transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                     <use class="point3" stroke="#ff4f32"
								stroke-linecap="round" stroke-width="1.8"
								stroke-linejoin="round" transform="rotate(45 5.657 5.657)"
								xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg></a></li>
			</ul>

			<a href="/mypage/inquiry/list" class="css-196gwz9 e19l01ug3">

				<div class="css-rmee6s">
					<span class="css-1sdidca">도움이 필요하신가요 ?</span> <span
						class="css-rnnx2x">1:1 문의하기</span>
				</div> <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19"
					viewBox="0 0 24 24">
            <defs>
            <path id="gfk9q0rhta"
						d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs>
            <g fill="none" fill-rule="evenodd">
            <g>
            <g>
            <g>
            <g
						transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
            <use stroke="#333" stroke-linecap="round" stroke-width="1.8"
						stroke-linejoin="round" transform="rotate(45 5.657 5.657)"
						xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg>
			</a>
		</div>
		<!-- css-833hqy ecbxmj3 -->

		<div class="css-171zbec">
			<div class="css-j0lifa">
				<div class="css-fhxb3m">
					<h2 class="css-1268zpe">개인 정보 수정</h2>
				</div>
			</div>
			<div class="css-ya8of1 e1w140tr0">
				<form action="${pageContext.request.contextPath}/modifyOk.member"
					name="modifyForm" method="">
					<div class="css-1pjgd36 e744wfw6">
						<div class="css-1y8737n e744wfw5">
							<label for="userId" class="css-1obgjqh e744wfw4">아이디</label>
						</div>
						<div class="css-82a6rk e744wfw3">
							<div class="css-1waqr6j e1uzxhvi6">
								<div class="css-176lya2 e1uzxhvi3">
									<input data-testid="input-box" id="userId"
										name="memberIdentification" type="text" readonly=""
										class="css-u52dqk e1uzxhvi2" value="">
								</div>
							</div>
							<div class="css-shoa2s">
								<p class="css-1ozil7i"></p>
							</div>
						</div>
						<div class="css-1w0ksfz e744wfw2"></div>
					</div>
					<!-- <div class="css-1pjgd36 e744wfw6">
						<div class="css-1y8737n e744wfw5">
							<label for="originalPassword" class="css-1obgjqh e744wfw4">현재
								비밀번호</label>
						</div>
						<div class="css-82a6rk e744wfw3">
							<div class="css-1waqr6j e1uzxhvi6">
								<div class="css-176lya2 e1uzxhvi3">
									<input data-testid="input-box" id="originalPassword"
										name="originalPassword" placeholder="비밀번호를 입력해 주세요"
										type="password" autocomplete="off"
										class="css-u52dqk e1uzxhvi2" value="12345"
										data-gtm-form-interact-field-id="1">
								</div>
							</div>
							<div class="css-shoa2s e1g8vpbl0">
								<p class="css-1ozil7i error1" name="error1"></p>
							</div>
						</div>
						<div class="css-1w0ksfz e744wfw2"></div>
					</div> -->
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label for="newPassword" class="css-1obgjqh e744wfw4">새
								비밀번호</label>
						</div>
						<div class="css-82a6rk">
							<div class="css-1waqr6j">
								<div class="css-176lya2 e1uzxhvi3">
									<input data-testid="input-box" id="newPassword" name="memberPw"
										placeholder="새 비밀번호를 입력해 주세요" type="password"
										autocomplete="off" class="css-u52dqk e1uzxhvi2" value=""
										aria-autocomplete="list">
								</div>
							</div>
							<div class="css-shoa2s">
								<p class="css-1ozil7i error2"></p>
							</div>
						</div>
						<div class="css-1w0ksfz"></div>
					</div>
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label for="newPasswordConfirm" class="css-1obgjqh">새
								비밀번호 확인</label>
						</div>
						<div class="css-82a6rk">
							<div class="css-1waqr6j">
								<div class="css-176lya2">
									<input data-testid="input-box" id="newPasswordConfirm"
										name="newPasswordConfirm" placeholder="새 비밀번호를 다시 입력해 주세요"
										type="password" autocomplete="off"
										class="css-u52dqk e1uzxhvi2" value="">
								</div>
							</div>
							<div class="css-shoa2s">
								<p class="css-1ozil7i error3"></p>
							</div>
						</div>
						<div class="css-1w0ksfz"></div>
					</div>
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label for="name" class="css-1obgjqh">이름</label>
						</div>
						<div class="css-82a6rk">
							<div class="css-1waqr6j">
								<div class="css-176lya2">
									<input data-testid="input-box" id="name" name="memberName"
										placeholder="이름을 입력해 주세요" type="text"
										class="css-u52dqk e1uzxhvi2" value="">
								</div>
							</div>
							<div class="css-shoa2s">
								<p class="css-1ozil7i error4"></p>
							</div>
						</div>
						<div class="css-1w0ksfz"></div>
					</div>
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label for="email" class="css-1obgjqh">이메일</label>
						</div>
						<div class="css-82a6rk e744wfw3">
							<div class="css-1waqr6j e1uzxhvi6">
								<div class="css-176lya2 e1uzxhvi3">
									<input data-testid="input-box" id="email" name="memberEmail"
										placeholder="이메일을 입력해 주세요" type="text"
										class="css-u52dqk e1uzxhvi2" value="">
								</div>
							</div>
							<div class="css-shoa2s">
								<p class="css-1ozil7i error5"></p>
							</div>
						</div>
						<div class="css-1w0ksfz e744wfw2">
							<button class="css-ufulao e4nu7ef3" type="button" id="checkEmail">
								<span class="css-ymwvow e4nu7ef1">중복확인</span>
							</button>
						</div>
					</div>
					<div class="css-1pjgd36 e744wfw6">
						<div class="css-1y8737n e744wfw5">
							<label for="mobileNumber" class="css-1obgjqh e744wfw4">휴대폰</label>
						</div>
						<div class="css-82a6rk e744wfw3">
							<div class="css-1waqr6j e1uzxhvi6">
								<div class="css-176lya2 e1uzxhvi3">
									<input data-testid="input-box" id="mobileNumber"
										name="memberPhoneNumber" placeholder="숫자만 입력해 주세요" type="text"
										class="css-u52dqk e1uzxhvi2" value="">
								</div>
							</div>
						</div>

						<!-- 여기 부분 안쓰는 버튼 -->
						<div class="css-1w0ksfz" style="visibility: hidden">
							<button class="css-ufulao e4nu7ef3" type="button">
								<span class="css-ymwvow e4nu7ef1">다른번호 인증</span>
							</button>
						</div>

					</div>
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">성별</label>
						</div>
						<div class="css-82a6rk">
							<div class="css-14wodj6">

								<label class="css-z9g6s0" for="gender-man"> <input
									id="gender-man" name="memberGender" type="radio"
									class="css-1pes2r6" value="MALE" checked> <span
									class="css-198i9ca" id="male">
										<div class="css-1dahn5m" id=divmale></div>
								</span> <span class="css-mgd87h">남자</span>
								</label> <label class="css-z9g6s0" for="gender-woman"> <input
									id="gender-woman" name="memberGender" type="radio"
									class="css-1pes2r6" value="FEMALE"> <span
									class="css-5xw1m2" id="female">
										<div class="css-1vic0rk" id="divfemale"></div>
								</span> <span class="css-mgd87h">여자</span>
								</label> <label class="css-z9g6s0" for="gender-none"> <input
									id="gender-none" name="memberGender" type="radio"
									class="css-1pes2r6" value="NONE"> <span
									class="css-198i9ca" id="none">
										<div class="css-1dahn5m" id="divnone"></div>
								</span> <span class="css-mgd87h">선택안함</span>
								</label>

							</div>

						</div>

						<div class="css-1w0ksfz"></div>
					</div>

					<div class="css-1pjgd36 e744wfw6">
						<div class="css-1y8737n e744wfw5">
							<label for="birthYear" class="css-1obgjqh e744wfw4">생년월일</label>
						</div>
						<div class="css-82a6rk e744wfw3">
							<div class="css-18n8lnw e9ted1s1">
								<div class="css-1dkwuq4 e1uzxhvi6">
									<div height="40" class="css-xsmgyi e1uzxhvi3">
										<input data-testid="input-box" name="birthYear" id="birthYear"
											placeholder="YYYY" type="text" height="40"
											class="css-151eme7 e1uzxhvi2" value="">
									</div>
								</div>
								<span class="css-5lnvt6 e9ted1s0"></span>
								<div class="css-1dkwuq4 e1uzxhvi6">
									<div height="40" class="css-xsmgyi e1uzxhvi3">
										<input data-testid="input-box" name="birthMonth"
											id="birthMonth" placeholder="MM" type="text" height="40"
											class="css-151eme7 e1uzxhvi2" value="">
									</div>
								</div>
								<span class="css-5lnvt6 e9ted1s0"></span>
								<div class="css-1dkwuq4 e1uzxhvi6">
									<div height="40" class="css-xsmgyi e1uzxhvi3">
										<input data-testid="input-box" name="birthDay" id="birthDay"
											placeholder="DD" type="text" height="40"
											class="css-151eme7 e1uzxhvi2" value="">
									</div>
								</div>
								<input type="hidden" name="memberBirthday">
							</div>
						</div>
						<div class="css-1w0ksfz e744wfw2"></div>
					</div>
					
					<!-- 아이디 테스트용 인풋 박스 -->
					<input type="hidden" name="memberId" value="1">

					<div class="css-14332pf e1m8ervv0">
						<button class="css-ufulao e4nu7ef3" type="button"
							onclick="location.href='delete.member'">
							<span class="css-ymwvow e4nu7ef1">탈퇴하기</span>
						</button>
						<button class="css-1qirdbn e4nu7ef3" type="button" id="modify">
							<span class="css-ymwvow e4nu7ef1">회원정보수정</span>
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp" />

</body>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script
	src="${pageContext.request.contextPath}/static/js/withdrawMember.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/modal/modal.js"></script>

<script>
	let obj = `${obj}`;
	member = JSON.parse(obj);

	/* 로딩 끝나고 나서 마이페이지 불러오기 */
	$(document).ready(
			function() {

				/* 아이디 */
				$('#userId').val(member.memberIdentification);

				/* 생일 */
				let birth = member.memberBirthday;
				let birthYYYY = new Date(birth).getFullYear();
				let birthMM = ('0' + (new Date(birth).getMonth() + 1))
						.slice(-2);
				let birthDD = ('0' + new Date(birth).getDate()).slice(-2);
				$('#birthYear').val(birthYYYY);
				$('#birthMonth').val(birthMM);
				$('#birthDay').val(birthDD);

				/* 이름 */
				$('#name').val(member.memberName);

				/* 이메일 */
				$('#email').val(member.memberEmail);

				/* 휴대폰 */
				$('#mobileNumber').val(member.memberPhoneNumber);
				/* 성별 */
				$(
						'input[type="radio"][name="memberGender"][value="'
								+ member.memberGender + '"]').trigger('click');

				sumBirth();
			});
	/* 		document.modifyForm.submit();
	 }
	 */
	function sumBirth() {
		/* 생일 합치기 */
		let sumBirthDay = $("#birthYear").val() + $("#birthMonth").val()
				+ $("#birthDay").val();
		$("input[name='memberBirthday']").val(sumBirthDay);
	}

	/* 회원수정 ajax */
	$(function() {
		$("#modify").on("click", getData);
	});

	function getData() {
		$.ajax({
			type : "post",
			url : "modifyOk.member",
			data : {
				memberId : '1',
				memberIdentification : $('#userId').val(),
				memberPw : $('#newPassword').val(),
				memberName : $('#name').val(),
				memberEmail : $('#email').val(),
				memberPhoneNumber : $('#mobileNumber').val(),
				memberGender : $(
						"input[type='radio'][name='memberGender']:checked")
						.val(),
				memberBirthday : $("input[name='memberBirthday']").val()
			},
			beforeSend : function(xhr) {
				sumBirth();
			},
			//	 	data: {memberId: $(this).val()},
			success : function() {
				showWarnModal("수정 완료되었습니다.");
			}
		});
	}
</script>
</html>
