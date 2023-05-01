/**
 * 문의내역
 */

$(document).ready(function() {

	/* 답변 상태 초기 디자인 */
	$(function() {
		$("td:contains('답변 완료')").css("color", "green");
		$("td:contains('답변 대기')").css("color", "red");
	});


	$("#chkAll").click(function() {
		if ($("#chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
		else $("input[name=chk]").prop("checked", false);
	});
	$("input[name=chk]").click(function() {
		var total = $("input[name=chk]").length;
		var checked = $("input[name=chk]:checked").length;
		console.log(total);
		console.log(checked);
		if (total != checked) $("#chkAll").prop("checked", false);
		else $("#chkAll").prop("checked", true);
	});
	
	
	/* 체크박스 */
	$("input[name=chk]").on('input', activate);
	$("#chkAll").on('input', activate);

	function activate() {
		if ($("input[name=chk]:checked").length >= 1) {
			console.log($("input[name=chk]:checked").length);
			$("#delete-btn").attr('disabled', false)
		} else {
			$("#delete-btn").attr('disabled', 'disabled')
		}
	}



	/* 작성 버튼 눌렀을 때 adminQnaWrite로 넘어감 */
	$(function() {
		$('#add-btn').click(function() {
			location.href = 'adminQnaWrite.jsp';
		});
	});

	/* 삭제 버튼 눌렀을 때 연결 */
/*
	$(function() {
		$('#add-delete').click(function() {
			console.log("삭제버튼 클릭");
			$("form[name='delete-form']").submit();
		});
	});
*/



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

