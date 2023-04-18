const memberIdInput = document.querySelector("#memberId");
const passwordInput = document.querySelector("#password");
const passwordConfirmInput = document.querySelector("#passwordConfirm");
const nameInput = document.querySelector("#name");
const emailInput = document.querySelector("#email");
const duplicateCheckButtons = document.querySelectorAll(".css-ufulao");

// 중복확인 버튼 클릭 이벤트 핸들러 등록
duplicateCheckButtons.forEach((button) => {
  button.addEventListener("click", () => {
    const targetInput = button.parentElement.previousElementSibling.querySelector("input");
    if (targetInput.value) {
      // 서버와 통신하여 아이디나 이메일 중복 여부 확인하는 코드
      // 중복이 아닌 경우 해당 아이디나 이메일을 사용할 수 있다는 메시지 출력
      // 중복인 경우 해당 아이디나 이메일을 사용할 수 없다는 메시지 출력
    } else {
      alert("아이디나 이메일을 입력해주세요.");
    }
  });
});

// 회원가입 버튼 클릭 이벤트 핸들러 등록
const signUpButton = document.querySelector(".css-o5dw7d");
signUpButton.addEventListener("click", () => {
  if (!memberIdInput.value || !passwordInput.value || !passwordConfirmInput.value || !nameInput.value || !emailInput.value) {
    alert("모든 필수 입력란을 채워주세요.");
    return;
  }

  if (passwordInput.value !== passwordConfirmInput.value) {
    alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
    return;
  }

  // 서버와 통신하여 회원가입 정보를 저장하는 코드
  // 회원가입에 성공한 경우 회원가입 완료 페이지로 이동
  // 회원가입에 실패한 경우 실패 메시지 출력
});

function validateRequiredFields() {
  // 필수 입력 항목인지 검사
  const requiredFields = document.querySelectorAll('input[required]');
  for (let i = 0; i < requiredFields.length; i++) {
    if (!requiredFields[i].value) {
      alert('필수 입력 항목을 모두 입력해주세요.');
      return false;
    }
  }
  
  // 아이디 검사 (6~16자 영문 혹은 영문과 숫자 조합)
  const memberId = document.getElementById('memberId').value;
  const memberIdRegex = /^[a-zA-Z0-9]{6,16}$/;
  if (!memberIdRegex.test(memberId)) {
    alert('아이디는 6~16자의 영문 혹은 영문과 숫자 조합이어야 합니다.');
    return false;
  }
  
  // 비밀번호 검사
  var pw = $("#password").val();
  var num = pw.search(/[0-9]/g);
  var eng = pw.search(/[a-z]/ig);
  var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

  if(pw.length < 8 || pw.length > 20){
    alert("8자리 ~ 20자리 이내로 입력해주세요.");
    return false;
  } else if(pw.search(/\s/) != -1){
    alert("비밀번호는 공백 없이 입력해주세요.");
    return false;
  } else if(num < 0 || eng < 0 || spe < 0 ){
    alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
    return false;
  } else {
    console.log("통과"); 
  }
  
  // 비밀번호 확인 검사
  const passwordConfirm = document.getElementById('passwordConfirm').value;
  if (pw !== passwordConfirm) {
    alert('비밀번호가 일치하지 않습니다.');
    return false;
  }
  
  // 이메일 검사
  const email = document.getElementById('email').value;
  const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
  if (!emailRegex.test(email)) {
    alert('유효한 이메일 주소를 입력해주세요.');
    return false;
  }
  
  // 모든 검사를 통과한 경우
  return true;
}

const submitButton = document.getElementById('submit-button');
submitButton.addEventListener('click', function() {
  if (validateRequiredFields()) {
    // 유효성 검사를 통과한 경우, 회원가입 로직 실행
    // ...
  }
});

// 휴대폰 유효성 검사
function isHpFormat(hp){
	if(hp == ""){
		return true;
	}
	var phoneRule = /^(01[016789]{1})[0-9]{3,4}[0-9]{4}$/;
	return phoneRule.test(hp);
}

function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}
// 성별 라디오 버튼 요소들을 가져옵니다.
const maleRadio = document.getElementById("gender-man");
		const femaleRadio = document.getElementById("gender-woman");
		const noneRadio = document.getElementById("gender-none");

		maleRadio.addEventListener("click", () => {
			maleRadio.checked = true;
			femaleRadio.checked = false;
			noneRadio.checked = false;
		});

		femaleRadio.addEventListener("click", () => {
			maleRadio.checked = false;
			femaleRadio.checked = true;
			noneRadio.checked = false;
		});

		noneRadio.addEventListener("click", () => {
			maleRadio.checked = false;
			femaleRadio.checked = false;
			noneRadio.checked = true;
		});

const $all = $(".all");
const $checkboxes = $(".term");

$all.on("click", function(){
  $checkboxes.prop("checked", $(this).is(":checked"));
});

// 체크 박스 중 한 개라도 false일 경우 전체동의 해제
$checkboxes.on("click", function(){
  $all.prop("checked", $checkboxes.filter(":checked").length == 3);
});

$('#RequiredTermsOfPrivacy').click(function() {
  // 체크박스 클릭시 동작할 코드 작성
  if ($('#RequiredTermsOfPrivacy').is(":checked")) {
    $('#buttonId').click();
  }
});
