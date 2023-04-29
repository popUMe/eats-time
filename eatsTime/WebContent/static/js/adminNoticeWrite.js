/**
 * 
 */

/* 제목과 내용을 입력했을 때만 '등록'버튼 활성화 */

console.log($("#write-ok"))

$("#board-title").on('input', checkInput);
$("#board-content").on('input', checkInput);

/* 등록버튼 활성화 함수 */
function checkInput() {		
	if($("#board-title").val() && $("#board-content").val()) {
		$("#write-ok").attr('disabled', false);
	}else{
		$("#write-ok").attr('disabled', 'disabled');
	}
}