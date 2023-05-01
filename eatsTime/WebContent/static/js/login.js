
const $id = $("input#userid");
const $password = $("input#password");
const $checkAutoLogin = $("input[name='auto-login']");

$checkAutoLogin.on("change", function(){
    let isChecked = $(this).prop("checked");
    isChecked ? checkedAutoLogin() : notCheckedAutoLogin();
});

function checkedAutoLogin(){
    $("#check-save-id span.checkbox").css("border-color", "rgb(235 124 120)");
    $("#check-save-id span.checkbox").css("background-color", "rgb(235 124 120)");
}

function notCheckedAutoLogin(){
    $("#check-save-id span.checkbox").css("border-color", "");
    $("#check-save-id span.checkbox").css("background-color", "");
}

function send(){
    if(!$id.val()){
        showWarnModal("아이디를 입력해주세요!");
        $id.next().fadeIn(500);
        return;
    }
    if(!$password.val()){
        showWarnModal("비밀번호를 입력해주세요!");
        $password.next().fadeIn(500);
        return;
    }

    document.login.submit();
}


$('.close-button').click(function() {
  $('.warn-modal').fadeOut();
  $('#modal').fadeOut();
  $('html').css('overflow-y', '');
});

$('.findid-button').click(function() {
  window.location.href = 'findId.jsp';
});

$('.findpw-button').click(function() {
  window.location.href = 'findPw.jsp';
});