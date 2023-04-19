<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/formtest.css">
<title>컬리 - 마켓컬리/뷰티컬리</title>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="css-pculus">
		<div class="css-o5dw7d">상품 등록</div>
		<div class="css-mhmtvt">
			<div class="css-rb0i47">
				<span class="css-qq9ke6">*</span> 필수입력사항
			</div>
			<div class="css-y8aj3r">
			<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">상품 이미지<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
<!-- 							<div class="css-176lya2"> -->
							
								<label for="attach"> 
								
								<img src="plus.png" class="css-plusimage">
<!-- 								<div class="css-u52dqk"> -->
<!-- 								<span class="css-ymwvow">상품 사진을 등록해주세요.</span> -->
<!-- 								<p class="css-imagerule"> * 이미지 규격 : 123x123 </p> -->
<!-- 								</div> -->
								
								</label>
								<input type="file" id="attach" style="display: none;">

								<div class="image">
									<div class="cancel" style="display: none";>X</div>
									<!--이미지를 없애는 X 버튼-->
								</div>

<!-- 							</div> -->
						</div>
					</div>
<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->


						
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">상품명<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">
								<input data-testid="input-box" id="memberId" name="memberId"
									placeholder="상품명을 입력해주세요" type="text" required=""
									class="css-u52dqk" value="">
							</div>
						</div>
					</div>
<!-- 						<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>
				
				
						<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">판매 가격<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">
								<input data-testid="input-box" id="password" name="password"
									placeholder="판매 가격을 입력해주세요" type="password" autocomplete="off"
									class="css-u52dqk" value="">
							</div>
						</div>
					</div>
<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>
				
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">판매 수량<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">
								<input data-testid="input-box" id="password" name="password"
									placeholder="판매 가능한 수량을 입력해주세요" type="password" autocomplete="off"
									class="css-u52dqk" value="">
							</div>
						</div>
					</div>
<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">판매 및 발송지 주소<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">
								<input data-testid="input-box" id="passwordConfirm"
									name="passwordConfirm" placeholder="판매할 주소를 입력해주세요"
									type="password" autocomplete="off" class="css-u52dqk"
									value="">
							</div>
						</div>
					</div>
<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>
				
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">판매 유형<span
							class="css-qq9ke6">*</span></label></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-14wodj6">

								<label
								class="css-z9g6s0" for="delivery"><input
								id="delivery" name="how"
								type="radio" class="css-1pes2r6" value="delivery"><span
								class="css-198i9ca"><div
										class="css-1dahn5m"></div></span><span
								 class="css-mgd87h">배송</span></label><label
								class="css-z9g6s0" for="pickup"><input
								 id="pickup
								 " name="how"
								type="radio" class="css-1pes2r6" value="pickup"
								checked=""><span class="css-5xw1m2"><div
										class="css-1vic0rk"></div></span><span
								 class="css-mgd87h">픽업</span></label>
						</div>
					</div>
<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>
				
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">유통 기간<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-176lya2">
<!-- 							<form> -->
      						<p><input class="css-u52dqk" type="date" value="sysdate"></p>
     						
<!-- 	    					</form> -->
									
							</div>
						</div>
					</div>
<!-- 					<div class="css-1w0ksfz e744wfw2"> -->
<!-- 						<button class="css-ufulao e4nu7ef3" type="button" disabled=""> -->
<!-- 							<span class="css-ymwvow e4nu7ef1">인증번호 받기</span> -->
<!-- 						</button> -->
<!-- 					</div> -->
				</div>
		
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">제품정보<span
							class="css-qq9ke6">*</span></label>
					</div>
					<div class="css-82a6rk">
						<div class="css-jmalg">
							<div class="css-detailwrite">
								<input data-testid="input-box" id="password" name="password"
									placeholder="안내사항을 작성해주세요" type="password" autocomplete="off"
									class="productDetail" value="">
							</div>
						</div>
					</div>
<!-- 					<div class="css-1w0ksfz e744wfw2"></div> -->
				</div>
			
				
			</div>
			<div class="css-1eo0fey"></div>

			<div class="css-137ca2h">
				<button class="css-18m884r" type="submit" width="240"
					height="56" radius="3">
					<span class="css-ymwvow">등록하기</span>
				</button>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>

const image_div = document.querySelectorAll("div.image"); //
const cancel_div = document.querySelector("div.cancel"); //취소 버튼
const input_file = document.querySelector("#attach"); //추가할 이미지 <input type="file" id="attach" style="display: none;">

// x버튼 눌렀을 때 
cancel_div.addEventListener("click", () => {
    input_file.value = ""; 
    image_div[0].style.display = "block";//+ 이미지(파일 추가하는) 보이고
    image_div[1].style.display = "none";//원래 표시돼 있던 이미지 없어지고
    cancel_div.style.display = "none";//x없어지고
});

// input type file인 객체는 파일 업로드 시 change 이벤트가 발생한다.
input_file.addEventListener("change", e => {
    // 이 때 e객체로 업로드된 파일의 정보를 가져올 수 있다(e.target.files[0]).
    // console.log(e.target.files[0]);

    // 하지만 change 이벤트 객체만으로는 해당 파일의 경로를 알 수 없기 때문에
    // FileReader객체가 필요하다.
    let reader = new FileReader();

    // reader객체의 readAsDataURL()메소드를 사용하여 파일의 정보를 전달해주면,
    reader.readAsDataURL(e.target.files[0]);
    // 모든 파일의 정보를 읽어왔을 때 onload 이벤트가 발생한다.
    // function(a){} 와 a => {} 같음
    // function(e){} 와 e => {} 같음
    reader.onload = e => {
        image_div[1].style.display = "block"; //선택한 이미지 : 보여야할 것
        image_div[1].style.backgroundImage = `url('${e.target.result}')`
        image_div[0].style.display = "none"; //없어져야 될 것 : + 이미지(파일 추가하는)
        cancel_div.style.display = "block"; //X 버튼은 파일이 업로드 되어 화면이 보일 때 같이 보여야한다
    };
});
</script>
</html>
</script>
</html>