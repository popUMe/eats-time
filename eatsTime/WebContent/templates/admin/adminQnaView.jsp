<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon"
   href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/static/css/admin/adminNoticeWrite.css">
<title>문의내역 - 관리자모드</title>
</head>
<body>
   <div class="board_wrap">
      <div class="board_title">
         <h1>문의내역 - 관리자모드</h1>
      </div>
      <div class="board_view_wrap">
         <div class="board_view">
            <div class="title">${boards.inqbContent}</div>
            
            
            <div class="info">
               <dl>
                  <dt>회원 아이디</dt>
                  <dd>${boards.memberIdentification}</dd>
               </dl>
               <dl>
                  <dt>작성일</dt>
                  <dd>${boards.inqbDate}</dd>
               </dl>
             
            </div>
            <div class="cont">
               <br>${boards.inqbContent}

            </div>
         </div>
         <div class="btn">
            <a href="adminQna.jsp" class="on">목록</a> <a href="adminQnaEdit.jsp">답변 작성</a>
         </div>
      </div>
   </div>

</body>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>console.log(${boards.memberIdentification})</script>
</html>