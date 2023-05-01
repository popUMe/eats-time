<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon"
	href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/member/sellingList.css">
<title>이츠타임 - 판매목록</title>
</head>
<body>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="css-luwwab">
		<div class="css-833hqy">
			<div class="css-1v4whg">마이타임</div>
			<!--css-1v4whg ecbxmj2  -->
			<ul class="css-1x9bshx">
				<li><a class="css-g4g0eu" id="li-1">상품 목록 <svg
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
							<use class="point1" stroke="#999" stroke-linecap="round"
								stroke-width="1.8" stroke-linejoin="round"
								transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg></a></li>

				<li><a class="active css-g4g0eu" id="li-2">판매 목록 <svg
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
							<use class="point2" stroke="#ff4f32" stroke-linecap="round"
								stroke-width="1.8" stroke-linejoin="round"
								transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg></a></li>


				<li><a class="css-g4g0eu" id="li-3">개인 정보 수정 <svg
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

		<div class="css-171zbec">
			<div class="css-j0lifa">
				<div class="css-fhxb3m">
					<h2 class="css-1268zpe">판매 상품</h2>
					
				</div>

			</div>

			<div class="css-1dmsa3j"></div>
			<div class="css-1c8nox">
				<!-- append here -->
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />

</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/sellingList.js"></script>
<script type="text/javascript">
	let sales = `${sales}`;
</script>
<script src="${pageContext.request.contextPath}/static/js/sellingListAppend.js"></script>
</html>