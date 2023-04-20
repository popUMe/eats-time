/**
 * 
아이디 찾기 js 파일

 */


/*태그들 선언*/

/*이메일인증 / 휴대폰인증 버튼들*/
let certificationButtons = $(".certification-button");

/*이름 입력창 태그*/
let name = $("#name");

/*이메일 입력창 태그*/
let email = $("#email");

/*휴대폰 번호 입력창 태그*/
let phone = $("#phone");

/*폰 인증 후 확인 버튼*/
let phoneConfirmButton = $(".phone-confirmButton");

/*인증번호 입력창 태그*/
let verificationNumber = $("#verification-number");

/*휴대폰 인증번호 받기 버튼*/
let phoneButton = $(".phone-button");

/*이메일 인증 버튼*/
let emailButton = $(".email-button");

/*휴대폰 번호 입력창 input 태그 */
let phoneInput = $(".phone-input");

/*이메일 입력창 input 태그*/
let emailInput =$(".email-input");

/*모달 #modalSumit의 확인 버튼*/
let closeButtonSubmit =  $('.close-button-submit');

/*이메일 인증 버튼 / 폰인증 번호 받기 버튼/ 인증번호 입력후 확인 버튼 3개 변수 선언*/
let buttons = $('.button');



/*플래그선언*/
let nameCheck1 = false;
let nameCheck2 = false;
let emailCheck = false;
let phoneCheck = false;

/*타이머 구현*/
// 토큰 유효시간 타이머
let counter = 0;
let timeleft = 180; // 제한 시간 지정 값
let setinterval = setInterval(timeIt, 1200);



/*혹시 모를 이 페이지가 열리면 타이머 값 초기화*/
$(document).ready(function(){
	clearInterval(setinterval);
	counter = 0;
})




/*convertSeconds타이머 함수 사용*/
/*타이머 태그 안에 남은 시간 넣기*/
$(".timer").html(convertSeconds(timeleft - counter))


/*이름에 특수문자 금지*/

