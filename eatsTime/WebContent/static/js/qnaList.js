

showList();


function showList() {



	let text = "";

	boards.forEach(board => {

		text += `
				<li class="css-e0dnmk e1cfowvj3">
							<div class="css-nfcc9b e1cfowvj4">
								<div class="css-wqw6mu e1cfowvj2">
									<div class="css-4l2co e1vd1n2i2">${board.inqbTitle}</div>
								</div>
								<div class="css-8e1vc1 e1cfowvj2">
									<span class="css-14kcwq8 e1vd1n2i1">${board.inqbDate}</span>
								</div>
								<div class="css-8e1vc1 e1cfowvj2">
									<span color="#999" class="css-14kcwq8 e1hz5ei00">${board.inqbComplete ? "답변완료" : "답변미완료"}</span>
								</div>
							</div>
						</li>
						<li class="css-d3v9zr e1cfowvj0" style="opacity: 1; height: auto;">
					<div class="css-br5cai e1vd1n2i0">

						<div class="css-zjik7 e82q4qc4">
							<span class="css-1ylw081 e1kayg9i0"></span>
							<div class="css-145c1ga e82q4qc3">
								<span type="QUESTION" class="css-190bjnp e82q4qc2">${board.inqbContent}</span>
								<br>
								<div class="css-1kl96ir ewad2cu1"></div>
							</div>
						</div>
						<div class="css-1oe9o3r eula2qn2">
                     <button type="button" class="css-qv4hdm eula2qn1">수정</button>
                     <div class="css-ord49b eula2qn0"></div>
                     <button type="button" class="css-qv4hdm deletebtn">삭제</button>
                  		</div> 
						<div class="css-1tsgnig e1vtrp070">
							<div class="css-b41fnw etpoi034">
								<div class="css-1i2xt0r etpoi030">
									<span class="css-1non6l6 ey0f1wv0"></span>
								</div>
								<div class="css-wm215i etpoi033">
									<span type="ANSWER" class="css-kfh61x etpoi032">안녕하세요, 고객님</span>
									<br>
									<span type="ANSWER" class="css-kfh61x etpoi032">고객님의 응원 말씀 덕에 오늘 저의 하루에 활기가 생겼습니다.</span>
									<br>
									<span type="ANSWER" class="css-kfh61x etpoi032">저희 서비스를 애용해주셔서 감사하고,</span>
									<br>
									<span type="ANSWER" class="css-kfh61x etpoi032">고객님의 만족을 위해 최선을 다하는 이츠타임이 되겠습니다.</span>
									<br>
									<span type="ANSWER" class="css-kfh61x etpoi032">오늘도 기운 넘치는 하루 보내세요^^</span>																	
									<div class="css-iqoq9n e1b9s61w0"></div>
									<div class="css-1kna94k etpoi031">2023.04.14</div>
								</div>
							</div>
						</div>
					</div>
				</li>
		`;



	});

	if (boards.length == 0) {
		text += `
			<li>
		        <div>
					현재 게시글이 없습니다. 게시글 작성을 해보세요!
				</div>
			</li>
		`
	}

	$(".listqna").append(text);
}





/*클릭 시 게시글 펼쳐지*/
$(".e1cfowvj3").click(function() {
	if ($(this).next(".e1cfowvj0").css('display') == 'none') {
		return $(this).next(".e1cfowvj0").slideDown();
	}

	if ($(this).next(".e1cfowvj0").css('display') == 'list-item') {
		return $(this).next(".e1cfowvj0").slideUp();
	}
});

/*삭제 확인 모달창*/
$(".deletebtn").on("click", function() {
	$("#modal1").fadeIn();
	$("body").css('overflow', 'hidden');
	return false;
});

/*삭제여부 모달창 취소버튼*/
$(".canceldeletion").on("click", function() {
	$("#modal1").fadeOut();
	$("body").css('overflow', 'auto');
});

/*확인버튼 클릭 시 모달창 : 삭제 완료*/
$(".yesdeletion").click(function() {
	console.log("들어옴");
	$(this).closest("#modal1").fadeOut();
	/* $("#modal2").css('display', 'block');*/
	$("#modal2").fadeIn();
});

/* 확인 버튼 클릭 시 '삭제 완료' 종료*/
$(".deleteioncomplete").on("click", function() {
	$("#modal2").fadeOut();
	$("body").css('overflow', 'auto');
});