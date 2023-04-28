function showList(){
      const $table = $("table");
      let text = "";
      for(let i=0; i<notificationboards.length; i++){
      text += `
            <tr onclick="javascript:location.href='${pageContext.request.contextPath}/viewOk.notificationboard'">
             <td><input type="checkbox" name="chk"></td>
            <td name="notbId">공지번호: ${notificationboards[i].notbId}</td>
            <td name="notbTitle"><a>${notificationboards[i].notbTitle}</a></td>
            <td name="memberName">${notificationboards[i].memberName}</td>
            <td name="notbDate">${notificationboards[i].notbDate}</td>
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
