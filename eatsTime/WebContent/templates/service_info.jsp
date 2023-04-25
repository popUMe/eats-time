<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css">
<style>
	.image-wrap {
		margin-top: 50px;
		margin-bottom: 70px;
		width : 100%;
		height : 100%;
		text-align : center;
	}
	.image-wrap img {
		display : block;
		width : 1050px;
		height : 100%;
		margin : auto;
		image-rendering: -moz-crisp-edges; /* firefox */
		image-rendering: -o-crisp-edges; /* opera */
		image-rendering: -webkit-optimize-contrast; /* chrome(비표준) */
		image-rendering: crisp-edges;
		backface-visibility:hidden;
		image-rendering:-webkit-optimize-contrast;
  transform:translateZ(0);
  backface-visibility:hidden;
	}
</style>
<title>서비스 소개 - 이츠타임</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<!-- 가장 큰 메인 -->
	<div class="css-1yyw8xd e1ojcw7k1">
		<div class="image-wrap">
			<img src="${pageContext.request.contextPath}/static/image/service_info.jpg" alt="이츠타임 서비스 소개 이미지">
		</div>
	</div>

	<jsp:include page="footer.jsp" />

</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/index.js"></script>
<script src="${pageContext.request.contextPath}/static/js/product.js"></script>
</html>