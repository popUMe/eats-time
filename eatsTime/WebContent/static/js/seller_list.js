/**
 * 
 */

let $mousepoint1=$("#li-1");
let $mousepoint2=$("#li-2");
let $mousepoint3=$("#li-3");

let $point1 = $("use.point1");
let $point2 = $("use.point2");
let $point3 = $("use.point3");

$mousepoint1.on("mouseover",function(){
	
	$point1.css("stroke","#ff4f32");
	
});
 




$mousepoint2.on("mouseover",function(){
	
	$point2.css("stroke","#ff4f32");
	
});

$mousepoint2.on("mouseout",function(){
	
	$point2.css("stroke","#999");
	
});

$mousepoint3.on("mouseover",function(){
	
	$point3.css("stroke","#ff4f32");
	
});


$mousepoint3.on("mouseout",function(){
	
	$point3.css("stroke","#999");
	
});

/* 구매내역 목록 */
showProductUploadList();

function showProductUploadList() {
	products = JSON.parse(products);


	/*<a href="javascript:location.href='${contextPath}/detailOk.board?boardId=${board.boardId}'">*/

	//files = JSON.parse(files);
	
	/*<a href="javascript:location.href='${contextPath}/purchaseProductDetail.purchase?purId=${purchase.purId}'" class="css-l9y4tx">주문내역 상세보기</a>*/
	
	const $ul = $("#content-wrap ul");
	let text = "";

	products.forEach((product, i) => {
		text += `
			<li class="css-1c8nox">
		        <div class="css-4wlxei">
							<div class="css-1hbtwy0">
								<span class="css-asma03">${product.productDate}</span>
								
							</div>
							<div class="css-7apail">
								<div class="css-fhxb3m">
									<img
										src="${contextPath}/upload/${product.fileOriginalName}"
										alt="상품 이미지" class="css-1oc1pau">
									<div class="css-1fttcpj">
										<dl class="css-1ccl3pq">
											<dt class="css-dzjp62">상품명</dt>
											<dd class="css-1o8e829">${product.productName}</dd>
										</dl>
										<dl class="css-1ccl3pq">
											<dt class="css-dzjp62">판매 유형</dt>
											<dd class="css-1i58pf4">${product.productCategory ? "배송" : "픽업"}</dd>
										</dl>
										<dl class="css-1ccl3pq">
											<dt class="css-dzjp62">판매 금액</dt>
											<dd class="css-1i58pf4">${product.productPrice}</dd>
										</dl>
									</div>
								</div>
								<div class="content-alter">
									<div class="selldiv"><input type="button" class="selling" onclick="send(${i})" value="판매하기"> </div>
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