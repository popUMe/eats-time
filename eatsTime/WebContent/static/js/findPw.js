/**
 * 
비밀번호찾기

 */

function fn_emailChk(email){
  var regExp = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.[a-zA-Z]{1,4}$/;
  if(!regExp.test(email)){
    return false;
  }
  return true;
}


/*유효성검사 이름 뭐라도 입력해야됌*/
/* 포커스 입력을 안해도 입력태그 밖으로 나가면 아래 경고문구나오기*/
	$("#name").bind('focus', function(){
		
	$("#name").blur(function(e){
		
		if($(e.target).val()== ""){
			$(".error1").text("가입 시 등록한 이름을 입력해주세요");
		}else {
			$(".error1").text("");
		}
		
	})
			
})

	$("#email").bind('focus', function(){
		
	$("#email").blur(function(e){

		if($(e.target).val()== ""){
			$(".error2").text("가입 시 등록한 이메일을 입력해주세요");
		}else if(!fn_emailChk($(e.target).val())){	
			$(".error2").text("올바른 이메일 형식을 입력해 주세요");
		}else{
			$(".error2").text("");
		}
		
	})
			
})


/*키를 입력할 때마다 검사해서 아래 문구나오기*/
	$("input").keyup(function(e){
		
	let nameCheck = false;
	let emailCheck = false;
	

		if($(e.target).val()== ""){
			$(".error1").text("가입 시 등록한 이름을 입력해주세요");
			nameCheck = false;
		}else {
			$(".error1").text("");
			nameCheck = true;
		}
		
		if($(e.target).val()== ""){
			$(".error2").text("가입 시 등록한 이메일을 입력해주세요");
			emailCheck = false;
		}else if(!fn_emailChk($(e.target).val())){	
			$(".error2").text("올바른 이메일 형식을 입력해 주세요");
			emailCheck = false;
		}else{
			$(".error2").text("");
			emailCheck = true;
		}
		
	if(nameCheck && emailCheck){
		$(".button").removeAttr("disabled");
		$(".button").prop("background", "rgb(95, 0, 128)");
	} else{
		$(".button").prop("background", "rgb(221, 221, 221);");
		$(".button").attr("disabled", "");
	}

		
	})