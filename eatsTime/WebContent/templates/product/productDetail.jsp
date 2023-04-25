<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--새로운 태그 fn List를 받을때 List에 length를 받을때 사용된다. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon"
	href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/product/productDetail.css">
<title>이츠타임 - 제품 상세</title>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="css-16c0d8l e1brqtzw0">
		<main id="product-atf" class="css-1eoy87d e17iylht4">

			<!-- 이미지 섹션 : background로 image 구현 -->
			<div class="css-fyfynr e17iylht3"
				style="background-image:url('${contextPath}/upload/${productId.fileName}');background-size:cover;"></div>

			<!-- 텍스트 섹션 -->
			<section class="css-1ua1wyk e17iylht2">
				<div class="css-12lw2qc ezpe9l14"><c:out value="${productId.productCategory ? '배송' : '픽업'}"/></div>
				<div class="css-1fttcpj ezpe9l13">
					<div class="css-1bhm8h2 ezpe9l12">
						<h1 class="css-1f2zq3n ezpe9l11"><c:out value="${productId.productName}"/></h1>
					</div>
					<h2 class="css-47pv1l ezpe9l10">${productId.saleContent}</h2>
				</div>

				<h2 class="css-liviaq e1q8tigr5">
					<span class="css-9pf1ze e1q8tigr3"><c:out value="${productId.productPrice}"/></span>
					<span class="css-1x9cx9j e1q8tigr2">원</span>
				</h2>


				<div class="css-iqoq9n e6qx2kx2">

					<!-- 판매유형 -->
					<dl class="css-e6zlnr epzddad2">
						<dt class="css-lytdfk epzddad1"><c:out value="${productId.productCategory ? '배송' : '픽업'}"/></dt>
						<dd class="css-1k8t52o epzddad0">
							<p class="css-c02hqi e6qx2kx1"><c:out value="${productId.productCategory ? '배송' : '픽업'}"/></p>
							<p class="css-uy94b2 e6qx2kx0">업체 별도 배송 (픽업제품의 경우 운영시간 별도 확인
								요망)</p>
						</dd>
					</dl>

					<!-- 판매자 -->
					<dl class="css-e6zlnr epzddad2">
						<dt class="css-lytdfk epzddad1"><c:out value="${productId.memberIdentification}"/></dt>
						<dd class="css-1k8t52o epzddad0">
							<p class="css-c02hqi e6qx2kx1"><c:out value="${productId.memberName}"/></p>
						</dd>
					</dl>
					<!-- 유통기한 -->
					<dl class="css-e6zlnr epzddad2">
						<dt class="css-lytdfk epzddad1">유통기한</dt>
						<dd class="css-1k8t52o epzddad0">
							<p class="css-c02hqi e6qx2kx1"><c:out value="${fn:split(productId.productExpirationDate, ' ')[0]}"/></p>
						</dd>
					</dl>

					<!-- 판매 수량(재고) -->
					<dl class="css-e6zlnr epzddad2">
						<dt class="css-lytdfk epzddad1">판매 수량</dt>
						<dd class="css-1k8t52o epzddad0">
							<p class="css-c02hqi e6qx2kx1"><c:out value="${productId.productStock}"/></p>
						</dd>
					</dl>

					<!-- 판매지 -->
					<dl class="css-e6zlnr epzddad2">
						<dt class="css-lytdfk epzddad1">배송/픽업 주소</dt>
						<dd class="css-1k8t52o epzddad0">
							<p class="css-c02hqi e6qx2kx1"><c:out value="${productId.productAddress}
								${productId.productAddressDetail}"/></p>
						</dd>
					</dl>
				</div>

				<div class="css-1bp09d0 e17iylht1">
					<div class="css-2lvxh7 e1qy0s5w0">
						<dl class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">상품선택</dt>
							<dd class="css-1k8t52o epzddad0">
								<div class="cart-option-item css-1cb5lnc e1bjklo17">
									<div class="css-1qdyvok e1bjklo15">
										<span class="css-100vshh e1bjklo13"><c:out value="${productId.productName}"/></span>
									</div>


									<!-- 제품 수량 선택 섹션 -->
									<div class="css-1liqj4s e1bjklo14">
										<div class="css-16dy8wz e1cqr3m40">
											<button id="decreaseQuantity" type="button"
												aria-label="수량내리기" disabled="" class="css-1e90glc e1hx75jb0"></button>
											<div id="numberUpDown" class="count css-6m57y0 e1cqr3m41">1</div>
											<button id="increaseQuantity" type="button"
												aria-label="수량올리기" class="css-18y6jr4 e1hx75jb0"></button>
										</div>
										<div>
											<span class="css-1foiu5e e1bjklo10"><c:out value="${productId.productPrice}"/>원</span>
										</div>
									</div>
								</div>
							</dd>
						</dl>
					</div>
					<div class="css-9y0nwt e17iylht0">
						<div class="css-ixlb9s eebc7rx8">
							<div class="css-yhijln eebc7rx7">
								<span class="css-w1is7v eebc7rx6">총 상품금액 :</span> <span
									class="css-x4cdgl eebc7rx5"><c:out value="${productId.productPrice}"/></span> <span
									class="css-1jb8hmu eebc7rx4">원</span>
							</div>
						</div>
					</div>

					<!-- 하단 장바구니 및 구매하기 버튼 -->
					<div class="css-gnxbjx e10vtr1i2">
						<div class="css-14jnwd7 e10vtr1i0">
							<button class="cart-button css-1qirdbn e4nu7ef3" type="button"
								radius="3">
								<span class="css-ymwvow e4nu7ef1">구매하기</span>
							</button>
						</div>
					</div>
				</div>



			</section>
		</main>



	</div>

	<jsp:include page="../footer.jsp" />

</body>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	let contextPath = "${pageContext.request.contextPath}"
	let product = JSON.parse(`${product}`);
	console.log(product);
</script>
<script
	src="${pageContext.request.contextPath}/static/js/productDetail.js"></script>

</html>