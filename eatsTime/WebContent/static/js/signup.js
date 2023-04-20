const memberIdInput = document.querySelector("#memberId");
const passwordInput = document.querySelector("#password");
const passwordConfirmInput = document.querySelector("#passwordConfirm");
const nameInput = document.querySelector("#name");
const emailInput = document.querySelector("#email");
const duplicateCheckButtons = document.querySelectorAll(".css-ufulao");

// 중복확인 버튼 클릭 이벤트 핸들러 등록
const modal = document.getElementById("modal");
const modalContent = modal.querySelector(".modal-content");
const closeButton = modal.querySelector(".close-button");

duplicateCheckButtons.forEach((button) => {
  button.addEventListener("click", () => {
    const targetInput = button.parentElement.previousElementSibling.querySelector("input");
    const inputRegex = /^[a-zA-Z0-9]{6,16}$/; // 6자이상 16자 이하의 영문 혹은 영문과 숫자 조합을 검사하는 정규표현식

    if (!inputRegex.test(targetInput.value)) { // 입력값이 정규표현식과 매치되지 않을 경우
      modalContent.innerText = "6자 이상 16자 이하의 영문 혹은 영문과 숫자 조합으로 입력해주세요.";
      modal.style.display = "block";
    } else {
      checkDuplicate(targetInput.value, (isDuplicate) => {
        if (isDuplicate) { // 중복되는 경우
          modalContent.innerText = "중복된 아이디/이메일입니다.";
          modal.style.display = "block";
        } else { // 중복되지 않는 경우
          modalContent.innerText = "사용 가능한 아이디/이메일입니다.";
          modal.style.display = "block";
        }
      });
    }
  });
});

closeButton.addEventListener("click", () => {
  modal.style.display = "none";
});

function checkDuplicate(value, callback) {
  // 서버와 통신하여 value에 해당하는 아이디나 이메일이 중복되는지 확인하는 코드
  // 중복이 아닌 경우 true를, 중복인 경우 false를 반환
  callback(false); // 임시로 항상 중복이라고 가정함
}

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

const button = document.querySelector('.css-18m884r');
button.addEventListener('click', function() {
  if (validateRequiredFields()) {
    // 유효성 검사를 통과한 경우, 회원가입 로직 실행
    // ...
  }
});

// 필수 입력 필드 검사 함수
function validateRequiredFields() {
  // 필수 입력 필드 선택자
  var requiredFields = document.querySelectorAll('input[required], select[required], textarea[required]');
  
  // 필수 입력 필드를 하나씩 검사
  for (var i = 0; i < requiredFields.length; i++) {
    if (!requiredFields[i].value) {
      // 필수 입력 필드 중 입력되지 않은 필드가 있을 경우 오류 메시지 출력
      alert(requiredFields[i].getAttribute('name') + '을(를) 입력해주세요.');
      return false;
    }
  }
  
  // 모든 필수 입력 필드가 입력되었을 경우 true 반환
  return true;
}

// 휴대폰 유효성 검사
function isHpFormat(hp){
	if(hp == ""){
		return true;
	}
	var phoneRule = /^(01[016789]{1})[0-9]{3,4}[0-9]{4}$/;
	return phoneRule.test(hp);
}


$('.css-1schgvv').on('click', function() {
  new daum.Postcode({
    oncomplete: function(data) {
      console.log(data);

      var roadAddr = data.roadAddress;
      var jibunAddr = data.jibunAddress;
      
      document.getElementById('member_post').value = data.zonecode;
      
      if (roadAddr !== '') {
        document.getElementById('member_addr').value = roadAddr;
      } else if (jibunAddr !== '') {
        document.getElementById('member_addr').value = jibunAddr;
      }
    }
  }).open();
});


$(document).ready(function() {
  const $maleLabel = $("label[for='gender-man']");
  const $maleInput = $("#gender-man");
  const $maleSpan = $maleLabel.find(".css-198i9ca");

  $maleLabel.on("click", function() {
    $maleInput.prop("checked", true);
    $maleSpan.addClass("checked");
  });

  const $femaleLabel = $("label[for='gender-woman']");
  const $femaleInput = $("#gender-woman");
  const $femaleSpan = $femaleLabel.find(".css-198i9ca");

  $femaleLabel.on("click", function() {
    $femaleInput.prop("checked", true);
    $femaleSpan.addClass("checked");
  });

  const $noneLabel = $("label[for='gender-none']");
  const $noneInput = $("#gender-none");
  const $noneSpan = $noneLabel.find(".css-5xw1m2");

  $noneLabel.on("click", function() {
    $noneInput.prop("checked", true);
    $maleSpan.removeClass("checked");
    $femaleSpan.removeClass("checked");
  });
});

function validateBirthday() {
  var year = document.getElementsByName("birthYear")[0].value;
  var month = document.getElementsByName("birthMonth")[0].value;
  var day = document.getElementsByName("birthDay")[0].value;

  // 생년월일이 입력되지 않았을 경우
  if (year == "" || month == "" || day == "") {
    alert("생년월일을 모두 입력해주세요.");
    return false;
  }

  // 생년월일이 유효하지 않은 경우
  var date = new Date(year, month - 1, day);
  if (isNaN(date.getTime())) {
    alert("올바른 생년월일을 입력해주세요.");
    return false;
  }

  // 생년월일이 유효한 경우
  return true;
}



const $all = $("#TermsAgreeAll"); // id 선택자로 변경
const $checkboxes = $("input[type='checkbox']:not(#TermsAgreeAll)"); // 전체동의 제외한 체크박스 선택자 수정

$all.on("click", function(){
  $checkboxes.prop("checked", $(this).is(":checked"));
});

// 체크 박스 중 한 개라도 false일 경우 전체동의 해제
$checkboxes.on("click", function(){
  $all.prop("checked", $checkboxes.filter(":checked").length == $checkboxes.length); // 체크박스 개수에 따라 동적으로 처리하도록 수정
});

$('#RequiredTermsOfPrivacy').on("click", function() {
  if ($('#RequiredTermsOfPrivacy').is(":checked")) {
    $('#buttonId').click();
  }
});

