/**
 * 회원 관리
 */

$(document).ready(function() {
	
	/* 회원 전체 목록 조회 뿌리기 */
	showList();

	function showList() {
		members = JSON.parse(members);
		const $tbody = $("#table-container .member-list");
		let text = "";
		
		members.forEach(member => {
			text += `
			<tr>
			    <td><input type="checkbox" name="chk" value="${member.memberId}"></td>
				<td>${member.memberId}</td>
				<td>${member.memberName}</td>
				<td>${member.memberJoinedDate}</td>
				<td>${member.memberStatus}</td>
			</tr>
		`;
		});

		if (members.length == 0) {
			text += `
			<tr>
			    <td><input type="checkbox" name="chk"></td>
				<td>회원이 없습니다.</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		`
		}

		$tbody.append(text);
	}
	
	
	var chks = $("input[name=chk]");
	let btns = $(".btns");
	
	/* btns 처음 초기값 : disabled */
	btns.attr('disabled', 'disabled');
	
	
	/* 체크된 체크박스 개수 구하고 버튼 활성화 */
	function getCheckedCnt()  {
	  // 선택된 목록 가져오기
	  const checked = 'input[name="chk"]:checked';
	  const selectedElements = document.querySelectorAll(checked);
	  
	  // 선택된 목록의 갯수 세기
	  const selectedElementsCnt = selectedElements.length;
	  
	  // 버튼 활성화 및 출력
	  if (selectedElementsCnt < 1){
			btns.attr('disabled', 'disabled');
			console.log("여기는 " + selectedElementsCnt);
		} else if(selectedElementsCnt >= 1) {
			btns.removeAttr('disabled');
			console.log("여기는 " + selectedElementsCnt);
		}
	}
	
	
	/* #chkAll 눌렀을 때 전체 chk가 true / false + getCheckedCnt 실행*/
	$("#chkAll").click(function() {
		if  ($("#chkAll").is(":checked")) {
			chks.prop("checked", true);
			getCheckedCnt();
		} else {
			chks.prop("checked", false);
			getCheckedCnt();
		}
	});
	
		
	
	/* chks 눌렀을 때 getCheckedCnt 실행 */
	$(chks).click(function() {
		getCheckedCnt();
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
	

	/* 상태 활성, 비활성 디자인 */
	$(function() {
		$("td:contains('true')").text("활성").css("color", "green");
		$("td:contains('false')").text("비활성").css("color", "red");
	});
	
	/* 활성화로 상태 변경 */
	$("#add-btn").click(function() {
		$("input[name='status']").val($("this").attr("id") == "add-btn" ? "false" : "true");
		$("form[name='status-form']").submit();
	});
	
	/* 비활성화로 상태 변경 */
	$("#delete-btn").on("click", function(){
		$("input[name='status']").val($("this").attr("id") == "delete-btn" ? "true" : "false");
		$("form[name='status-form']").submit();
	});


});
