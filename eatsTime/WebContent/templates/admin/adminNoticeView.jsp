<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"><head>
    <title>공지사항</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin/adminNoticeWrite.css">
</head>
<body>
    <div class="board_wrap">
        <div class="board_title">
            <h1>공지사항</h1>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    제목
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>1</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2023.4.15</dd>
                    </dl>
                    <dl>
                        <dt>조회</dt>
                        <dd>1</dd>
                    </dl>
                </div>
                <div class="cont">
                     내용<br>
                     내용<br>
                     내용<br>
                    
                </div>
            </div>
            <div class="btn">
                <a href="adminIndex.jsp" class="on">목록</a>
                <a href="adminNoticeEdit.jsp">수정</a>
            </div>
        </div>
    </div>

</body></html>