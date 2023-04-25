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
   href="${pageContext.request.contextPath}/static/css/product/productListAll.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/static/css/product/productList.css">
<title>이츠타임 - 배송 제품목록</title>
</head>
<body>
   <jsp:include page="../header.jsp" />

   <div class="css-emt8cc e12kjs5e0">
      <div id="container" class="css-1i60c0e e13nsthd2">

         <!-- [S] title -->
         <h3 class="css-i804ml eaf14xt0">배송 제품보기</h3>
         <!-- [E] title -->

         <!-- [S] contents -->
         <div class="css-pzlq5x e13nsthd1">





            <!-- [S] 제품리스트 -->
            <div class="css-1d3w5wq ef36txc6">

               <!-- 
               [S] 필터
               <div class="css-1jgnig9 ev2ab494">
                  <div class="css-11y1fso ev2ab493">
                     <span class="css-wy76no ev2ab492">배송유형</span>
                     
                        
                        [S] 변경될 필터
                        <ul>
                           <li class="css-x67gaa e1isxf3i1">
                              <a href="#" class="css-s5xdrg e1isxf3i0">
                                 <button class="css-17kh8wb ee933650">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                       <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd" fill="none"></path>
                                       <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                    </svg>
                                 </button>
                                 <span class="css-1buhy1h ee933652">배송</span>
                                 <span class="css-ryw54y ee933651">1</span>
                              </a>
                           </li>
                           <li class="css-x67gaa e1isxf3i1">
                              <a href="#" class="css-s5xdrg e1isxf3i0">
                                 <button class="css-17kh8wb ee933650">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                       <path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd" fill="none"></path>
                                       <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                    </svg>
                                 </button>
                                 <span class="css-1buhy1h ee933652">픽업</span>
                                 <span class="css-ryw54y ee933651">1</span>
                              </a>
                           </li>
                        </ul>
                        [E] 변경될 필터
                        
                        
                     초기화 버튼
                     
                     <button class="css-7pv5zq ev2ab491">
                     <svg width="12" height="12" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M13.78 3.96303C12.504 2.16973 10.4086 1 8.04 1C4.15192 1 1 4.15192 1 8.04C1 11.9281 4.15192 15.08 8.04 15.08C11.9281 15.08 15.08 11.9281 15.08 8.04" stroke="#ddd" stroke-width="1.6" stroke-linecap="square" stroke-linejoin="round"></path>
                        <path d="M14.4933 1L14.4933 4.52H10.9733" stroke="#ddd" stroke-width="1.6" stroke-linecap="square" stroke-linejoin="round"></path>
                     </svg>
                     <span class="css-w7g3fo ev2ab490">초기화</span>
                     </button>
                     
                     
                  </div>
               </div>
               [E] 필터
                -->



               <!-- [S] 제품 개수/필터 선택 -->
               <div class="wrap-filter">
                  <div class="css-1stur9s eudxpx34">
                     <div class="css-crqql1 eudxpx33">총 ${total}건</div>
                     <ul class="css-1vmfy7j eudxpx32">

                        <!-- 최신순 -->
                        <li class="css-5uzvtq eudxpx31 firstLi sendOrder"><a
                           class="${sort == null or sort == 'recent' ? 'css-126imjl' : ''} css-19ce13b eudxpx30">최신순</a>
                        </li>

                        <!-- 낮은 가격순 -->
                        <li class="css-5uzvtq eudxpx31 sendOrder"><a
                           class="${sort == 'lowPrice' ? 'css-126imjl' : ''} css-19ce13b eudxpx30">낮은
                              가격순</a></li>

                        <!-- 높은 가격순 -->
                        <li class="css-5uzvtq eudxpx31 sendOrder"><a
                           class="${sort == 'highPrice' ? 'css-126imjl' : ''} css-19ce13b eudxpx30">높은
                              가격순</a></li>
                     </ul>
                  </div>
               </div>
               <!-- [E] 제품 개수/필터 선택 -->


               <!-- [S] 제품 리스트 -->
               <div class="css-11kh0cw ef36txc5"></div>


               <!-- [S] 페이지 컨트롤러 -->
               <div class="css-rdz8z7 e82lnfz1">

                  <!-- 처음 페이지로 이동하기 -->
                  <a class="css-1d20dg7 e82lnfz0"
                     href="${pageContext.request.contextPath}/productListDeliveryOk.product?page=1&sort=${sort}">
                     <img
                     src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAHUlEQVR42mNgAIPi/8X/kWkwA8SE0UQIMJAsCKMBBzk27fqtkcYAAAAASUVORK5CYII="
                     alt="처음 페이지로 이동하기 아이콘">
                  </a>

                  <!-- 이전 페이지로 이동하기 -->
                  <c:if test="${prev}">
                     <a class="css-1d20dg7 e82lnfz0"
                        href="${pageContext.request.contextPath}/productListDeliveryOk.product?page=${startPage - 1}&sort=${sort}">
                        <img
                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGElEQVR42mNgAIPi/8X/4QwwE5PBQJADAAKSG3cyVhtXAAAAAElFTkSuQmCC"
                        alt="이전 페이지로 이동하기 아이콘">
                     </a>
                  </c:if>
                  <c:forEach var="i" begin="${startPage}" end="${endPage}">
                     <c:choose>
                        <c:when test="${i eq page}">
                           <a class="css-19yo1fh css-1d20dg7 e82lnfz0 page-list"><c:out
                                 value="${i}" /></a>
                        </c:when>
                        <c:otherwise>
                           <a
                              href="${pageContext.request.contextPath}/productListDeliveryOk.product?page=${i}&sort=${sort}"
                              class="css-1d20dg7 e82lnfz0 page-list"><c:out value="${i}" /></a>
                        </c:otherwise>
                     </c:choose>
                  </c:forEach>

                  <!-- 다음 페이지로 이동하기 -->
                  <c:if test="${next}">
                     <a class="css-1d20dg7 e82lnfz0"
                        href="${pageContext.request.contextPath}/productListDeliveryOk.product?page=${endPage + 1}&sort=${sort}">
                        <img
                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGUlEQVR42mMo/l/8nwECQEwCHEwGhAlRBgA2mht3SwgzrwAAAABJRU5ErkJggg=="
                        alt="다음 페이지로 이동하기 아이콘">
                     </a>
                  </c:if>

                  <!-- 마지막 페이지로 이동하기 -->
                  <a class="css-1d20dg7 e82lnfz0"
                     href="${pageContext.request.contextPath}/productListDeliveryOk.product?page=${realEndPage}&sort=${sort}">
                     <img
                     src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAIElEQVR42mMo/l/8n4GBgQFGQ5kgDowmQZCwAMImhDkAb0k27Zcisn8AAAAASUVORK5CYII="
                     alt="마지막 페이지로 이동하기 아이콘">
                  </a>
               </div>
               <!-- [E] 페이지 컨트롤러 -->




            </div>
            <!-- [E] 제품리스트 -->
         </div>
         <!-- [E] contents -->
      </div>

   </div>



   <jsp:include page="../footer.jsp" />

</body>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
   let contextPath = "${pageContext.request.contextPath}"
   let products = JSON.parse(`${product}`);
   let category = `${category}`;
   let sort = `${sort}`;
</script>
<script src="${pageContext.request.contextPath}/static/js/product.js"></script>
</html>