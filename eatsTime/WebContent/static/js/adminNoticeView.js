/**
 * 
 */

showContent()

console.log(notificationboard.notbContent);

function showContent(){
	const $container = $(".board_view");
	let text = "";
	
	text += `<div class="title">` + notificationboard.notbTitle + `</div>`
	text += `<div class="info">`
	text += `<dl id="id_wrapper">`
	text += `<dt>번호</dt>`
	text += `<dd>` + notificationboard.notbId + `</dd>`
	text += `</dl>`
	text += `<dl id="date_wrapper">`
	text += `<dt>작성일</dt>`
	text += `<dd>` + notificationboard.notbDate + `</dd>`
	text += `</dl>`
	text += `<dl id="hit_wrapper">`
	text += `<dt>조회</dt>`
	text += `<dd>` + notificationboard.notbHit  + `</dd>`
	text += `</dl>`
	text += `</div>`
	text += `<div id="content_wrapper">`
	text += `<div class="cont">` + notificationboard.notbContent + `</div>`
	text += `</div>`
	
	$container.append(text);
	
}