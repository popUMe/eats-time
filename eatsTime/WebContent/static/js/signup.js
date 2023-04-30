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

const $joinInputs = $("div.join input[type='text'], div.join input[type='password'], div.join input[type='email'], div.join input[type='tel']");
const idRegex = /^(?!(?:[0-9]+)$)([a-zA-Z]|[0-9a-zA-Z]){6,16}$/;
const passwordNumberRegex =/[0-9]/g;
const passwordEnglishRegex = /[a-z]/ig;
const passwordSpecialCharacterRegex = /[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi;
const nameRegex = /^[가-힣|a-z|A-Z|]+$/;
const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/ ;
const phoneRegex = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;

// 이미 사용중인 아이디 입니다. 다른 아이디를 입력해주세요.
let joinBlurMessages = ["아이디를 입력하세요.", "비밀번호를 입력하세요.", "비밀번호 확인을 위해 한번 더 입력하세요.", "이름을 입력하세요.", "이메일을 입력하세요.",  "휴대폰 번호를 입력하세요."];
let joinRegexMessages = ["영문 혹은 영문과 숫자를 조합하여 6자~16자로 입력해주세요.", "영어, 숫자, 특수문자를 섞어서 10~20자로 입력해주세요.", "위 비밀번호와 일치하지 않습니다. 다시 입력해주세요.", "이름을 확인해주세요.", "이메일 주소를 확인해주세요.", "휴대폰 번호를 확인하세요."];
const $joinHelp = $("div.join p.help");
let joinCheck;
let joinCheckAll = [false, false, false, false, false, false];
let checkId = false, checkEmail = false;

$joinInputs.eq(5).on("focus", function(){
    $(this).val($(this).val().replaceAll("-", ""));
});


$joinInputs.on("blur", function(){
    let i = $joinInputs.index($(this));
	console.log();
    let value = $(this).val();


    if(!value){
        $joinHelp.eq(i).text(joinBlurMessages[i]).css('color', 'red');
        joinCheck = false;
        joinCheckAll[i] = joinCheck;
        return;
    }

	$joinHelp.eq(i).text("");
    $joinHelp.eq(i).css('color', 'black');


    switch(i){
        case 0:
            joinCheck = value.length > 5 && value.length < 17 && idRegex.test(value) && !specialCharacterRegex.test(value);
            break;
        case 1:
            let numberCheck = value.search(passwordNumberRegex);
            let englishCheck = value.search(passwordEnglishRegex);
            let specialCharacterCheck = value.search(passwordSpecialCharacterRegex);

            var condition1 = (numberCheck >= 0 && englishCheck >= 0) && (englishCheck >= 0 && specialCharacterCheck >= 0) && (specialCharacterCheck >= 0 && numberCheck >= 0)
            var condition2 = value.length > 9 && value.length < 21;
            var condition3 = value.search(/\s/) < 0;
            
            joinCheck = condition1 && condition2 && condition3;
            break;
        case 2:
            joinCheck = $joinInputs.eq(i-1).val() == value;
            break;
        case 3:
			joinCheck = value.length > 1 && value.length < 21 && nameRegex.test(value) && !specialCharacterRegex.test(value);
            break;
        case 4:
			joinCheck = emailRegex.test(value);
            break;
        case 5:
            joinCheck = phoneRegex.test(value);
            if(joinCheck){
                $(this).val(value.replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`));
            }
            break;

    }

    joinCheckAll[i] = joinCheck;

    if(!joinCheck){
        $joinHelp.eq(i).text(joinRegexMessages[i]);
		$joinHelp.eq(i).css('color', 'red')
        return;
    }

	if(i != 0) {
	    $joinHelp.eq(i).text("");

	}
});

$('#idCheck').on('click', function() {
    const memberId = $('input[name="memberIdentification"]').val();
    if(!memberId) {
        alert('아이디를 입력해주세요.');
        return;
    }

    $.ajax({
        url: "checkIdOk.member",
        data: { memberIdentification: memberId },
        async: false,
        success: function(result) {
            result = JSON.parse(result);
            if(result.check) {
                alert('사용 가능한 아이디입니다.');
                checkId = true;
            } else {
                alert('이미 사용 중인 아이디입니다.');
                checkId = false;
            }
        },
        error: function(xhr, status, error) {
            alert('오류가 발생했습니다. 잠시 후 다시 시도해주세요.');
        }
    });
});




// 중복확인 버튼 클릭 이벤트 리스너 추가
$("#emailCheck").on("click", function() {
    // 이메일 주소가 입력되었는지 확인
    let emailValue = $("input[name='memberEmail']").val();
    if (emailValue === "") {
        alert("이메일 주소를 입력해주세요.");
        return;
    }

    // 서버로 이메일 주소 전송
    $.ajax({
        url: "checkEmailOk.member",
        type: "post",
        data: {memberEmail: emailValue},
        success: function(result) {
            let $help = $("input[name='memberEmail']").next();
            let checkEmail = false;
            result = JSON.parse(result);
            if(result.check) {
                alert('사용 가능한 아이디입니다.');
                checkId = true;
            } else {
                alert('이미 사용 중인 아이디입니다.');
                checkId = false;
            }
        },
        error: function() {
            alert("오류가 발생했습니다.");
        }
    });
});


/* 카카오 주소 api*/
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


const inputmale = document.querySelector("#gender-man");
const inputfemale = document.querySelector("#gender-woman");
const inputnone = document.querySelector("#gender-none");


const spanmale = document.querySelector("#male");
const spanfemale = document.querySelector("#female");
const spannone = document.querySelector("#none");

const divmale = document.querySelector("#divmale");
const divfemale = document.querySelector("#divfemale");
const divnone = document.querySelector("#divnone");


const inputpurchaser = document.querySelector("#grade-purchaser");
const inputseller = document.querySelector("#grade-seller");


const spanpurchaser = document.querySelector("#purchaser");
const spanseller = document.querySelector("#seller");

const divpurchaser = document.querySelector("#divpurchaser");
const divseller = document.querySelector("#divseller");

 inputmale.addEventListener("click", () => {
        spanmale.style.background="#5f0080";
		divmale.style.background="#fff";
		
		spanfemale.style.background="#fff";
		spanfemale.style.border="1px solid #dddddd";

		spannone.style.background="#fff";
		spanfemale.style.border="1px solid #dddddd";
		
    });


 inputfemale.addEventListener("click", () => {
        spanfemale.style.background="#5f0080";
		divfemale.style.background="#fff";
		
		spanmale.style.background="#fff";
		spanmale.style.border="1px solid #dddddd";
		
		spannone.style.background="#fff";
		spannone.style.border="1px solid #dddddd";
    });


 inputnone.addEventListener("click", () => {
        spannone.style.background="#5f0080";
		divnone.style.background="#fff";
		
		spanmale.style.background="#fff";
		spanmale.style.border="1px solid #dddddd";
		
		spanfemale.style.background="#fff";
		spanfemale.style.border="1px solid #dddddd";
    });


 inputpurchaser.addEventListener("click", () => {
        spanpurchaser.style.background="#5f0080";
		divpurchaser.style.background="#fff";
		
		spanseller.style.background="#fff";
		spanseller.style.border="1px solid #dddddd";
    });


 inputseller.addEventListener("click", () => {
        spanseller.style.background="#5f0080";
		divseller.style.background="#fff";
		
		spanpurchaser.style.background="#fff";
		spanpurchaser.style.border="1px solid #dddddd";
    });



function validateBirthday() {
  var year = document.getElementsByName("memberBirthday")[0].value;
  var month = document.getElementsByName("memberBirthday")[1].value;
  var day = document.getElementsByName("memberBirthday")[2].value;

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

/*
const $allAgreeCheckboxes = $(".css-s5xdrg input:not(#TermsAgreeAll)");
const $requiredChecks = $(".css-s5xdrg input[type='checkbox']");

$allAgreeCheckboxes.on("click", function() {
  $requiredChecks.prop("checked", $(this).is(":checked"));
});

$requiredChecks.on("click", function() {
  if (!$allAgreeCheckboxes.is(":checked")) {
    $allAgreeCheckboxes.prop("checked", $requiredChecks.filter(":checked").length === $requiredChecks.length);
  }
});

$("#RequiredTermsOfPrivacy").on("click", function() {
  if ($("#RequiredTermsOfPrivacy").is(":checked")) {
    $("#buttonId").click();
  }
});

function goInfo() {
  const check = $requiredChecks.is(":checked");
  if (!check) {
    const modalMessage = "<span>서비스를 이용하시기 위해서는</span><span>필수 약관에 동의해주세요!</span>";
    showWarnModal(modalMessage);
    return;
  }

  step = 2;

  $("div.css-qsz6yg").hide();
  $("div.css-1rlf2l5").hide();
  $("div.css-9hbb7g").show();
  $("#back").show();

  $([document.documentElement, document.body]).animate({
    scrollTop: 0
  }, 300);
}
*/