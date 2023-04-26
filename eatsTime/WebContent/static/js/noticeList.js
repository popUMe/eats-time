/**
 * 
 */

showList()

function showList(){
		const $ul = $("ul.css-1fttcpj");
		let text = "";
		for(let i=0; i<notificationboards.length; i++){
		text += `<li style="cursor:pointer">
					<a href='/eatsTime/noticeViewOk.notificationboard?notbId=${notificationboards[i].notbId}'>
						<div class="css-14yglsw e1cfowvj4">
							<div class="css-3o6rrk e1cfowvj2" name="notbId">${notificationboards[i].notbId}</div>
							<div class="css-fzefrb e1cfowvj2" name="notbTitle">${notificationboards[i].notbTitle}</div>
							<div class="css-3d2kks e1cfowvj2" name="memberName">${notificationboards[i].memberName}</div>
							<div class="css-b1hszl e1cfowvj2" name="notbDate">${notificationboards[i].notbDate}</div>
						</div>
					</a>
				</li>
				
				`;
		}
		$ul.append(text);
	}