const form = document.querySelector('form');

const $id = $("input#userid");
const $password = $("input#password");

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
  $('.banner-online').fadeOut();
  $('#modal').fadeOut();
  $('html').css('overflow-y', '');
});

$('.findid-button').click(function() {
  window.location.href = 'findId.jsp';
});

$('.findpw-button').click(function() {
  window.location.href = 'findPw.jsp';
});