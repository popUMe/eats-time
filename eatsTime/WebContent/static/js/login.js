const form = document.querySelector('form');

form.addEventListener('submit', function(e) {
  e.preventDefault();

  const userid = form.userid.value;
  const password = form.password.value;

  const authenticated = authentication(userid, password);

  if (authenticated) {
    window.location.href = '../index.jsp';
  } else {
    modal('아이디나 비밀번호가 일치하지 않습니다.');
  }
});

function authentication(userid, password) {
  if (userid === 'test' && password === '0000') {
    return true;
  } else {
    return false;
  }
}

function modal(message) {
  const modalElement = document.createElement('div');
  modalElement.classList.add('modal');

const modalContent = `
  <div class="modal-content">
    <span class="close-button">&times;</span>
    <p>${'아이디, 비밀번호를 확인해주세요.'}</p>
  </div>
`;
  modalElement.innerHTML = modalContent;

  const closeButton = modalElement.querySelector('.close-button');
  closeButton.addEventListener('click', function() {
    modalElement.style.display = 'none';
  });

  document.body.appendChild(modalElement);
  modalElement.style.display = 'block';
}

$('.button').on('click', function() {
  $('.banner-online').fadeIn();
  modal('로그인 후 이용해주세요.');
  $('html').css('overflow-y', 'hidden');
});

$('.close-button').click(function() {
  $('.banner-online').fadeOut();
  $('.modal').fadeOut();
  $('html').css('overflow-y', '');
});

$('.findid-button').click(function() {
  window.location.href = 'findId.jsp';
});

$('.findpw-button').click(function() {
  window.location.href = 'findPw.jsp';
});