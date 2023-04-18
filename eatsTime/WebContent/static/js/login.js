const form = document.querySelector('form');

form.addEventListener('submit', function(e) {
  e.preventDefault();

  const userid = form.userid.value;
  const password = form.password.value;

  const authenticated = authentication(userid, password);

  if (authenticated) {
    window.location.href = "../index.jsp";
  } else {
    $('.banner-online').fadeIn();
    $('#modal').fadeIn();
    $('html').css('overflow-y', 'hidden');
  }
});

function authentication(userid, password) {
  if (userid === 'test' && password === '0000') {
    return true;
  } else {
    return false;
  }
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