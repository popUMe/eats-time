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
        
});