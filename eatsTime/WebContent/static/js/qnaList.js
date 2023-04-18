
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
	$("#modal1").fadeIn();
	$("body").css('overflow', 'hidden');
	return false;
});

/*삭제여부 모달창 취소버튼*/
$(".canceldeletion").on("click", function(){
	$("#modal1").fadeOut();
	$("body").css('overflow', 'scroll');
});

/*확인버튼 클릭 시 모달창 : 삭제 완료*/
$(".yesdeletion").click(function(){
		console.log("들어옴");
        $(this).closest("#modal1").fadeOut();
       /* $("#modal2").css('display', 'block');*/
		$("#modal2").fadeIn();
    });


$(".deleteioncomplete").on("click", function(){
	$("#modal2").fadeOut();
	$("body").css('overflow', 'scroll');
});