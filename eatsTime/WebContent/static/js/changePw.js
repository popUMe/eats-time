/**
 * 
 */











	/*x 버튼 js*/

/*나중에 코드 정리...*/
/*위에 비밀번호*/	
$(".input-content1").keyup(function(){
	if($(".input-content1").val().length == 0){
		$(".textbutton1").css('visibility', 'hidden');
	}else{
		$(".textbutton1").css('visibility', 'visible');
	}
});

$('.textbutton1').on("click", function(){
    $(".button").prop("background", "rgb(221, 221, 221)");
    $(".button").attr("disabled", "");
	$(".input-content1").val("");
	$(".textbutton1").css('visibility', 'hidden');
	$(".error1").text("가입 시 등록한 이름을 입력해주세요");
})
	

/*비밀번호재설정*/
$(".input-content2").keyup(function(){
	if($(".input-content2").val().length == 0){
		$(".textbutton2").css('visibility', 'hidden');
	}else{
		$(".textbutton2").css('visibility', 'visible');
	}
});

$('.textbutton2').on("click", function(){
    $(".button").prop("background", "rgb(221, 221, 221)");
    $(".button").attr("disabled", "");
	$(".input-content2").val("");
	$(".textbutton2").css('visibility', 'hidden');
	$(".error2").text("가입 시 등록한 이메일을 입력해주세요");
	
});	
	
	