/**
 * banner.html js
 */

const banner = document.querySelector('div.banner');
const image_divs = document.querySelectorAll('div.banner div.image');
const first_div = document.querySelector('#first-temp');
const last_div = document.querySelector('#last-temp');
const prev = document.querySelector('div.prev');
const next = document.querySelector('div.next');
const dots = document.querySelectorAll('div.dot');
let count = 1;
let check = true;
let clickCheck = false;
let temp;

image_divs.forEach((image_div, i) => (image_div.style.backgroundImage = `url(${contextPath}/static/image/00${i + 1}.png)`));
first_div.style.backgroundImage = `url(${contextPath}/static/image/006.png)`;
last_div.style.backgroundImage = `url(${contextPath}/static/image/001.png)`;

let slide = setInterval(() => autoSlide(), 2000);

changeButtonStyle();

function changeButtonStyle() {
   dots.forEach((dot) => (dot.style.background = 'none'));
   dots[count - 1].style.background = '#313131';
   clickCheck = true; //선택 버튼이 변경되는 순간 mouseout 이벤트 막기
}

dots.forEach((dot, i) => {
   dot.addEventListener('mouseover', () => {
      clickCheck = dot.style.background == 'rgb(49, 49, 49)';
      dot.style.background = '#313131';
   });
   dot.addEventListener('mouseout', () => {
      if (clickCheck) {
         return;
      }
      dot.style.background = 'none';
   });

   dot.addEventListener('click', () => {
      clickCheck = true;
      clearInterval(slide);
      count = dot.classList[1];
      banner.style.transform = `translate(${-1500 * count}px)`;
      banner.style.transition = 'transform 0.7s';
      changeButtonStyle();
      slide = setInterval(() => autoSlide(), 2000);
   });
});

prev.addEventListener('click', function() {
   if (!check) {
      return;
   }
   check = false;
   clearInterval(slide);
   banner.style.transform = `translate(${-1500 * --count}px)`;
   banner.style.transition = 'transform 0.7s';

   if (count == 0) {
      setTimeout(() => {
         banner.style.transition = 'transform 0s';
         banner.style.transform = `translate(-9000px)`;
      }, 700);
      count = 6;
   }
   changeButtonStyle();
   slide = setInterval(() => autoSlide(), 2000);
   setTimeout(() => {
      check = true;
   }, 700);
});

next.addEventListener('click', function() {
   if (!check) {
      return;
   }
   check = false;
   clearInterval(slide);
   banner.style.transform = `translate(${-1500 * ++count}px)`;
   banner.style.transition = 'transform 0.7s';

   if (count == 7) {
      setTimeout(() => {
         banner.style.transition = 'transform 0s';
         banner.style.transform = `translate(-1500px)`;
      }, 700);
      count = 1;
   }
   changeButtonStyle();
   slide = setInterval(() => autoSlide(), 2000);
   setTimeout(() => {
      check = true;
   }, 700);
});

function autoSlide() {
   check = false;
   banner.style.transform = `translate(${-1500 * ++count}px)`;
   banner.style.transition = 'transform 0.7s';

   if (count == 7) {
      setTimeout(() => {
         banner.style.transition = 'transform 0s';
         banner.style.transform = `translate(-1500px)`;
      }, 700);
      count = 1;
   }
   changeButtonStyle();
   setTimeout(() => {
      check = true;
   }, 700);
}


showList()


function showList() {
   const $div = $(".css-11kh0cw");
   const $secondDiv = $(".css-11kh0cw2");
   const $notDiv = $(".notFind");
   const $banner = $(".center-banner")
   let text = "";
   let secondText = "";
   let notFindText = "";
   let banner = "";

   products.forEach(function(product, index) {
      if(index <= 7) {
      text += `
            <a href="${contextPath}/productDetailOk.product?productId=${product.productId}" class="css-1xyd46f e1c07x4814"> <!-- image -->
                        <div class="css-0 e1c07x4812">
                           <div class="e1c07x4813 css-1kth2sq e3um3060">
                              <span
                                 style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">

                                 <img alt="상품 이미지" src="${contextPath}/upload/${product.fileName}" decoding="async" data-nimg="fill"


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
                     </a>
`            }

   if (index == 7) {
         banner += `    <div class="" style="padding-bottom: 150px;">
                           <div class="">
                              <a
                                 href="${contextPath}/serviceInfo.main"
                                 class=""><span
                                 style=""><img
                                    alt="eatsTime 소개" sizes="100vw"
                                    src= "${contextPath}/static/image/main_banner_min01.jpg"
                                    decoding="async" data-nimg="fill" class="css-0"
                                    style=""></span></a>
                           </div>
                        </div>`

      }
      
      if(index >= 8){
         secondText += `
            <a href="${contextPath}/productDetailOk.product?productId=${product.productId}" class="css-1xyd46f e1c07x4814"> <!-- image -->
                        <div class="css-0 e1c07x4812">
                           <div class="e1c07x4813 css-1kth2sq e3um3060">
                              <span
                                 style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">

                                 <img alt="상품 이미지" src="${contextPath}/upload/${product.fileName}" decoding="async" data-nimg="fill"


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
         
      }



      if (products.length == 0) {
         notFindText = `
      <div class="css-1lo9184 ezccri60">검색된 상품이 없습니다.</div>
      `
         $notDiv.append(notFindText);
         return;
      }

   
   });
   
   
   $div.append(text);
   $banner.append(banner);
   $secondDiv.append(secondText);

}


