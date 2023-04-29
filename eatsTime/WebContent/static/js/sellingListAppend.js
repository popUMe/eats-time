const $listContainer = $('div.css-1c8nox');

sales = JSON.parse(sales);

let text = '';

console.log(sales);

sales.forEach((sale, i) => {
	text += `
		<div class="css-4wlxei">
			<div class="css-1hbtwy0">
				<span class="css-asma03">${sale.saleDate}</span><a
					class="css-l9y4tx">판매내역 상세보기</a>
			</div>
			<div class="css-7apail">
				<div class="css-fhxb3m">
					<img
						src="https://img-cf.kurly.com/shop/data/goods/1637154387515l0.jpg"
						alt="image" class="css-1oc1pau e1437c648">
					<div class="css-1fttcpj e1437c647">
						<dl class="css-1ccl3pq">
							<dt class="css-dzjp62">상품명</dt>
							<dd class="css-1o8e829">${sale.saleTitle}</dd>
						</dl>
						<dl class="css-1ccl3pq">
							<dt class="css-dzjp62">상품 설명</dt>
							<dd class="css-1i58pf4">${sale.saleContent}</dd>
						</dl>

						<dl class="css-1ccl3pq">
							<dt class="css-dzjp62">판매 ID</dt>
							<dd class="css-1i58pf4">${sale.saleId}</dd>
						</dl>
					</div>
				</div>
				<div class="content-alter">

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
	`
});

$listContainer.append(text);

$('div.icon1').each((i, div) => {
	
});
