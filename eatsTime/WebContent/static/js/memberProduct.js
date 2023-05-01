/**
 * memberProduct.jsp 
 */


let $mousepoint1 = $("#li-1");
let $mousepoint2 = $("#li-2");
let $mousepoint3 = $("#li-3");

let $point1 = $("use.point1");
let $point2 = $("use.point2");
let $point3 = $("use.point3");
//$mousepoint.hover(function(){$point.css("stroke", "#ff4f32")}, function() {$point.css("stroke", "#999")
//	
//});

//$(use).each(function(index, item){
//$(item).eq(index).hover(function(){$point.css("stroke", "#ff4f32")}, function() {$point.css("stroke", "#999")

/*})
});*/


$mousepoint1.on("mouseover", function() {

	$point1.css("stroke", "#ff4f32");

});




$mousepoint2.on("mouseover", function() {

	$point2.css("stroke", "#ff4f32");

});


$mousepoint2.on("mouseout", function() {

	$point2.css("stroke", "#999");

});

$mousepoint3.on("mouseover", function() {

	$point3.css("stroke", "#ff4f32");

});


$mousepoint3.on("mouseout", function() {

	$point3.css("stroke", "#999");

});

/*시간 계산*/
function elapsedTime(date) {
	const start = new Date(date);
	const end = new Date();

	const diff = (end - start) / 1000;

	const times = [
		{ name: '년', milliSeconds: 60 * 60 * 24 * 365 },
		{ name: '개월', milliSeconds: 60 * 60 * 24 * 30 },
		{ name: '일', milliSeconds: 60 * 60 * 24 },
		{ name: '시간', milliSeconds: 60 * 60 },
		{ name: '분', milliSeconds: 60 },
	];

	for (const value of times) {
		const betweenTime = Math.floor(diff / value.milliSeconds);

		if (betweenTime > 0) {
			return `${betweenTime}${value.name} 전`;
		}
	}
	return '방금 전';
}

/* 구매내역 목록 */
showPurchaseList();

function showPurchaseList() {
	purchases = JSON.parse(purchases);

	/*<a href="javascript:location.href='${contextPath}/detailOk.board?boardId=${board.boardId}'">*/

	//files = JSON.parse(files);
	const $ul = $("#content-wrap ul");
	let text = "";

	purchases.forEach(purchase => {
		text += `
			<li class="css-1c8nox">
		        <div class="css-4wlxei">
							<div class="css-1hbtwy0">
								<span class="css-asma03">${purchase.purDate}</span>
								<a href="javascript:location.href='${contextPath}/purchaseProductDetail.purchase?purId=${purchase.purId}'" class="css-l9y4tx">주문내역 상세보기</a>
							</div>
							<div class="css-7apail">
								<div class="css-fhxb3m">
									<img
										src="${contextPath}/upload/${purchase.fileOriginalName}"
										alt="상품 이미지" class="css-1oc1pau">
									<div class="css-1fttcpj">
										<dl class="css-1ccl3pq">
											<dt class="css-dzjp62">상품명</dt>
											<dd class="css-1o8e829">${purchase.productName}</dd>
										</dl>
										<dl class="css-1ccl3pq">
											<dt class="css-dzjp62">주문번호</dt>
											<dd class="css-1i58pf4">${purchase.purId}</dd>
										</dl>
										<dl class="css-1ccl3pq">
											<dt class="css-dzjp62">구매 방법</dt>
											<dd class="css-1i58pf4">${purchase.productCategory ? "배송" : "픽업"}</dd>
										</dl>
										<dl class="css-1ccl3pq">
											<dt class="css-dzjp62">결제금액</dt>
											<dd class="css-1i58pf4">${purchase.purTotalPrice}</dd>
										</dl>
									</div>
								</div>
								<div class="content-alter">
									<div class="selldiv" style="visibility:hidden"><input type="button" class="selling" value="판매하기"> </div>
									<div class="content-button">
										<div class="icon1">
											<img class="icon-insert"
												src="/static/image/insert.png"/>
										</div>
					
										<div class="icon2">
											<img class="icon-delete"
												src="/static/image/delete.png"/>
										</div>
									</div>
								</div>							
							</div>
			`;
		/*if(files[board.boardId]){
			text += `<img src="${contextPath}/upload/${files[board.boardId].fileSystemName}" class="preview">`;
		}*/
		text += `
		        </div>
		    </li>
			`;
	});

	/*if (boards.length == 0) {
		text += `
			<li>
				<div>
					현재 게시글이 없습니다. 게시글 작성을 해보세요!
				</div>
			</li>
		`
	}*/

	$ul.append(text);
}