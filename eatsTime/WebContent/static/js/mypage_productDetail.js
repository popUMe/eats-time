/**
 * 
 */


function setClock(){
    var dateInfo = new Date(); 
    var hour = modifyNumber(dateInfo.getHours()); //시간
    var min = modifyNumber(dateInfo.getMinutes()); //분
    var sec = modifyNumber(dateInfo.getSeconds()); //초
    var year = dateInfo.getFullYear(); //년
    var month = dateInfo.getMonth()+1; //monthIndex를 반환해주기 때문에 1을 더해준다.
    var date = dateInfo.getDate();//날짜
    
	var twoyear=String(year).slice(-2);
	
	document.getElementById("time").innerHTML = hour + ":" + min  + ":" + sec;
    document.getElementById("date").innerHTML = twoyear + "년 " + month + "월 " + date + "일";
}


function modifyNumber(time){
    if(parseInt(time)<10){
        return "0"+ time;
    }
    else
        return time;
}
window.onload = function(){
    setClock();
    setInterval(setClock,1000); //1초마다 setClock 함수 실행
}