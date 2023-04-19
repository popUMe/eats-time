/**
 * 회원 관리
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

		
		
		