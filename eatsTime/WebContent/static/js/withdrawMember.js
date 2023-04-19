/**
 * 
 */


let $mousepoint1=$("#li-1");
let $mousepoint2=$("#li-2");
let $mousepoint3=$("#li-3");

let $point1 = $("use.point1");
let $point2 = $("use.point2");
let $point3 = $("use.point3");
//$mousepoint.hover(function(){$point.css("stroke", "#5f0080")}, function() {$point.css("stroke", "#999")
//	
//});

//$(use).each(function(index, item){
//$(item).eq(index).hover(function(){$point.css("stroke", "#5f0080")}, function() {$point.css("stroke", "#999")
	
/*})
});*/


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

const inputmale=document.querySelector("#gender-man");
const inputfemale=document.querySelector("#gender-woman");
const inputnone=document.querySelector("#gender-none");




const spanmale=document.querySelector("#male");
const spanfemale=document.querySelector("#female");
const spannone=document.querySelector("#none");

const divmale=document.querySelector("#divmale");
const divfemale=document.querySelector("#divfemale");
const divnone=document.querySelector("#divnone");


 inputmale.addEventListener("click", () => {
        spanmale.style.background="#5f0080";
		divmale.style.background="#fff";
		
		spanfemale.style.background="#fff";
		divfemale.style.border="1px";
		divfemale.style.border="rgb(221, 221, 221)";
//		divfemale.style.border="solid"
		
		spannone.style.background="#fff";
		spannone.style.border="1px";
		spannone.style.border="rgb(221, 221, 221)";
//		spannone.style.border="solid"
		
		
    });


 inputfemale.addEventListener("click", () => {
        spanfemale.style.background="#5f0080";
		divfemale.style.background="#fff";
		
		spanmale.style.background="#fff";
		spanmale.style.border="1px";
		spanmale.style.border="#dddddd";
		spanmale.style.border="solid";
		
		spannone.style.background="#fff";
		spannone.style.border="1px";
		spannone.style.border="#dddddd";
		spannone.style.border="solid";
    });


 inputnone.addEventListener("click", () => {
        spannone.style.background="#5f0080";
		divnone.style.background="#fff";
		
		spanmale.style.background="#fff";
		spanmale.style.border="1px";
		spanmale.style.border="#dddddd";
		spanmale.style.border="solid";
		
		spanfemale.style.background="#fff";
		spanfemale.style.border="1px";
		spanfemale.style.border="#dddddd";
		spanfemale.style.border="solid";
    });

