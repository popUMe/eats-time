function check() {
		
// 		이름 유효성 검사
		if(document.input.member_name.value == ""){
			alert("이름을 입력해 주세요");
			document.input.member_name.focus();
			return;
		}
		
// 		생년월일 유효성 검사
		if(document.input.member_birthday.value == ""){
			alert("생년월일을 선택해주세요");
			return;
		}
		
// 		이메일 유효성 검사
		if(document.input.member_email.value == ""){
			alert("이메일을 입력해주세요");
			return;
		}
		
// 		이메일 유효성 검사 체크
		var regemail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

		if(!regemail.test(document.input.member_email.value)){
			alert("이메일을 확인해주시기 바랍니다");
			form.document.input.member_email.focus();
			return;
		}

// 		비밀번호 유효성 검사
		if(document.input.member_pw.value == ""){
			alert("비밀번호를 입력해 주세요")
			document.input.member_pw.focus();
			return;
		}
		
// 		비밀번호 자리수 유효성 검사
		if(document.input.member_pw.value.length < 8 || document.input.member_pw.value.length > 15){
			alert("비밀번호는 8 ~ 15자 사이로 작성하여야 합니다");
			form.document.input.member_pw.focus();
			return;
		}
		
// 		비밀번호 포함 유효성 검사
		var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/;
		var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		
		if(!reg.test(document.input.member_pw.value)){
			alert("비밀번호는 대문자, 소문자, 숫자, 특수문자를 모두 포함하여야 합니다");
			form.document.input.member_pw.focus();
			return;
		}
		if(hangleCheck.test(document.input.member_pw.value)){
			alert("비밀번호는 한글을 사용할 수 없습니다.");
			form.document.input.member_pw.focus();
			return;
		}
		
// 		비밀번호 동일 문자 반복 유효성 검사
		if(/(\w)\1\1/.test(document.input.member_pw.value)){
			alert("비밀번호는 같은 문자를 3번 이상 사용하실 수 없습니다");
			form.document.input.member_pw.focus();
			return;
		}
		
// 		비밀번호 공백 포함 유효성 검사
		if(document.input.member_pw.value.search(/\s/) != -1){
			alert("비밀번호는 공백을 포함할 수 없습니다");
			form.document.input.member_pw.focus();
			return;
		}
		
// 		비밀번호 유효성 재검사
		if(document.input.member_repw.value == ""){
			alert("비밀번호를 다시 입력해주세요");
			document.input.member_repw.focus();
			return;
		}
		
// 		비밀번호와 비밀번호 재입력 유효성 검사
		if(document.input.member_pw.value != document.input.member_repw.value){
			alert("비밀번호가 다릅니다");
			document.input.member_repw.focus();
			return;
		}
		
// 		연락처 유효성 검사
		if(document.input.member_ph.value == ""){
			alert("연락처를 입력해주세요");
			document.input.member_ph.focus();
			return;
		}

// 		연락처 유효성 검사 체크
		var regph = /^\d{3}-\d{3,4}-\d{4}$/;

		if(!regph.test(document.input.member_ph.value)){
			alert("연락처를 확인해주시기 바랍니다");
			form.document.input.member_ph.focus();
			return;
		}
		
// 		필수 약관 1번 유효성 검사
		if(!document.input.agree1.checked){
			alert("필수 약관에 동의해주시기 바랍니다");
			return;
		}
		
// 		필수 약관 2번 유효성 검사
		if(!document.input.agree2.checked){
			alert("필수 약관에 동의해주시기 바랍니다");
			return;
		}
		
// 		필수 약관 3번 유효성 검사
		if(!document.input.agree3.checked){
			alert("필수 약관에 동의해주시기 바랍니다");
			return;
		}
		
// 		필수 약관 4번 유효성 검사
		if(!document.input.agree4.checked){
			alert("필수 약관에 동의해주시기 바랍니다");
			return;
		}
		
		document.input.member_pw.value = btoa(document.input.member_pw.value);
		
		document.input.submit();
	}

// 		이메일 중복 검사
		function checkEmail(){
			const member_email = document.getElementById("member_email");
			
			if(member_email.value == ""){
				alert("이메일을 입력하세요");
			return;
			}
			
			httpRequest = new XMLHttpRequest();
			
			if(!httpRequest){
				alert("인스턴스 생성 불가!");
				return;
			}
		
			var httpMethod = "GET";
			var httpParam = "member_email=" + encodeURIComponent(member_email.value);
			var httpURL = "${pageContext.request.contextPath}templates/member/signup.jsp;
			
			httpRequest.open(httpMethod, httpURL, true);
			
			// 콜백메소드 지정
			httpRequest.onreadystatechange = resultCheckEmail;
			httpRequest.send();
		}
		
		// 4. status : response 상태값을 의미하며, 여기서 200은 ok를 의미
		function resultCheckEmail(){
			if(httpRequest.readyState == 4 && httpRequest.status == 200){
				
				var data = httpRequest.responseText;
				const check = document.getElementById("check");
				
				check.innerText = "";
				
				if(data == "사용 가능한 이메일 입니다"){
					check.style.cssText = "color: blue; font-size: 10px;";
					//document.getElementById("join").disabled = false;
				}else{
					check.style.cssText = "color: red; font-size: 10px;";
					//document.getElementById("join").disabled = true;
				}
				
				check.innerText = data;
			}
		}
		
// 		전체 약관 동의 토글
		$(document).ready(function(){
			 
			$("#allCheck").click(function(){
				if($("#allCheck").prop("checked")){
				    $("#allCheck").prop("checked",true);
				    $("#agree1").prop("checked",true);
				    $("#agree2").prop("checked",true);
				    $("#agree3").prop("checked",true);
				    $("#agree4").prop("checked",true);
				    $("#member_clause").prop("checked",true);
				}else{
				    $("#allCheck").prop("checked",false);
				    $("#agree1").prop("checked",false);
				    $("#agree2").prop("checked",false);
				    $("#agree3").prop("checked",false);
			   		$("#agree4").prop("checked",false);
			   		$("#member_clause").prop("checked",false);
				}
			});
		});
