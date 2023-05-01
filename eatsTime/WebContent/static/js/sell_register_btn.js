const $sellRegisterButtons = $('.selldiv input.selling')

/*$sellRegisterButtons.each((i, div) => function() {
	
	
	console.log('딸깍')
	$(div).on('click', function() {
		
	});
});*/

function send(i) {
	let product = products[i];
	if(!product) return;
	console.log(product);
	
	location.href = "saleRegisterForm.sale?productId="+product.productId;
}
