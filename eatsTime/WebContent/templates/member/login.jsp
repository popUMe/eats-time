<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="https://www.kurly.com/favicon.ico" />
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/css/all.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/css/member/login.css" />
   	<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/modal/modal.css">
    <title>이츠타임 - 로그인</title>
</head>
<body>
   <jsp:include page="../header.jsp" />
<main id="login">
	<div class="modal">
		<div class="warn-modal">
                <div id="content-wrap"></div>
              </div>
           </div>
<div class="css-1bb6q2p">

    <div class="css-a7gihu">로그인</div>
    <div class="css-1axolzg">
    
        <form action="${pageContext.request.contextPath}/loginOk.member" name="login" method="post">
            <div class="css-46b038">
                <div class="css-1accgqb">
                    <div class="css-176lya2">
                        <input type="text" data-testid="input-box" id="userid" name="memberIdentification" placeholder="아이디를 입력해주세요"
                               class="css-u52dqk">
                    </div>
                </div>
                <div class="css-1accgqb">
                    <div class="css-176lya2">
                        <input type="password" data-testid="input-box" id="password" name="memberPw" placeholder="비밀번호를 입력해주세요"
                               autocomplete="off" class="css-u52dqk">
                    </div>
                </div>
            </div>
              <div>
                   <div id="check-save-id">
                       <label class="check-save-id-wrap">
                             <section>
                                      <input type="checkbox" name="auto-login" value="true">
                                     <span class="checkbox">
                                        </span>
                                        <p class="h5">로그인 상태 유지</p>
                                    </section>
                                </label>
                            </div>
                        </div>
            <div class="css-1vjdduq">
                <a href="templates/member/findId.jsp" class="css-i4t6me findid-button">아이디 찾기</a> <span class="css-1cgn39v"></span>
                <a href="findPw.jsp" class="css-i4t6me findpw-button">비밀번호 찾기</a>
            </div>
            <div class="css-s4i9n2">
                <button class="css-qaxuc4" type="button" value="login" height="54" radius="3" onclick="send()">
                    <span class="css-ymwvow">로그인</span>
                </button>
               <button class="css-hxorrg" type="button" onclick ="location.href='${pageContext.request.contextPath}/join.member'" height="54" radius="3">
    					<span class="css-ymwvow">회원가입</span>
				</button>
            </div>
        </form>
    </div>
</div>
<jsp:include page="../footer.jsp" />
	<div id="modal-Disabled">
		<div class="banner-online">
			<div class="modal-content">비활성화된 계정입니다 활성화하시겠습니까?</div>
			<div class="close-button" style="cursor: pointer;">
				확인
			</div>
		</div>
	</div>
	
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/login.js"></script>
<script src="${pageContext.request.contextPath}/static/js/modal/modal.js"></script>
<script>
	let autoLogin = "${autoLogin}";
	if(autoLogin){
		$("input[name='auto-login']").prop("checked", true);
		checkedAutoLogin();
	}
</script>
<c:if test="${not empty param.login}">
	<script>
		showWarnModal("아이디 또는 비밀번호를<br>확인해주세요");
	</script>
</c:if>
	
<c:if test="${not empty param.status}">
	<script>
		showWarnModal("탈퇴 또는 정지된 회원입니다. 고객센터로 문의해주시기 바랍니다");
	</script>
</c:if>	

</main>
</body>
</html>