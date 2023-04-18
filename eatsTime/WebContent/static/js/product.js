/**
 * 
 */

$(document).ready(function(){
    
    // svg 변경
    $('.e1isxf3i0').click(function() {
        $(this).children('.css-17kh8wb').toggleClass('filter-on');
    });

	// 페이지 컨트롤러
    $('.page-list').click(function() {
        $(this).addClass('css-19yo1fh');
        $(this).siblings().removeClass('css-19yo1fh');
    });

	// 최신순/낮은 가격순/높은 가격순 필터
    $('.eudxpx30').click(function(){
		$(this).addClass('css-126imjl');
        $(this).parent().siblings().children().removeClass('css-126imjl');
	});
	
	/*
	$('div#btn img').on('click', function(){
        $('p#number').text(parseInt($('p#number').text()) + 1);
    });
    */
    
    
    //상품 상세 페이지 : 수량 감소 btn
    $('#decreaseQuantity').click(function(e){
		e.preventDefault();
		
		var stat = $('#numberUpDown').text();
		var num = parseInt(stat,10);
		num--;
		
		if(num<=1){
			$('#decreaseQuantity').attr('disabled', true);
			$('#decreaseQuantity').removeClass('css-8azp8');
			num =1;
		}
		
		if(num>=8){
			$('#increaseQuantity').attr('disabled', false);
			$('#increaseQuantity').removeClass('plus-on');
		}
		
		$('#numberUpDown').text(num);
	});
	
	//상품 상세 페이지 : 수량 증가 btn
	$('#increaseQuantity').click(function(e){
		e.preventDefault();
		
		var stat = $('#numberUpDown').text();
		var num = parseInt(stat,10);
		num++;
		
		if(num>=2){
			$('#decreaseQuantity').attr('disabled', false);
			$('#decreaseQuantity').addClass('css-8azp8');
		}		
		
		
		if(num>=9){
			$('#increaseQuantity').attr('disabled', true);
			$('#increaseQuantity').addClass('plus-on');
			num=9;
		}
		
		
		
		$('#numberUpDown').text(num);
	});
   
    
    
    
    
    
});