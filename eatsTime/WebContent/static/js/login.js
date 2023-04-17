const form = doucment.querySelector("form")

form.addEventListener("submit", (e)=>{
	e. preventDefault()
	
	const userid = form.userid.value
	const password = form.password.value
	
	const authenticated = authentication(userid, password)
	
	if(authenticated){
		alert("correct")
	}else{
		alert("wrong")
	}
}) 

// 아이디 패스워드 체크


function authentication(userid, password){
	if(userid === "gichul" && password === "1234"){
		return true
	}else{
		return false
	}
}