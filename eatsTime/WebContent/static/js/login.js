$(document).ready(function() {
  $('form').submit(function(event) {
    event.preventDefault(); // 기본 동작(페이지 이동) 방지

    // 입력한 아이디와 비밀번호 값을 가져오기
    var id = $('input[name="id"]').val();
    var password = $('input[name="password"]').val();

    // 아이디와 비밀번호가 빈 값인지 확인
    if (id.trim() === '' || password.trim() === '') {
      alert('아이디와 비밀번호를 입력해주세요.');
      return;
    }

    // 서버로 로그인 요청 보내기
    $.ajax({
      url: '${pageContext.request.contextPath}templates/login.jsp', // 로그인 요청을 처리하는 서블릿의 URL
      method: 'POST',
      data: {
        id: id,
        password: password
      },
      success: function(response) {
        // 로그인 성공 시 처리할 코드 작성
         var data = JSON.parse(response);
         //사용자 정보 출력
        alert('로그인 성공!');
        // 메인 페이지로 이동
         window.location.href = '${pageContext.request.contextPath}/main';
      },
      error: function(jqXHR, textStatus, errorThrown) {
        // 로그인 실패 시 처리할 코드 작성
        alert('로그인 실패!');
      }
    });
  });
});