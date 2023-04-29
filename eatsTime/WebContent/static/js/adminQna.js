/**
 * 문의내역
 */

$(document).ready(function() {
	
	/* 답변 상태 초기 디자인 */
	$(function() {
		$("td:contains('답변 완료')").css("color", "green");
		$("td:contains('답변 대기')").css("color", "red");
	});
	
	/* 작성하기 버튼 눌렀을 때 adminQnaWrite로 넘어감 */
	$(function() {
		$('#add-btn').click(function() {
			location.href = 'adminQnaWrite.jsp';
		});
	});

	$("#chkAll").click(function() {
		if ($("#chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
		else $("input[name=chk]").prop("checked", false);
	});

	$("input[name=chk]").click(function() {
		var total = $("input[name=chk]").length;
		var checked = $("input[name=chk]:checked").length;

		if (total != checked) $("#chkAll").prop("checked", false);
		else $("#chkAll").prop("checked", true);
	});

	

	
	/* 행 삭제하는 코드 */
	/*
	$("#delete-btn").click(function() {
		var checkedItems = $("input[name='chk']:checked");
		var checkedItemIds = [];
		checkedItems.each(function() {
			checkedItemIds.push($(this).closest("tr").find("td:nth-child(2)").text());
			$(this).closest("tr").remove();
		});
		console.log("Deleted item ids: " + checkedItemIds.join(", "));
	});
	*/	


	/* 작성버튼 클릭 이벤트 */
	$("#add-btn").click(function() {
		$("input[name=chk]:checked").each(function() {
			$(this).closest("tr").find("td:eq(5)").text("답변 완료");
			$(this).closest("tr").find("td:eq(5)").css("color", "green");
		});
	});

	/* 삭제버튼 클릭 이벤트 */
	$("#delete-btn").click(function() {
		$("input[name=chk]:checked").each(function() {
			$(this).closest("tr").find("td:eq(5)").text("답변 대기");
			$(this).closest("tr").find("td:eq(5)").css("color", "red");
		});
	});


	/* 페이지 컨트롤러 디자인 */
	$(function() {
		var paging = $('.paging');
		var btns = paging.find('a');

		btns.click(function() {
			btns.removeClass('active');
			$(this).addClass('active');
		});
	});

});

