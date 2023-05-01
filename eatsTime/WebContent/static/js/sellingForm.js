const divdelivery=document.querySelector("#divdelivery");
const divpickup=document.querySelector("#divpickup");

const spandelivery=document.querySelector("#deliveryspan");
const spanpickup=document.querySelector("#pickupspan");

if(productCategory) {
	spandelivery.style.background="#ff4f32";
	divdelivery.style.background="#fff";
		
	spanpickup.style.background="#fff";
	spanpickup.style.border="1px solid #dddddd";
} else {
	divdelivery.style.background="#ff4f32";
	spandelivery.style.background="#fff";
		
	divpickup.style.background="#fff";
	divpickup.style.border="1px solid #dddddd";
}