name.bind("input", function() {
	re = /[~!@\#$%^&*\()\-=+_']/gi;
	let temp = name.val();
	if (re.test(temp)) { //특수문자가 포함되면 삭제하여 값으로 다시셋팅
		name.val(temp.replace(re, ""));
	}
});



/*유효성검사 이름 뭐라도 입력해야됌*/


/* 포커스 입력을 안해도 입력태그 밖으로 나가면 아래 경고문구나오기*/
name.bind('focus', function() {

	name.blur(function(e) {

		if ($(e.target).val() == "") {
			$(".error1").text("가입 시 등록한 이름을 입력해주세요");
		} else {
			$(".error1").text("");
		}

	})

})

email.bind('focus', function() {

	email.blur(function(e) {

		if ($(e.target).val() == "") {
			$(".error2").text("가입 시 등록한 이메일을 입력해주세요");
		} else if (!fn_emailChk($(e.target).val())) {
			$(".error2").text("올바른 이메일 형식을 입력해 주세요");
		} else {
			$(".error2").text("");
		}

	})

})


/*키를 입력할 때마다 검사해서 아래 문구나오기*/



name.keyup(function() {
	if (name.val() == "") {
		$(".error1").text("가입 시 등록한 이름을 입력해주세요");
		nameCheck1 = false;
		nameCheck2 = false;
	} else {
		$(".error1").text("");
		nameCheck1 = true;
		nameCheck2 = true;
	}
	EmailCheckflag()
	PhoneCheckflag()

})

email.keyup(function() {
	if (email.val() == "") {
		$(".error2").text("가입 시 등록한 이메일을 입력해주세요");
		emailCheck = false;
	} else if (!fn_emailChk(email.val())) {
		$(".error2").text("올바른 이메일 형식을 입력해 주세요");
		emailCheck = false;
	} else {
		$(".error2").text("");
		emailCheck = true;
	}

	EmailCheckflag()

})


/*휴대폰 번호 유효성 검사*/

phone.bind('focus', function() {

	phone.blur(function(e) {
		if ($(e.target).val() == "") {
			$(".error3").text("가입 시 등록한 휴대폰 번호를 입력해주세요");
		} else {
			$(".error3").text("");
		}

	})

})


/*휴대폰 번호 입력 실시간 검사*/
phone.keyup(function() {
	if (phone.val() == "") {
		$(".error3").text("가입 시 등록한 휴대폰 번호를 입력해주세요");
		phoneCheck = false;
	} else if (!fn_mbtlnumChk(phone.val())) {
		$(".error3").text("휴대폰을 정확히 입력해주세요");
		phoneCheck = false;
	} else {
		$(".error3").text("");
		phoneCheck = true;
	}
	PhoneCheckflag()
})







/*x 버튼 js*/

/*나중에 코드 정리...*/
/*위에 이름*/
$(".input-content1").keyup(function() {
	if ($(".input-content1").val().length == 0) {
		$(".textbutton1").css('visibility', 'hidden');
	} else {
		$(".textbutton1").css('visibility', 'visible');
	}
});

/*이름 지움 x 버튼*/
$('.textbutton1').on("click", function() {
	emailButton.prop("background", "rgb(221, 221, 221)");
	emailButton.attr("disabled", "");
	phoneButton.prop("background", "rgb(221, 221, 221)");
	phoneButton.attr("disabled", "");
	$(".input-content1").val("");
	$(".textbutton1").css('visibility', 'hidden');
	$(".error1").text("가입 시 등록한 이름을 입력해주세요");
	/*플래그 초기화*/
	nameCheck1 = false;
	nameCheck2 = false;
})

/* 탭으로 이동금지 */
$('.textbutton1').attr("tabindex", "-1");
$('.textbutton2').attr("tabindex", "-1");
$('.textbutton3').attr("tabindex", "-1");
$('.textbutton4').attr("tabindex", "-1");


/*이메일*/
$(".input-content2").keyup(function() {
	if ($(".input-content2").val().length == 0) {
		$(".textbutton2").css('visibility', 'hidden');
	} else {
		$(".textbutton2").css('visibility', 'visible');
	}
});

/*이메일 지움 x 버튼*/
$('.textbutton2').on("click", function() {
	emailButton.prop("background", "rgb(221, 221, 221)");
	emailButton.attr("disabled", "");
	$(".input-content2").val("");
	$(".textbutton2").css('visibility', 'hidden');
	$(".error2").text("가입 시 등록한 이메일을 입력해주세요");
	/*플래그초기화*/
	emailCheck = false;
})


/* 휴대폰 번호 입력창*/
$(".input-content3").keyup(function() {
	if ($(".input-content3").val().length == 0) {
		$(".textbutton3").css('visibility', 'hidden');
	} else {
		$(".textbutton3").css('visibility', 'visible');
	}
});

/* 휴대폰 번호 지움 x 버튼*/
$('.textbutton3').on("click", function() {
	phoneButton.prop("background", "rgb(221, 221, 221)");
	phoneButton.attr("disabled", "");
	$(".input-content3").val("");
	$(".textbutton3").css('visibility', 'hidden');
	$(".error3").text("가입 시 등록한 휴대폰 번호를 입력해 주세요");
	/*플래그초기화*/
	phoneCheck = false;
})


/*인증번호 x 버튼*/
$('.textbutton4').on("click", function() {
	phoneConfirmButton.prop("background", "rgb(221, 221, 221)");
	phoneConfirmButton.attr("disabled", "");
	$(".input-content4").val("");
	$(".textbutton4").css('visibility', 'hidden');
	$(".error4").text("인증번호를 입력해 주세요");
})






/*인증번호 입력창*/
$(".input-content4").keyup(function() {
	if ($(".input-content4").val().length == 0) {
		$(".textbutton4").css('visibility', 'hidden');
	} else {
		$(".textbutton4").css('visibility', 'visible');
	}
});





/* 모달창 구현해보기*/
/*회원정보가 안맞을때*/
/*이메일 버튼쪽*/
emailButton.on("click", function() {
	$('.banner-online').fadeIn();
	$('#modalSubmit').fadeIn();
	$("html").css("overflow-y", "hidden");
	$(".modal-content").html("가입시 입력하신 회원 정보가 맞는지 다시 한번 확인해 주세요.");
})

closeButtonSubmit.click(function() {
	$('.banner-online').fadeOut();
	$('#modalSubmit').fadeOut();
	$("html").css("overflow-y", "");
})



/*휴대폰인증버튼 누를때*/


certificationButtons.eq(0).on("click", function() {
	phoneCertification();

})

/*이메일 인증버튼 눌를때*/

/*인증번호 입력 창이 block이면 클릭이벤트 막고 모달창 띄우기*/


certificationButtons.eq(1).on("click", function() {

	if ($(".certification-number-wrap").css("display") == "block") {
		$('.banner-online').fadeIn();
		$('#modal2').fadeIn();
		$("html").css("overflow-y", "hidden");

		certificationButtons.eq(0).on("click", function() {
			phoneCertification()
		})


		$('.close-button-cancle').click(function() {
			$('.banner-online').fadeOut();
			$('#modal2').fadeOut();
			$("html").css("overflow-y", "");
		})

		$('.email-move-button').click(function() {
			$('.banner-online').fadeOut();
			$('#modal2').fadeOut();
			$("html").css("overflow-y", "");

			emailCertification();



		})

	} else {

		emailCertification();
	}

});


/*인증번호 버튼 눌렀을때*/
$('.phone-button').on("click", function() {
	$('.banner-online').fadeIn();
	$('#modal').fadeIn();
	$("html").css("overflow-y", "hidden");
	/*db와 검사해서 아래 모달이 뜨면 닫기 버튼 누르면 이제 */
	$(".modal-content1").html("인증번호가 발송되었습니다. \n 3분 안에 인증번호를 입력해 주세요.");
	name.attr('readonly', true);
	phone.attr('readonly', true);

	/*인증번호 입력창 초기화*/
	$(".input-content4").val("");

	/*지움 버튼 안보이게*/
	$(".textbutton1").css('visibility', 'hidden');
	$(".textbutton3").css('visibility', 'hidden');


})




/*#modal 안에 확인 버튼 클릭시*/
$(".close-button").on("click", function() {
	$('.banner-online').fadeOut();
	$('#modal').fadeOut();
	$(".certification-number-wrap").css("display", "block");
	phoneButton.attr("disabled", "");
	phoneButton.css("display", "none");
	phoneConfirmButton.css("display", "block");
	//인증번호 누르고 타이머함수
	clearInterval(setinterval);
	counter = 0;
	setinterval = setInterval(timeIt, 1200);
})



/*인증번호버튼 누르고 재발송 버튼 구현*/

$(".resend-button").on("click", function() {
	$('.banner-online').fadeIn();
	$('#modal').fadeIn();
	$("html").css("overflow-y", "hidden");
	$(".modal-content1").html("인증번호가 발송되었습니다. <br> 3분 안에 인증번호를 입력해 주세요.");
	/*인증번호 재발송누르면 안에 인증번호 값 초기화후 밑에 에러메세지 다시*/
	verificationNumber.val("");
	$(".error4").text("인증번호를 입력해 주세요");
	/*확인 버튼 비활성화*/
	phoneConfirmButton.attr("disabled", "");
	phoneConfirmButton.prop("background", "rgb(221, 221, 221)");
	//인증번호누르고 타이머 함수
	clearInterval(setinterval);
	counter = 0;
	setinterval = setInterval(timeIt, 1200);


})




/*인증번호 입력후 새로운 확인 버튼 이벤트*/
phoneConfirmButton.on("click", function() {
	/*뒤로가기해도 모달창없애기*/
	$('.banner-online').css("display", "none");
	$('#modal').css("display", "none");
	$("html").css("overflow-y", "");
	/*다시 초기화*/
	counter = 0;
	clearInterval(setinterval);
	/*내용초기화*/
	name.val("");
	phone.val("");
	/*이름입력칸 핸드폰입력칸 수정가능하게 수정*/
	name.attr('readonly', false);
	phone.attr('readonly', false);

	/*뒤로가기를 했을때 인증번호 받기로 바꾸기 위한 작업*/
	/*버튼체인지*/
	/*무조건 초기값은 비활성화*/
	phoneButton.css("display", "block");
	phoneButton.prop("background", "rgb(221, 221, 221)");
	phoneButton.attr("disabled", "");
	phoneConfirmButton.css("display", "none");

	/*확인칸 비활성화*/
	phoneConfirmButton.prop("background", "rgb(221, 221, 221)");
	phoneConfirmButton.attr("disabled", "");

	/*인증번호칸 없애기*/
	$(".certification-number-wrap").css("display", "none");

	/*버튼플래그 초기화*/
	nameCheck1 = false;
	nameCheck2 = false;
	emailCheck = false;
	phoneCheck = false;

	location.href = "findIdOk.jsp";
})





/*인증번호 정규식*/


/*인증번호 입력창에 번호만 입력할 수 있게*/
$("input:text[numberOnly]").bind("input", function() {
    $(this).val($(this).val().replace(/[^0-9]/g,""));
});

/*인증번호 입력창 실시간검사*/
verificationNumber.keyup(function() {

	if (verificationNumber.val() == "") {
		$(".error4").text("인증번호를 입력해주세요");
		phoneConfirmButton.prop("background", "rgb(221, 221, 221)");
		phoneConfirmButton.attr("disabled", "");
	} else if (verificationNumber.val().length < 7) {
		$(".error4").text("7자리를 입력해주세요.");
		phoneConfirmButton.prop("background", "rgb(221, 221, 221)");
		phoneConfirmButton.attr("disabled", "");
	} else {
		$(".error4").text("");
		phoneConfirmButton.removeAttr("disabled");
		phoneConfirmButton.prop("background", "#ff4f32");
	}
})


/*인증번호 입력창 focus*/

verificationNumber.bind('focus', function() {

	verificationNumber.blur(function(e) {

		if ($(e.target).val() == "") {
			$(".error4").text("인증번호를 입력해주세요");
		} else if (verificationNumber.val().length < 7) {
			$(".error4").text("7자리를 입력해주세요.");
		} else {
			$(".error4").text("");
		}

	})

})


/*함수 선언부 ##############################################*/


/*휴대폰 유효성검사*/
function fn_mbtlnumChk(mbtlnum) {
	let phoneExp = /^(?:(010\d{4})|(01[1|6|7|8|9]\d{3,4}))(\d{4})$/;
	if (!phoneExp.test(mbtlnum)) {
		return false;
	}
	return true;
}

/*실시간 인터벌 주기전 타이머 변경 함수*/
function timeIt() {

	/*30초후 모달*/

	if (counter == 180) {
		clearInterval(setinterval);
		return;   // 시간이 끝났을 때 멈추는 역할
	}
	counter++
	$(".timer").html(convertSeconds(timeleft - counter));
}





/*이메일 유효성검사 함수*/
function fn_emailChk(email) {
	let regExp = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.[a-zA-Z]{1,4}$/;
	if (!regExp.test(email)) {
		return false;
	}
	return true;
}



/*convertSeconds타이머 함수*/
function convertSeconds(s) {
	console.log(s)
	let min = Math.floor(s / 60);
	let sec = s % 60;

	/*시간이 다되면 모달창 띄우기*/
	if ((s) == 0) {
		timeoutModal();
	}


	if (sec.toString().length == 1) {
		return min + ':' + "0" + sec;
	}
	return min + ':' + sec;
}

/*시간 완료 되면 뜰 모달창을 함수로 선언*/
function timeoutModal() {
	/*시간 완료되었다는 모달창 띄우기*/
	$('.banner-online').fadeIn();
	$('#modalSubmit').fadeIn();
	$("html").css("overflow-y", "hidden");
	$(".modal-content").html("인증번호가 발송되었습니다. \n 3분 안에 인증번호를 입력해 주세요.");

	closeButtonSubmit.click(function() {
		$('.banner-online').fadeOut();
		$('#modalSubmit').fadeOut();
		$("html").css("overflow-y", "");
		/*확인 버튼 비활성화*/
		phoneConfirmButton.attr("disabled", "");
		phoneConfirmButton.prop("background", "rgb(221, 221, 221)");

	})

}


/*이메일인증 이랑 휴대폰 인증 때 버튼 활성화 플래그 함수*/
/*이메일 일때*/
function EmailCheckflag() {
	if (nameCheck1 && emailCheck) {
		emailButton.removeAttr("disabled");
		emailButton.prop("background", "#ff4f32");
		phoneButton.prop("background", "rgb(221, 221, 221)");
		phoneButton.attr("disabled", "");
	} else {
		emailButton.prop("background", "rgb(221, 221, 221)");
		emailButton.attr("disabled", "");
	}
}

/*휴대폰일때*/

function PhoneCheckflag() {
	if (nameCheck2 && phoneCheck) {
		phoneButton.removeAttr("disabled");
		phoneButton.prop("background", "#ff4f32");
		emailButton.prop("background", "rgb(221, 221, 221)");
		emailButton.attr("disabled", "");
	} else {
		phoneButton.prop("background", "rgb(221, 221, 221)");
		phoneButton.attr("disabled", "");
	}
}


/*휴대폰인증 버튼 내용 함수로 담기*/

function phoneCertification() {
	certificationButtons.eq(0).css("color", "#ff4f32");
	certificationButtons.eq(0).css("font-weight", "bold");
	certificationButtons.eq(0).css("box-shadow", "0px -2px 0px 0px #ff4f32 inset");
	certificationButtons.eq(1).css("color", "rgb(102, 102, 102)");
	certificationButtons.eq(1).css("font-weight", "400");
	certificationButtons.eq(1).css("box-shadow", "0px -0.5px 0px 0px rgb(221, 221, 221) inset");

	/*이메일 입력창 사라지게하기*/
	emailInput.css("display", "none");
	phoneInput.css("display", "block");

	/*버튼체인지*/
	phoneButton.css("display", "block");
	emailButton.css("display", "none");



	/*안에 입력값 날려주기*/
	name.val("");
	email.val("");

	/*지우는 버튼도 숨기기*/
	$(".textbutton1").css('visibility', 'hidden');
	$(".textbutton2").css('visibility', 'hidden');

	/*에러메세지 초기화*/
	$(".error1").text("");
	$(".error2").text("");
	$(".error3").text("");


	/*버튼 비활성화*/
	phoneButton.prop("background", "rgb(221, 221, 221)");
	phoneButton.attr("disabled", "");
	emailButton.prop("background", "rgb(221, 221, 221)");
	emailButton.attr("disabled", "");

	/*인증번호 확인버튼*/
	phoneConfirmButton.prop("background", "rgb(221, 221, 221)");
	phoneConfirmButton.attr("disabled", "");
	phoneConfirmButton.css("display", "none");

	/*이름이랑 폰번호 수정가능하게 바꾸기*/
	name.attr('readonly', false);
	phone.attr('readonly', false);


	/*버튼플래그 초기화*/
	nameCheck1 = false;
	nameCheck2 = false;
	emailCheck = false;
	phoneCheck = false;

	/*다시 초기화*/
	counter = 0;
	clearInterval(setinterval);

}

/* 이메일 인증 버튼 내용 함수로 담기*/

function emailCertification() {
	certificationButtons.eq(1).css("color", "#ff4f32");
	certificationButtons.eq(1).css("font-weight", "bold");
	certificationButtons.eq(1).css("box-shadow", "0px -2px 0px 0px #ff4f32 inset");
	certificationButtons.eq(0).css("color", "rgb(102, 102, 102)");
	certificationButtons.eq(0).css("font-weight", "400");
	certificationButtons.eq(0).css("box-shadow", "0px -0.5px 0px 0px rgb(221, 221, 221) inset");

	/*이메일인증때는 휴대폰입력칸 사라지게하기*/
	emailInput.css("display", "block");
	phoneInput.css("display", "none");

	/*버튼체인지*/
	phoneButton.css("display", "none");
	emailButton.css("display", "block");


	/*안에 입력값 날려주기*/
	name.val("");
	phone.val("");

	/*지우는 버튼도 숨기기*/
	$(".textbutton1").css('visibility', 'hidden');
	$(".textbutton3").css('visibility', 'hidden');

	/*에러메세지 초기화*/
	$(".error1").text("");
	$(".error2").text("");
	$(".error3").text("");

	/*버튼 비활성화*/
	phoneButton.prop("background", "rgb(221, 221, 221)");
	phoneButton.attr("disabled", "");
	emailButton.prop("background", "rgb(221, 221, 221)");
	emailButton.attr("disabled", "");


	/*인증번호 확인버튼*/
	phoneConfirmButton.prop("background", "rgb(221, 221, 221)");
	phoneConfirmButton.attr("disabled", "");
	phoneConfirmButton.css("display", "none");

	/*인증번호 칸 초기화*/
	$(".certification-number-wrap").css("display", "none");

	/*이름이랑 폰번호 수정가능하게 바꾸기*/
	name.attr('readonly', false);
	phone.attr('readonly', false);


	/*인증번호 value 초기화*/
	$(".input-content4").text("");

	/*버튼플래그 초기화*/
	nameCheck1 = false;
	nameCheck2 = false;
	emailCheck = false;
	phoneCheck = false;

	/*다시 초기화*/
	counter = 0;
	clearInterval(setinterval);

}




