/**
 * 
게시글 클릭시 펼쳐지기
 */

$(".e1cfowvj3").click(function(){
	if($(this).next(".e1cfowvj0").css('display') == 'none'){
		return $(this).next(".e1cfowvj0").slideDown();
	}
	
	if($(this).next(".e1cfowvj0").css('display') == 'list-item'){
		return $(this).next(".e1cfowvj0").slideUp();
	}
});

/*모달창 띄우기*/
$(".deletebtn").on("click", function(){
	$(".swal2-container").show();
	$("body").css('overflow', 'hidden');
	return false;
});

/*모달창 삭제*/
$(".canceldeletion").on("click", function(){
	$(".swal2-container").hide();
	$("body").css('overflow', 'scroll');
});