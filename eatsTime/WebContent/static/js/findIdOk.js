/**
 * 
findIdOk.jsp와 연동 
*/


/* 전체보기 이메일 전송 모달창*/
$(".sendMail-button").on("click", function() {
	$('.banner-online').fadeIn();
	$('#modal').fadeIn();
	$("html").css("overflow-y", "hidden");
})

$('.close-button').click(function() {
	$('.banner-online').fadeOut();
	$('#modal').fadeOut();
	$("html").css("overflow-y", "");
})


/*로그인창 이동*/
$(".login-button").on("click", function() {
	location.href = "login.jsp";
})




