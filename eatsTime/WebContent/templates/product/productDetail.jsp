<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/product/productDetail.css">
<title>이츠타임 - 제품 상세</title>
</head>
<body>
   <jsp:include page="../header.jsp" />

   <div class="css-16c0d8l e1brqtzw0">
      
         

      
   </div>
   
   <jsp:include page="../footer.jsp" />

</body>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
   let contextPath = "${pageContext.request.contextPath}"
   let productId = JSON.parse(`${productId}`);
</script>
<script src="${pageContext.request.contextPath}/static/js/productDetail.js"></script>

</html>