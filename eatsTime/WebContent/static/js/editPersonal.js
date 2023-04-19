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
	
	$point1.css("stroke","#5f0080"); 
	
});



$mousepoint1.on("mouseout",function(){
	
	$point1.css("stroke","#999");
	
});


$mousepoint2.on("mouseover",function(){
	
	$point2.css("stroke","#5f0080");
	
});


$mousepoint2.on("mouseout",function(){
	
	$point2.css("stroke","#999");
	
});

$mousepoint3.on("mouseover",function(){
	
	$point3.css("stroke","#5f0080");
	
});

