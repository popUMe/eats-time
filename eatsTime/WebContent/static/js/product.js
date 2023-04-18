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
    
    
    
    //카운트 변수
    var count = 0; 
    
	// 결과를 표시할 element
  	const resultElement = document.getElementById('count-num');

	// 현재 화면에 표시된 값
  	let number = resultElement.innerText;
	  

    //수량 증가 버튼 클릭시
/*
    $('.e1hx75jb0').on('click', function(){
    	
    	console.log("+++");
    	
        //변수 증가
        count++;
        //조건문
        if(0 < count){
            number = parseInt(number) + 1;
        }        
        
        // 결과 출력
        resultElement.innerText = number;    
    });  
    
    //수량 감소 버튼 클릭시
    $('.e1hx75jb0').on('click', function(){
    	
        //변수 증가
        count++;
        //조건문
        if(0 < count){
            number = parseInt(number) - 1;
        }        
        
        // 결과 출력
        resultElement.innerText = number;    
    });
*/    
    
    
    
    
    
});