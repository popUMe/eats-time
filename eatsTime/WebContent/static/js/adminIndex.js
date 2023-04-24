/**
 * 공지사항 
 */
/*체크박스 */
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
		
/* 페이징 */
		$(function() {
			  var paging = $('.paging');
			  var btns = paging.find('a');
			  
			  btns.click(function() {
			    btns.removeClass('active');
			    $(this).addClass('active');
			  });
			});
		
		
	/* 버튼 클릭시 기능 */
		$(function() {
			  $('#add-btn').click(function() {
			    location.href = 'adminNoticeWrite.jsp';
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
		