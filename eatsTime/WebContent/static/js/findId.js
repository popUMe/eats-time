/**
 * 
아이디 찾기 js 파일

 */

/*이메일*/
function fn_emailChk(email){
  var regExp = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.[a-zA-Z]{1,4}$/;
  if(!regExp.test(email)){
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


let nameCheck = false;
let emailCheck = false;

$("#name").keyup(function() {
	if ($("#name").val() == "") {
		$(".error1").text("가입 시 등록한 이름을 입력해주세요");
		nameCheck = false;
	} else {
		$(".error1").text("");
		nameCheck = true;
	}
	checkflag()
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

	checkflag()

})


function checkflag() {
	if (nameCheck && emailCheck) {
		$(".button").removeAttr("disabled");
		$(".button").prop("background", "rgb(95, 0, 128)");
	} else {
		$(".button").prop("background", "rgb(221, 221, 221)");
		$(".button").attr("disabled", "");
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

$('.textbutton1').on("click", function() {
	$(".button").prop("background", "rgb(221, 221, 221)");
	$(".button").attr("disabled", "");
	$(".input-content1").val("");
	$(".textbutton1").css('visibility', 'hidden');
	$(".error1").text("가입 시 등록한 이름을 입력해주세요");
})

/* 탭으로 이동금지 */
$('.textbutton1').attr("tabindex", "-1");


/*이메일*/
$(".input-content2").keyup(function() {
	if ($(".input-content2").val().length == 0) {
		$(".textbutton2").css('visibility', 'hidden');
	} else {
		$(".textbutton2").css('visibility', 'visible');
	}
});

$('.textbutton2').on("click", function() {
	$(".button").prop("background", "rgb(221, 221, 221)");
	$(".button").attr("disabled", "");
	$(".input-content2").val("");
	$(".textbutton2").css('visibility', 'hidden');
	$(".error2").text("가입 시 등록한 이메일을 입력해주세요");
})

/* 모달창 구현해보기*/


	$('.button').on("click", function(){
		$('.banner-online').fadeIn();
		$('#modal').fadeIn();
		$("html").css("overflow-y", "hidden");
	})

	$('.close-button').click(function() {
		$('.banner-online').fadeOut();
		$('#modal').fadeOut();
		$("html").css("overflow-y", "");	
	})






