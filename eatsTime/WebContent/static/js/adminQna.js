/**
 * 문의내역
 */

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
			    location.href = 'adminQnaWrite.jsp';
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
		
		$(document).ready(function() {

			  $("td:contains('답변 완료')").css("color", "green");
			  $("td:contains('답변 대기')").css("color", "red");
			});
		
		

		$(document).ready(function() {
			  $("#add-btn").click(function() {
			    $("input[name=chk]:checked").each(function() {
			      $(this).closest("tr").find("td:eq(5)").text("답변 완료");
			      $(this).closest("tr").find("td:eq(5)").css("color", "green");
			    });
			  });
			});
		
		$(document).ready(function() {
			  $("#delete-btn").click(function() {
			    $("input[name=chk]:checked").each(function() {
			      $(this).closest("tr").find("td:eq(5)").text("답변 대기");
			      $(this).closest("tr").find("td:eq(5)").css("color", "red");
			    });
			  });
			});

