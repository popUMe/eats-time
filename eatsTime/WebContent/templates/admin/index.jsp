<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" type="text/css"	href="../../static/css/admin/index.css">
<meta charset="UTF-8">
<title>Dashboard</title>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@900&display=swap');
</style>
</head>
<body>
<div id="sidebar">
	 	 <div id="logo"></div>
		<a href="index.jsp">공지사항</a> 
		<a href="member.jsp">회원관리</a> 
		<a href="qna.jsp">문의내역</a>
		<button id=logout-btn><a href="logout.jsp">로그아웃</a></button>
	</div>
	<div id=:logo></div>
	
	<div class="content">
		<h1>공지사항 관리</h1>
		<div class="btn">
		  <button id="add-btn">작성</button>
  		<button id="delete-btn">삭제</button>
  		</div>
		<table>
			<tr>
			<th style="width:30px"><input type="checkbox" id="chkAll" name="chkAll"/></th>
				<th>공지번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성날짜</th>
			</tr>
			<tr>
			    <td><input type="checkbox" name="chk"></td>
				<td>공지</td>
				<td><a href="noticeView.jsp">[안내]배송 서비스 확장 안내</a></td>
				<td>관리자</td>
				<td>2023.04.15</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<td>공지</td>
				<td><a href="noticeView.jsp">[안내]소비자 분쟁해결 기준 안내</a></td>
				<td>관리자</td>
				<td>2023.04.15</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<td>공지</td>
				<td><a href="noticeView.jsp">[이벤트]</a></td>
				<td>관리자</td>
				<td>2023.04.15</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<td>공지</td>
				<td><a href="noticeView.jsp">[안내]서비스 점검 안내</a></td>
				<td>관리자</td>
				<td>2023.04.15</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<td>공지</td>
				<td><a href="noticeView.jsp">3,500</a></td>
				<td>관리자</td>
				<td>2023.04.15</td>
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
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#chkAll").click(function() {
				if($("#chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;
				
				if(total != checked) $("#chkAll").prop("checked", false);
				else $("#chkAll").prop("checked", true); 
			});
		});
		
		$(function() {
			  var paging = $('.paging');
			  var btns = paging.find('a');
			  
			  btns.click(function() {
			    btns.removeClass('active');
			    $(this).addClass('active');
			  });
			});
		
		$(function() {
			  $('#add-btn').click(function() {
			    location.href = 'noticeWrite.jsp';
			  });
			});

		$(document).ready(function() {
			  $("#delete-btn").click(function() {
			    var checkedItems = $("input[name='chk']:checked");
			    var checkedItemIds = [];
			    checkedItems.each(function() {
			      checkedItemIds.push($(this).closest("tr").find("td:nth-child(2)").text());
			      $(this).closest("tr").remove();
			    });
			    console.log("Deleted item ids: " + checkedItemIds.join(", "));
			  });
			});
		
		
	</script>
</html>