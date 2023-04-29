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


$("input[name=chk]").on('input', activate);
$("#chkAll").on('input', activate);

function activate(){
	if($("input[name=chk]:checked").length >= 1){
		$("#delete-btn").attr('disabled', false)
	}else{
		$("#delete-btn").attr('disabled', 'disabled')
	}
}