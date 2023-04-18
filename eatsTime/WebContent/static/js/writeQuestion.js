/**
 * 
 */


/*글자수 카운트*/
$('.e1tjt2bn1').keyup(function (e) {
	let content = $(this).val();
    
    // 글자수 세기
    if (content.length == 0 || content == '') {
    	$('.e1tjt2bn2').text('0자');
    } else {
    	$('.e1tjt2bn2').text(content.length + '자');
    }
    
    // 글자수 표기 조정
    if (content.length > 5000) {
    	// 5000자 부터는 타이핑 되지 않도록
        $('.e1tjt2bn2').text('5000자');
    };
});

/*내용 입력창 focus 이벤트*/
$("#inquiry-contents").focus(function() {
	$(".placeholder").css('display', 'none');
	$(".css-1gua357").css('border-color', 'rgb(51, 51, 51)');
});

/*내용 입력창 focus out*/
$("#inquiry-contents").blur(function(){
  $(".placeholder").css('display', 'block');
  $(".css-1gua357").css('border-color', 'rgb(221, 221, 221)');
	if($("#inquiry-contents").val()){
		return $(".placeholder").css('display', 'none');
	}

});

/* 제목과 내용을 입력했을 때만 '등록'버튼 활성화 */
$("#inquiry-subject").on('input', checkInput);
$("#inquiry-contents").on('input', checkInput);

/* 등록버튼 활성화 함수 */
function checkInput() {	
	
	if($("#inquiry-subject").val() && $("#inquiry-contents").val()) {
		$('.ebvrvv10').css('background-color', 'rgb(95, 0, 128)');
		$('.ebvrvv10').css('cursor', 'pointer');
		$('.ebvrvv10').attr('disabled', false);
	}else{
		$('.ebvrvv10').css('background-color', 'rgb(221, 221, 221)');
		$('.ebvrvv10').css('cursor', 'default');
		$('.ebvrvv10').attr('disabled', 'disabled');
	}
	
}

/*모달창 활성화*/
$(".ebvrvv10").on("click", function(){
	console.log("들어옴");
	$(".swal2-container").fadeIn();
	$("body").css('overflow', 'hidden');
	return false;
});