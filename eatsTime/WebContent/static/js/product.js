/**
 * 
 */

$(document).ready(function() {

   // 상품 리스트 페이지 : svg 변경
   $('.e1isxf3i0').click(function() {
      $(this).children('.css-17kh8wb').toggleClass('filter-on');
      $(this).parent(".css-x67gaa").siblings().find('.css-17kh8wb').removeClass('filter-on');
   });



   // 상품 리스트 페이지 : 페이지 컨트롤러
   $('.page-list').click(function() {
      $(this).addClass('css-19yo1fh');
      $(this).siblings().removeClass('css-19yo1fh');
   });

   /*   // 상품 리스트 페이지 : 최신순/낮은 가격순/높은 가격순 필터
      $('.eudxpx30').click(function() {
         $(this).addClass('css-126imjl');
         $(this).parent().siblings().children().removeClass('css-126imjl');
      });*/




   /*정렬 이벤트 및 스타일 변경*/
   /*전체*/
   const $orders = $(".css-5uzvtq a");
   $orders.on("click", function() {
      let i = $orders.index(this);
      let sort;
      if (i == 0) {
         sort = 'recent';
      } else if (i == 1) {
         sort = 'lowPrice';
      } else {
         sort = 'highPrice'
      }
      location.href = `${contextPath}/productListOk.product?sort=${sort}&category=${category}`;
   });

   /* 배송 */
   const $sendOrders = $(".sendOrder a");
   $sendOrders.on("click", function() {
      let i = $sendOrders.index(this);
      let sort;
      if (i == 0) {
         sort = 'recent';
      } else if (i == 1) {
         sort = 'lowPrice';
      } else {
         sort = 'highPrice'
      }
      location.href = `${contextPath}/productListDeliveryOk.product?sort=${sort}`;
   });

   /* 픽업 */
   const $pickUpOrder = $(".pickUpOrder a");
   $pickUpOrder.on("click", function() {
      let i = $pickUpOrder.index(this);
      let sort;
      if (i == 0) {
         sort = 'recent';
      } else if (i == 1) {
         sort = 'lowPrice';
      } else {
         sort = 'highPrice'
      }
      location.href = `${contextPath}/productListPickUpOk.product?sort=${sort}`;
   });



   const $category = $(".category");
   $category.on("click", function() {

      let i = $category.index(this);
      let category;
      if (i == 0) {
         category = 'send';
      } else if (i == 1) {
         category = 'pickUp';
      }
      location.href = `${contextPath}/productListOk.product?sort=${sort}&category=${category}`;

   });



   /*게시글 목록*/

   
      showList()





   function showList() {
      const $div = $(".css-11kh0cw");
      let text = "";

      products.forEach(product => {

         text += `
            <a href="${contextPath}/productDetailOk.product?productId=${product.productId}" class="css-1xyd46f e1c07x4814"> <!-- image -->
                        <div class="css-0 e1c07x4812">
                           <div class="e1c07x4813 css-1kth2sq e3um3060">
                              <span
                                 style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">

                                 <img alt="상품 이미지" src="${contextPath}/upload/${product.fileName}" decoding="async" data-nimg="fill"
                                 class="css-0" sizes="100vw">

                              </span>
                              <div>
                              </div>
                           </div>
                        </div> <!-- text -->
                        <div class="css-c1cgl e1c07x489">
                           <span class="css-1qd61ut e1ms5t9c1"> <span
                              class="css-1vdqr5b e1ms5t9c0">${product.productCategory ? "배송" : "픽업"}</span>
                           </span> <span class="css-1dry2r1 e1c07x488">[${product.memberIdentification}] ${product.productName}</span>
                           <p class="css-1wejlc3 e1c07x486">${product.saleContent}</p>
                           <div class="e1c07x487 css-1t4zbyd ei5rudb2">
                              <div>
                                 <!-- 가격 -->
                                 <span class="sales-price css-18tpqqq ei5rudb1"> ${product.productPrice}<span
                                    class="won">원</span>
                                 </span>
                              </div>
                           </div>
                        </div>
                     </a>`
      });

      if (products.length == 0) {
         text += `
         <li>
              <div>
               현재 상품이 없습니다.
            </div>
         </li>
      `
      }

      $div.append(text);
   }



});