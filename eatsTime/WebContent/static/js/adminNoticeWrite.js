/**
 * 
 */

/* 제목과 내용을 입력했을 때만 '등록'버튼 활성화 */

console.log($("#content").val())

$("#title").on('input', checkInput);
$("#content").on('input', checkInput);

/* 등록버튼 활성화 함수 */
function checkInput() {		
	if($("#title").val() && $("#content").val()) {
		$("button.on").attr('disabled', false);
	}else{
		$("button.on").attr('disabled', 'disabled');
	}
}