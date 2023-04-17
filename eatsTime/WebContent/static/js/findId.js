/**
 * 
아이디 찾기 js 파일

 */

let checkNumber = false;

/*이메일*/
function fn_emailChk(email) {
	let regExp = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.[a-zA-Z]{1,4}$/;
	if (!regExp.test(email)) {
		return false;
	}
	return true;
}

/*이름에 특수문자 금지*/

$("#name").bind("input", function() {
	re = /[~!@\#$%^&*\()\-=+_']/gi;
	let temp = $("#name").val();
	if (re.test(temp)) { //특수문자가 포함되면 삭제하여 값으로 다시셋팅
		$("#name").val(temp.replace(re, ""));
	}
});


/*휴대폰 유효성검사*/
function fn_mbtlnumChk(mbtlnum) {
	let phoneExp = /^(?:(010\d{4})|(01[1|6|7|8|9]\d{3,4}))(\d{4})$/;
	if (!phoneExp.test(mbtlnum)) {
		return false;
	}
	return true;
}


/*휴대폰 11자리로 설정*/
function maxLengthCheck(object) {
	if (object.value.length > object.maxLength) {
		object.value = object.value.slice(0, object.maxLength);
	}
}




/*유효성검사 이름 뭐라도 입력해야됌*/


/* 포커스 입력을 안해도 입력태그 밖으로 나가면 아래 경고문구나오기*/
$("#name").bind('focus', function() {

	$("#name").blur(function(e) {

		if ($(e.target).val() == "") {
			$(".error1").text("가입 시 등록한 이름을 입력해주세요");
		} else {
			$(".error1").text("");
		}

	})

})

$("#email").bind('focus', function() {

	$("#email").blur(function(e) {

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


let nameCheck1 = false;
let nameCheck2 = false;
let emailCheck = false;
let phoneCheck = false;

$("#name").keyup(function() {
	if ($("#name").val() == "") {
		$(".error1").text("가입 시 등록한 이름을 입력해주세요");
		nameCheck = false;
	} else {
		$(".error1").text("");
		nameCheck = true;
	}
	EmailCheckflag()
	PhoneCheckflag()

})

$("#email").keyup(function() {
	if ($("#email").val() == "") {
		$(".error2").text("가입 시 등록한 이메일을 입력해주세요");
		emailCheck = false;
	} else if (!fn_emailChk($("#email").val())) {
		$(".error2").text("올바른 이메일 형식을 입력해 주세요");
		emailCheck = false;
	} else {
		$(".error2").text("");
		emailCheck = true;
	}

	EmailCheckflag()

})


/*휴대폰 번호 유효성 검사*/

$("#phone").bind('focus', function() {

	$("#phone").blur(function(e) {
		if ($(e.target).val() == "") {
			$(".error3").text("가입 시 등록한 휴대폰 번호를 입력해주세요");
		} else {
			$(".error3").text("");
		}

	})

})



$("#phone").keyup(function() {
	if ($("#phone").val() == "") {
		$(".error3").text("가입 시 등록한 휴대폰 번호를 입력해주세요");
		phoneCheck = false;
	} else if (!fn_mbtlnumChk($("#phone").val())) {
		$(".error3").text("휴대폰을 정확히 입력해주세요");
		phoneCheck = false;
	} else {
		$(".error3").text("");
		phoneCheck = true;
	}
	PhoneCheckflag()
})



/*이메일 일때*/
function EmailCheckflag() {
	if (nameCheck && emailCheck) {
		$(".email-button").removeAttr("disabled");
		$(".email-button").prop("background", "rgb(95, 0, 128)");
		$(".phone-button").prop("background", "rgb(221, 221, 221)");
		$(".phone-button").attr("disabled", "");
	} else {
		$(".email-button").prop("background", "rgb(221, 221, 221)");
		$(".email-button").attr("disabled", "");
	}
}

/*휴대폰일때*/

function PhoneCheckflag() {
	if (nameCheck && phoneCheck) {
		$(".phone-button").removeAttr("disabled");
		$(".phone-button").prop("background", "rgb(95, 0, 128)");
		$(".email-button").prop("background", "rgb(221, 221, 221)");
		$(".email-button").attr("disabled", "");
	} else {
		$(".phone-button").prop("background", "rgb(221, 221, 221)");
		$(".phone-button").attr("disabled", "");
	}
}



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
	$(".email-button").prop("background", "rgb(221, 221, 221)");
	$(".email-button").attr("disabled", "");
	$(".phone-button").prop("background", "rgb(221, 221, 221)");
	$(".phone-button").attr("disabled", "");
	$(".input-content1").val("");
	$(".textbutton1").css('visibility', 'hidden');
	$(".error1").text("가입 시 등록한 이름을 입력해주세요");
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
	$(".email-button").prop("background", "rgb(221, 221, 221)");
	$(".email-button").attr("disabled", "");
	$(".input-content2").val("");
	$(".textbutton2").css('visibility', 'hidden');
	$(".error2").text("가입 시 등록한 이메일을 입력해주세요");
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
	$(".phone-button").prop("background", "rgb(221, 221, 221)");
	$(".phone-button").attr("disabled", "");
	$(".input-content3").val("");
	$(".textbutton3").css('visibility', 'hidden');
	$(".error3").text("가입 시 등록한 휴대폰 번호를 입력해 주세요");
})


/*인증번호 x 버튼*/
$('.textbutton4').on("click", function() {
	$(".phone-button").prop("background", "rgb(221, 221, 221)");
	$(".phone-button").attr("disabled", "");
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

$('.email-button').on("click", function() {
	$('.banner-online').fadeIn();
	$('#modalSubmit').fadeIn();
	$("html").css("overflow-y", "hidden");
	$(".modal-content").html("가입시 입력하신 회원 정보가 맞는지 다시 한번 확인해 주세요.");
})

$('.close-button-submit').click(function() {
	$('.banner-online').fadeOut();
	$('#modalSubmit').fadeOut();
	$("html").css("overflow-y", "");
})



/*휴대폰인증버튼 누를때*/


$(".certification-button").eq(0).on("click", function() {
	phoneCertification();

})

/*이메일 인증버튼 눌를때*/

/*인증번호 입력 창이 block이면 클릭이벤트 막고 모달창 띄우기*/



$(".certification-button").eq(1).on("click", function() {

	if ($(".certification-number-wrap").css("display") == "block") {
		$('.banner-online').fadeIn();
		$('#modal2').fadeIn();
		$("html").css("overflow-y", "hidden");

		$(".certification-button").eq(0).on("click", function() {
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
	$("#name").attr('readonly', true);
	$("#phone").attr('readonly', true);
})

$(".close-button").on("click", function() {
	$('.banner-online').fadeOut();
	$('#modal').fadeOut();
	$(".certification-number-wrap").css("display", "block");
	$(".phone-button").attr("disabled", "");
	$(".phone-button").css("display", "none");
	$(".phone-confirmButton").css("display", "block");
})



/*인증번호버튼 누르고 재발송 버튼 구현*/

$(".resend-button").on("click", function() {
	$('.banner-online').fadeIn();
	$('#modal').fadeIn();
	$("html").css("overflow-y", "hidden");
	$(".modal-content1").html("재발송 되었습니다.");
})




/*인증번호 입력후 새로운 확인 버튼 이벤트*/
$(".phone-confirmButton").on("click", function() {
	/*뒤로가기해도 모달창없애기*/
	$('.banner-online').css("display", "none");
	$('#modal').css("display", "none");
	$("html").css("overflow-y", "");
	location.href = "findIdOk.jsp";
})





/*인증번호 유효성 검사*/
$("#verification-number").keyup(function() {
	if ($("#verification-number").val() == "") {
		$(".error4").text("인증번호를 입력해주세요");
		$(".phone-button").prop("background", "rgb(221, 221, 221)");
		$(".phone-button").attr("disabled", "");
	} else if ($("#verification-number").val().length < 7) {
		$(".error4").text("7자리를 입력해주세요.");
		$(".phone-button").prop("background", "rgb(221, 221, 221)");
		$(".phone-button").attr("disabled", "");
	} else {
		$(".error4").text("");
		$(".phone-confirmButton").removeAttr("disabled");
		$(".phone-confirmButton").prop("background", "rgb(95, 0, 128)");
	}
})





/*휴대폰인증 버튼 내용 함수로 담기*/

function phoneCertification() {
	$(".certification-button").eq(0).css("color", "rgb(95, 0, 128)");
	$(".certification-button").eq(0).css("font-weight", "bold");
	$(".certification-button").eq(0).css("box-shadow", "0px -2px 0px 0px rgb(95, 0, 128) inset");
	$(".certification-button").eq(1).css("color", "rgb(102, 102, 102)");
	$(".certification-button").eq(1).css("font-weight", "400");
	$(".certification-button").eq(1).css("box-shadow", "0px -0.5px 0px 0px rgb(221, 221, 221) inset");

	/*이메일 입력창 사라지게하기*/
	$(".email-input").css("display", "none");
	$(".phone-input").css("display", "block");

	/*버튼체인지*/
	$(".phone-button").css("display", "block");
	$(".email-button").css("display", "none");



	/*안에 입력값 날려주기*/
	$("#name").val("");
	$("#email").val("");

	/*지우는 버튼도 숨기기*/
	$(".textbutton1").css('visibility', 'hidden');
	$(".textbutton2").css('visibility', 'hidden');

	/*에러메세지 초기화*/
	$(".error1").text("");
	$(".error2").text("");
	$(".error3").text("");


	/*버튼 비활성화*/
	$(".phone-button").prop("background", "rgb(221, 221, 221)");
	$(".phone-button").attr("disabled", "");
	$(".email-button").prop("background", "rgb(221, 221, 221)");
	$(".email-button").attr("disabled", "");

	/*인증번호 확인버튼*/
	$(".phone-confirmButton").prop("background", "rgb(221, 221, 221)");
	$(".phone-confirmButton").attr("disabled", "");
	$(".phone-confirmButton").css("display", "none");

	/*이름이랑 폰번호 수정가능하게 바꾸기*/
	$("#name").attr('readonly', false);
	$("#phone").attr('readonly', false);
}

/* 이메일 인증 버튼 내용 함수로 담기*/

function emailCertification() {
	$(".certification-button").eq(1).css("color", "rgb(95, 0, 128)");
	$(".certification-button").eq(1).css("font-weight", "bold");
	$(".certification-button").eq(1).css("box-shadow", "0px -2px 0px 0px rgb(95, 0, 128) inset");
	$(".certification-button").eq(0).css("color", "rgb(102, 102, 102)");
	$(".certification-button").eq(0).css("font-weight", "400");
	$(".certification-button").eq(0).css("box-shadow", "0px -0.5px 0px 0px rgb(221, 221, 221) inset");

	/*이메일인증때는 휴대폰입력칸 사라지게하기*/
	$(".email-input").css("display", "block");
	$(".phone-input").css("display", "none");

	/*버튼체인지*/
	$(".phone-button").css("display", "none");
	$(".email-button").css("display", "block");


	/*안에 입력값 날려주기*/
	$("#name").val("");
	$("#phone").val("");

	/*지우는 버튼도 숨기기*/
	$(".textbutton1").css('visibility', 'hidden');
	$(".textbutton3").css('visibility', 'hidden');

	/*에러메세지 초기화*/
	$(".error1").text("");
	$(".error2").text("");
	$(".error3").text("");

	/*버튼 비활성화*/
	$(".phone-button").prop("background", "rgb(221, 221, 221)");
	$(".phone-button").attr("disabled", "");
	$(".email-button").prop("background", "rgb(221, 221, 221)");
	$(".email-button").attr("disabled", "");


	/*인증번호 확인버튼*/
	$(".phone-confirmButton").prop("background", "rgb(221, 221, 221)");
	$(".phone-confirmButton").attr("disabled", "");
	$(".phone-confirmButton").css("display", "none");

	/*인증번호 칸 초기화*/
	$(".certification-number-wrap").css("display", "none");

	/*이름이랑 폰번호 수정가능하게 바꾸기*/
	$("#name").attr('readonly', false);
	$("#phone").attr('readonly', false);


}
