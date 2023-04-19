<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" type="text/css"	href="../../static/css/admin/index.css">
<meta charset="UTF-8">
<title>회원 관리</title>

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
		<h1>회원 관리</h1>
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
		
			
		
		$(document).ready(function() {

			  $("td:contains('활성')").css("color", "green");
			  $("td:contains('비활성')").css("color", "red");
			});
		
		

		$(document).ready(function() {
			  $("#add-btn").click(function() {
			    $("input[name=chk]:checked").each(function() {
			      $(this).closest("tr").find("td:eq(4)").text("활성");
			      $(this).closest("tr").find("td:eq(4)").css("color", "green");
			    });
			  });
			});
		
		$(document).ready(function() {
			  $("#delete-btn").click(function() {
			    $("input[name=chk]:checked").each(function() {
			      $(this).closest("tr").find("td:eq(4)").text("비활성");
			      $(this).closest("tr").find("td:eq(4)").css("color", "red");
			    });
			  });
			});

		
		
		
	</script>
</html>