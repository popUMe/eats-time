/**
 * 
 */

let pwCheck1 = false;
let pwCheck2 = false;
let pwCheck3 = false;
let rePwCheck = false;



/*새 비밀번호 등록*/
$("#password").one('click', function() {
	$(".checkPw").removeClass("css-ua37vt css-1319hys")
	$(".checkPw").addClass("css-alright")
	$(".checkPw").eq(0).text("8자리 ~ 20자리 이내로 입력해주세요.");
	$(".checkPw").eq(1).text("비밀번호는 공백 없이 입력해주세요.");
	$(".checkPw").eq(2).text("영문,숫자, 특수문자를 혼합하여 입력해주세요.");

})

$("#password").blur(function(e) {
	if ($(e.target).val() == "") {
		$(".checkPw").removeClass("css-alright css-1319hys")
		$(".checkPw").addClass("css-ua37vt")
		$(".checkPw").eq(0).text("8자리 ~ 20자리 이내로 입력해주세요.");
		$(".checkPw").eq(1).text("비밀번호는 공백 없이 입력해주세요.");
		$(".checkPw").eq(2).text("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
	}

})


/*새 비밀번호 확인*/
$("#passwordConfirm").one('click', function() {
	$(".checkConfirm").removeClass("css-ua37vt css-1319hys")
	$(".checkConfirm").addClass("css-alright")
	$(".checkConfirm").text("동일한 비밀번호를 입력해주세요.");


})

$("#passwordConfirm").blur(function(e) {

	if ($(e.target).val() == "") {
		$(".checkConfirm").text("동일한 비밀번호를 입력해주세요.");
		$(".checkConfirm").removeClass("css-alright css-1319hys")
		$(".checkConfirm").addClass("css-ua37vt")
	}


})

/*탭으로 이동할때 오류 막기*/
$("#passwordConfirm").focus(function() {

	$(".checkConfirm").text("동일한 비밀번호를 입력해주세요.");
	$(".checkConfirm").removeClass("css-alright css-1319hys")
	$(".checkConfirm").addClass("css-ua37vt")

})

// 새비밀번호 등록
$("#password").keyup(function(e) {


	// jQuery 객체 선언부 (태그선언)
	let pw = $("#password");
	let rePw = $("#passwordConfirm");
	let checkPws = $(".checkPw");
	let reChecks = $(".checkConfirm");

	// 비밀번호 정규식
	let num = pw.val().search(/[0-9]/g);
	let eng = pw.val().search(/[a-z]/ig);
	let spe = pw.val().search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

	//입력을 하는 순가 빨간색
	checkPws.removeClass("css-alright css-1319hys")
	checkPws.addClass("css-ua37vt")



	if (rePw.val()) {
		if (rePw.val() != "" && rePw.val() == pw.val()) {
			reChecks.removeClass("css-alright css-ua37vt")
			reChecks.addClass("css-1319hys")
		} else {
			reChecks.removeClass("css-alright css-1319hys")
			reChecks.addClass("css-ua37vt")
		}
	}

	// 첫번째 checkPw 검사
	if (pw.val().length < 8 || pw.val().length > 20) {
		checkPws.eq(0).removeClass("css-alright css-1319hys")
		checkPws.eq(0).addClass("css-ua37vt")
		pwCheck1 = false;
	} else {
		checkPws.eq(0).removeClass("css-alright css-ua37vt")
		checkPws.eq(0).addClass("css-1319hys")
		pwCheck1 = true;
	}

	// 두번째 checkPw 검사
	if (pw.val().search(/\s/) != -1) {
		checkPws.eq(1).removeClass("css-alright css-1319hys")
		checkPws.eq(1).addClass("css-ua37vt")
		pwCheck2 = false;
	} else {
		checkPws.eq(1).removeClass("css-alright css-ua37vt")
		checkPws.eq(1).addClass("css-1319hys")
		pwCheck2 = true;
	}


	// 세번째 checkPw 검사

	if (num < 0 || eng < 0 || spe < 0) {
		checkPws.eq(2).removeClass("css-alright css-1319hys")
		checkPws.eq(2).addClass("css-ua37vt")
		pwCheck3 = false;
	} else {
		checkPws.eq(2).removeClass("css-alright css-ua37vt")
		checkPws.eq(2).addClass("css-1319hys")
		pwCheck3 = true;
	}

	checkButton()

})


// 새 비밀번호 확인
$("#passwordConfirm").keyup(function() {

	let pw = $('#password');
	let rePw = $("#passwordConfirm");
	let reChecks = $(".checkConfirm");


	if (rePw.val() != "" && rePw.val() == pw.val()) {
		reChecks.removeClass("css-alright css-ua37vt")
		reChecks.addClass("css-1319hys")
		rePwCheck = true;
	} else {
		reChecks.removeClass("css-alright css-1319hys")
		reChecks.addClass("css-ua37vt")
		rePwCheck = false;
	}

	checkButton()

});

function checkButton() {
	if (pwCheck1 && pwCheck2 && pwCheck3 && rePwCheck && ($("#password").val() == $("#passwordConfirm").val())) {
		$(".button").removeAttr("disabled");
		$(".button").css("background-color", "rgb(95, 0, 128)");
	} else {
		$(".button").css("background-color", "rgb(221, 221, 221)");
		$(".button").attr("disabled", "");
	}
}




/*x 버튼 js*/

/*나중에 코드 정리...*/
/*위에 비밀번호*/
$(".input-content1").keyup(function() {
	if ($(".input-content1").val().length == 0) {
		$(".textbutton1").css('visibility', 'hidden');
	} else {
		$(".textbutton1").css('visibility', 'visible');
	}
});

$('.textbutton1').on("click", function() {
	$(".button").css("background-color", "rgb(221, 221, 221)");
	$(".button").attr("disabled", "");
	$(".input-content1").val("");
	$(".checkPw").removeClass("css-alright css-1319hys")
	$(".checkPw").addClass("css-ua37vt")

})

/* 탭으로 이동금지 */
$('.textbutton1').attr("tabindex", "-1");
$('.textbutton2').attr("tabindex", "-1");



/*비밀번호재설정*/
$(".input-content2").keyup(function() {
	if ($(".input-content2").val().length == 0) {
		$(".textbutton2").css('visibility', 'hidden');
	} else {
		$(".textbutton2").css('visibility', 'visible');
	}
});

$('.textbutton2').on("click", function() {
	$(".button").css("background-color", "rgb(221, 221, 221)");
	$(".button").attr("disabled", "");
	$(".input-content2").val("");
	$(".checkConfirm").removeClass("css-alright css-1319hys")
	$(".checkConfirm").addClass("css-ua37vt")

});

/* 모달창 구현해보기*/


$('.button').on("click", function() {
	$('.banner-online').fadeIn();
	$('#modal').fadeIn();
	$("html").css("overflow-y", "hidden");
})

$('.close-button').click(function() {
	$('.banner-online').fadeOut();
	$('#modal').fadeOut();
	$("html").css("overflow-y", "");
	location.href = "login.jsp";
})



