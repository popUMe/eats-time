<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath}/static/css/admin/adminIndex.css">
<title>회원관리 - 관리자모드</title>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
</style>
</head>
<body>
<div id="sidebar">
	 	 <div id="logo"></div>
		<a href="adminIndex.jsp">공지사항</a> 
		<a href="adminMember.jsp">회원관리</a> 
		<a href="adminQna.jsp">문의내역</a>
	</div>
	<div id=:logo></div>
	
	<div class="content">
		<h1>회원 관리</h1>
	<div id=table-container>
		<div class="btn">
		  <button id="add-btn">활성</button>
  		<button id="delete-btn">비활성</button>
  		
  		</div>
		<table>
			<tr>
			<th style="width:30px"><input type="checkbox" id="chkAll" name="chkAll"/></th>
				<th>회원번호</th>
				<th>이름</th>
				<th>가입날짜</th>
				<th>상태</th>
			</tr>
			<tr>
			    <td><input type="checkbox" name="chk"></td>
				<td>5</td>
				<td>조세연</td>
				<td>2023.04.15</td>
				<td>활성</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<td>4</td>
				<td>조세연</td>
				<td>2023.04.15</td>
				<td>비활성</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<td>3</td>
				<td>조세연</td>
				<td>2023.04.15</td>
				<td>비활성</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<td>2</td>
				<td>조세연</td>
				<td>2023.04.15</td>
				<td>비활성</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<td>1</td>
				<td>조세연</td>
				<td>2023.04.15</td>
				<td>비활성</td>
			</tr>
		</table>
		<div class="paging">
			<a href="#" class="active">1</a>
			<a href="#">2</a>
			<a href="#">3</a>
			<a href="#">4</a>
			<a href="#">5</a>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/adminMember.js"></script>
</html>