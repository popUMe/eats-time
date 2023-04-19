/**
 * 비밀번호 재설정 
 */


// jQuery 객체 선언부 (태그선언)
/*새 비밀번호 등록 입력창 태그*/
let pw = $("#password");
/*새 비밀번호 확인 입력창 태그*/
let rePw = $("#passwordConfirm");
/* 새 비밀번호 등록 입력창 아래 p태그 3개*/
let checkPws = $(".checkPw");
/* 새비밀번호 확인 입력창 태그 아래 p태그 1개*/
let reChecks = $(".checkConfirm");

/*마지막 비밀번호 재설정 확인 버튼*/
let button = $(".button");

/*새 비밀번호 등록 x 버튼*/
let textbutton1 = $('.textbutton1');
/*새 비밀번호 확인 x 버튼*/
let textbutton2 = $('.textbutton2');


/*플래그 선언*/
let pwCheck1 = false;
let pwCheck2 = false;
let pwCheck3 = false;
let rePwCheck = false;



/*새 비밀번호 등록*/
pw.one('click', function() {
	checkPws.removeClass("css-ua37vt css-1319hys")
	checkPws.addClass("css-alright")
	checkPws.eq(0).text("8자리 ~ 20자리 이내로 입력해주세요.");
	checkPws.eq(1).text("비밀번호는 공백 없이 입력해주세요.");
	checkPws.eq(2).text("영문,숫자, 특수문자를 혼합하여 입력해주세요.");

})

pw.blur(function(e) {
	if ($(e.target).val() == "") {
		checkPws.removeClass("css-alright css-1319hys")
		checkPws.addClass("css-ua37vt")
		checkPws.eq(0).text("8자리 ~ 20자리 이내로 입력해주세요.");
		checkPws.eq(1).text("비밀번호는 공백 없이 입력해주세요.");
		checkPws.eq(2).text("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
	}

})


/*새 비밀번호 확인*/
rePw.one('click', function() {
	reChecks.removeClass("css-ua37vt css-1319hys")
	reChecks.addClass("css-alright")
	reChecks.text("동일한 비밀번호를 입력해주세요.");


})

rePw.blur(function(e) {

	if ($(e.target).val() == "") {
		reChecks.text("동일한 비밀번호를 입력해주세요.");
		reChecks.removeClass("css-alright css-1319hys")
		reChecks.addClass("css-ua37vt")
	}


})

/*탭으로 이동할때 오류 막기*/
rePw.focus(function() {

	reChecks.text("동일한 비밀번호를 입력해주세요.");
	reChecks.removeClass("css-alright css-1319hys")
	reChecks.addClass("css-ua37vt")

})

// 새비밀번호 등록
pw.keyup(function() {

	/*함수 안에서 선언*/
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
		console.log("드러옴1")
	} else {
		checkPws.eq(2).removeClass("css-alright css-ua37vt")
		checkPws.eq(2).addClass("css-1319hys")
		console.log("드러옴")
		pwCheck3 = true;
	}

	checkButton()

})


// 새 비밀번호 확인
rePw.keyup(function() {

	/*함수안에서 선언*/
	// jQuery 객체 선언부 (태그선언)
	/*새 비밀번호 등록 입력창 태그*/
	let pw = $("#password");
	/*새 비밀번호 확인 입력창 태그*/
	let rePw = $("#passwordConfirm");
	/* 새비밀번호 확인 입력창 태그 아래 p태그 1개*/
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


/*x 버튼 js*/

/*나중에 코드 정리...*/
/*위에 비밀번호*/
pw.keyup(function() {
	if (pw.val().length == 0) {
		textbutton1.css('visibility', 'hidden');
	} else {
		textbutton1.css('visibility', 'visible');
	}
});

textbutton1.on("click", function() {
	button.css("background-color", "rgb(221, 221, 221)");
	button.attr("disabled", "");
	pw.val("");
	checkPws.removeClass("css-alright css-1319hys")
	checkPws.addClass("css-ua37vt")

})

/* 탭으로 이동금지 */
textbutton1.attr("tabindex", "-1");
textbutton2.attr("tabindex", "-1");



/*비밀번호재설정*/
rePw.keyup(function() {
	if (rePw.val().length == 0) {
		textbutton2.css('visibility', 'hidden');
	} else {
		textbutton2.css('visibility', 'visible');
	}
});

textbutton2.on("click", function() {
	button.css("background-color", "rgb(221, 221, 221)");
	button.attr("disabled", "");
	rePw.val("");
	reChecks.removeClass("css-alright css-1319hys")
	reChecks.addClass("css-ua37vt")

});

/* 모달창 구현해보기*/


button.on("click", function() {
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



/*함수 선언부 ###################################*/

/*새 비밀번호 등록 새비밀번호 확인 검사후 확인 버튼 활성화 함수 선언*/
function checkButton() {
	if (pwCheck1 && pwCheck2 && pwCheck3 && rePwCheck && (pw.val() == rePw.val())) {
		button.removeAttr("disabled");
		button.css("background-color", "rgb(95, 0, 128)");
	} else {
		button.css("background-color", "rgb(221, 221, 221)");
		button.attr("disabled", "");
	}
}

