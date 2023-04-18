
/*클릭 시 게시글 펼쳐지*/
$(".e1cfowvj3").click(function(){
	if($(this).next(".e1cfowvj0").css('display') == 'none'){
		return $(this).next(".e1cfowvj0").slideDown();
	}
	
	if($(this).next(".e1cfowvj0").css('display') == 'list-item'){
		return $(this).next(".e1cfowvj0").slideUp();
	}
});

/*삭제 확인 모달창*/
$(".deletebtn").on("click", function(){
	$(".swal2-container").show();
	$("body").css('overflow', 'hidden');
	return false;
});

/*삭제여부 모달창 취소버튼*/
$(".canceldeletion").on("click", function(){
	$(".swal2-container").hide();
	$("body").css('overflow', 'scroll');
});

