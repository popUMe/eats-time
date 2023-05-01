<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon"
	href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/member/buyinglistDetail.css">
<title>이츠타임 - 주문 상세</title>

</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="css-luwwab">
		<div class="css-833hqy">
			<div class="css-1v4whg">마이타임</div>
			<!--css-1v4whg ecbxmj2  -->
			<ul class="css-1x9bshx">
				<li><a class="active css-g4g0eu" id="li-1" href="${pageContext.request.contextPath}/purchaseProduct.purchase">주문 내역 <svg
							xmlns="http://www.w3.org/2000/svg" width="19" height="19"
							viewBox="0 0 24 24">
							<defs>
							<path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs>
							<g fill="none" fill-rule="evenodd">
							<g>
							<g>
							<g>
							<g
								transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
							<use class="point1" stroke="#ff4f32" stroke-linecap="round"
								stroke-width="1.8" stroke-linejoin="round"
								transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg></a></li>

				<li><a class="css-g4g0eu" id="li-3" href="${pageContext.request.contextPath}/modify.member">개인 정보 수정 <svg
							xmlns="http://www.w3.org/2000/svg" width="19" height="19"
							viewBox="0 0 24 24">
							<defs>
							<path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs>
							<g fill="none" fill-rule="evenodd">
							<g>
							<g>
							<g>
							<g
								transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
							<use class="point3" stroke="#999" stroke-linecap="round"
								stroke-width="1.8" stroke-linejoin="round"
								transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg></a></li>
			</ul>

			<a href="/mypage/inquiry/list" class="css-196gwz9">

				<div class="css-rmee6s">
					<span class="css-1sdidca">도움이 필요하신가요 ?</span> <span
						class="css-rnnx2x">1:1 문의하기</span>
				</div> <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19"
					viewBox="0 0 24 24">
				<defs>
				<path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs>
				<g fill="none" fill-rule="evenodd">
				<g>
				<g>
				<g>
				<g
						transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
				<use stroke="#333" stroke-linecap="round" stroke-width="1.8"
						stroke-linejoin="round" transform="rotate(45 5.657 5.657)"
						xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg>
			</a>
		</div>
		<!-- css-833hqy ecbxmj3 -->

		<div class="css-171zbec eug5r8l0">

			<div class="css-j0lifa">
				<div class="css-fhxb3m">
					<h2 class="css-1268zpe">주문 내역 상세</h2>
				</div>
			</div>

			<div class="css-1bsokvi">
				<h3 class="css-yi2ox5">
					주문번호:
					<c:out value="${purchaseDetail.purId}" />
				</h3>
				<span class="css-1mlk737" style="visibility: hidden">배송 또는
					상품에 문제가 있나요? <a href="/mypage/inquiry/list" class="css-1s2o3jp">
						1:1 문의하기 <img
						src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iOSIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDkgMTgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8cGF0aCBkPSJtMiA0IDUgNS01IDUiIHN0cm9rZT0iIzVGMDA4MCIgc3Ryb2tlLXdpZHRoPSIxLjMiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo="
						alt="purpleArrowRight" class="e1jm6dy10 css-cb2xrd eflljbi0">
				</a>
				</span>
			</div>

			<div class="css-mrxscg ecmuszp10">
				<img
					src="${pageContext.request.contextPath}/upload/${purchaseDetail.fileOriginalName}"
					alt="" class="css-1ixzt3f ecmuszp9">
				<div class="css-1t5xcqm ecmuszp8">
					<a href="/goods/5026448" class="css-15vlnp ecmuszp7">[상품명] <c:out
							value="${purchaseDetail.productName}" /></a>
					<div class="css-s5xdrg ecmuszp5">
						<span data-testid="goods-price" class="css-1ngn8p4 ecmuszp4">가격(원)</span><span
							class="css-1ekh7sh ecmuszp2"><c:out
								value="${purchaseDetail.purTotalPrice}" /></span>
					</div>
				</div>
				<!-- <span class="css-l71t3l ecmuszp1">배송여부</span> -->

			</div>

			<span class="css-15leche e1egl70z0" style="visibility: hidden; margin-bottom: 30px;"></span>



			<div class="css-1bsokvi e1jm6dy15">
				<h3 class="css-yi2ox5 e1jm6dy14">결제정보</h3>
			</div>

			<ul class="css-hig5bx e1sh1vdm2">
				<li class="css-hvdq8h e1ysbs753"><span
					class="css-11h8hn9 e1ysbs752">상품 결제 금액</span><span
					class="css-l5tyq9 e1ysbs751"><c:out
							value="${purchaseDetail.purTotalPrice}" /><span
						class="css-1u0jk3a e1ysbs750">원</span></span></li>

				<li class="css-hvdq8h e1ysbs753"
					style="visibility: hidden; padding-bottom: 20px;"><span
					class="css-11h8hn9 e1ysbs752"></span><span
					class="css-l5tyq9 e1ysbs751"></span></li>

				<li class="css-hvdq8h e1ysbs753"><span
					class="css-11h8hn9 e1ysbs752">결제방법</span><span
					class="css-l5tyq9 e1ysbs751"><span
						class="css-1u0jk3a e1ysbs750">부트페이</span></span></li>

				<li class="css-hvdq8h e1ysbs753"
					style="visibility: hidden; padding-bottom: 20px;"><span
					class="css-11h8hn9 e1ysbs752"></span><span
					class="css-l5tyq9 e1ysbs751"></span></li>

				<li class="css-hvdq8h e1ysbs753"><span
					class="css-11h8hn9 e1ysbs752">결제일시</span><span
					class="css-l5tyq9 e1ysbs751"><span
						class="css-1u0jk3a e1ysbs750"><c:out
								value="${purchaseDetail.purDate}" /></span></span></li>


			</ul>



			<!-- 		<div class="css-1bsokvi"><h3 class="css-yi2ox5">주문정보</h3></div>
		<ul class="css-hig5bx">
		<li class="css-8homh5"><span class="css-9i2eur">주문번호</span><span
			class="css-thgwm0">2300016310030</span></li>
		<li class="css-8homh5"><span class="css-9i2eur">보내는
				분</span><span class="css-thgwm0">문소영</span></li>
		<li class="css-8homh5"><span class="css-9i2eur eu7fh4o1">결제일시</span><span
			class="css-thgwm0">2023-03-20 16:31:24</span></li>
		</ul> -->


			<div class="css-1bsokvi">
				<h3 class="css-yi2ox5">배송정보</h3>
			</div>

			<ul class="css-hig5bx">
				<li class="css-8homh5"><span class="css-9i2eur">배송방법</span><span
					class="css-thgwm0">${purchaseDetail.productCategory ? "배송" : "픽업"}</span></li>

				<li class="css-hvdq8h e1ysbs753"
					style="visibility: hidden; padding-bottom: 20px;"><span
					class="css-11h8hn9 e1ysbs752"></span><span
					class="css-l5tyq9 e1ysbs751"></span></li>

				<li class="css-8homh5"><span class="css-9i2eur">받는분</span><span
					class="css-thgwm0">${purchaseDetail.purName}</span></li>

				<li class="css-hvdq8h e1ysbs753"
					style="visibility: hidden; padding-bottom: 20px;"><span
					class="css-11h8hn9 e1ysbs752"></span><span
					class="css-l5tyq9 e1ysbs751"></span></li>

				<li class="css-8homh5"><span class="css-9i2eur">핸드폰</span><span
					class="css-thgwm0">${purchaseDetail.purPhoneNumber}</span></li>

				<li class="css-hvdq8h e1ysbs753"
					style="visibility: hidden; padding-bottom: 20px;"><span
					class="css-11h8hn9 e1ysbs752"></span><span
					class="css-l5tyq9 e1ysbs751"></span></li>

				<li class="css-8homh5"><span class="css-9i2eur">주소</span><span
					class="css-thgwm0">${purchaseDetail.purAddress}</span></li>

				<li class="css-hvdq8h e1ysbs753"
					style="visibility: hidden; padding-bottom: 20px;"><span
					class="css-11h8hn9 e1ysbs752"></span><span
					class="css-l5tyq9 e1ysbs751"></span></li>

				<li class="css-8homh5"><span class="css-9i2eur">상세주소</span><span
					class="css-thgwm0">${purchaseDetail.purAddressDetail}</span></li>

				<li class="css-hvdq8h e1ysbs753"
					style="visibility: hidden; padding-bottom: 20px;"><span
					class="css-11h8hn9 e1ysbs752"></span><span
					class="css-l5tyq9 e1ysbs751"></span></li>

				<li class="css-8homh5"><span class="css-9i2eur">받으실 장소</span><span
					class="css-thgwm0">${purchaseDetail.purLocation}</span></li>

				<li class="css-hvdq8h e1ysbs753"
					style="visibility: hidden; padding-bottom: 20px;"><span
					class="css-11h8hn9 e1ysbs752"></span><span
					class="css-l5tyq9 e1ysbs751"></span></li>

				<li class="css-8homh5"><span class="css-9i2eur">공동현관
						비밀번호</span><span class="css-thgwm0">${purchaseDetail.purPw}</span></li>
			</ul>





		</div>
		<!-- css-171zbec eug5r8l0 -->



	</div>

	<jsp:include page="../footer.jsp" />


</body>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/buyinglistDetail.js"></script>
</html>