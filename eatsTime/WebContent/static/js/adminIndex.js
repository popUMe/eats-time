/**
 * 공지사항 
 */

showList();


function showList(){
		const $table = $("table");
		let text = "";
		for(let i=0; i<notificationboards.length; i++){
		text += `
				<tr>
			    <td><input type="checkbox" name="chk" value="${notificationboards[i].notbId}"></td>
				<td onclick="javascript:location.href='/eatsTime/viewOk.notificationboard?notbId=${notificationboards[i].notbId}'" name="notbId">${notificationboards[i].notbId}</td>
				<td onclick="javascript:location.href='/eatsTime/viewOk.notificationboard?notbId=${notificationboards[i].notbId}'" name="notbTitle"><a>${notificationboards[i].notbTitle}</a></td>
				<td onclick="javascript:location.href='/eatsTime/viewOk.notificationboard?notbId=${notificationboards[i].notbId}'" name="memberName">${notificationboards[i].memberName}</td>
				<td onclick="javascript:location.href='/eatsTime/viewOk.notificationboard?notbId=${notificationboards[i].notbId}'" name="notbDate">${notificationboards[i].notbDate}</td>
			    </tr>
				
				`;
		}
		$table.append(text);
	}

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
		


		