<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" type="text/css"	href="../../static/css/admin/index.css">
<meta charset="UTF-8">
<title>Dashboard</title>

<style>
</style>
</head>
<body>
<div id="sidebar">
	 	 <div id="logo"></div>
		<a href="index.jsp">공지사항</a> 
		<a href="member.jsp">회원관리</a> 
		<a href="qna.jsp">문의내역</a>
	</div>
	<div id=:logo></div>
	
	<div class="content">
		<h1>공지사항 관리</h1>
		<div class="btn">
		  <button id="add-btn">활성화</button>
  		<button id="delete-btn">비활성화</button>
  		</div>
		<table>
			<tr>
			<th style="width:30px"><input type="checkbox" id="chkAll" name="chkAll"/></th>
				<th>공지번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성날짜</th>
				<th>수정</th>
			</tr>
			<tr>
			    <td><input type="checkbox" name="chk"></td>
				<td>1</td>
				<td><a href="noticeView.jsp?noticeNo=1">2,500</a></td>
				<td>100</td>
				<td>$500</td>
				<td>$500</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<td>2</td>
				<td>3,000</td>
				<td>110</td>
				<td>$550</td>
				<td>$550</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<td>3</td>
				<td>2,800</td>
				<td>120</td>
				<td>120</td>
				<td>$600</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<td>4</td>
				<td>3,200</td>
				<td>130</td>
				<td>$650</td>
				<td>$650</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="chk"></td>
				<td>5</td>
				<td>3,500</td>
				<td>140</td>
				<td>$700</td>
				<td>$700</td>
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