<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/static/css/main.css" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/static/css/index.css" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/static/css/product/productListAll.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/static/css/product/productList.css">
<title>이츠타임 - 메인</title>
</head>
<body>
   <jsp:include page="header.jsp" />
   <!-- 가장 큰 메인 -->
   <div class="css-1yyw8xd e1ojcw7k1">
      <!-- 2번째 큰 메인 -->
      <div class="css-bjn8wh e1ojcw7k0">
         <!-- 왜 있는지 모르는 메인 -->
         <div class="css-16hymll e1sktvih0"></div>
         <!-- 진짜 메인 -->
         <div class="css-1b87835 e1seig3y0">
            <!-- 슬라이드 배너 전체 -->
            <div class="css-127g5zj e17fdfn91">
               <!-- 슬라이드 배너 시작 -->
               <div class="css-lj9hak e1dkubq62">
                  <!-- 슬라이드 배너 -->
                  <div
                     class="swiper swiper-initialized swiper-horizontal swiper-pointer-events">
                     <section class="container">
                        <!-- 메인 베너 -->
                        <div class="banner">
                           <div id="first-temp"></div>
                           <div class="image"></div>
                           <div class="image"></div>
                           <div class="image"></div>
                           <div class="image"></div>
                           <div class="image"></div>
                           <div class="image"></div>
                           <div id="last-temp"></div>
                        </div>
                        <div class="arrow prev">
                           <img src="${pageContext.request.contextPath}/static/image/arrow.png">
                        </div>
                        <div class="arrow next">
                           <img src="${pageContext.request.contextPath}/static/image/arrow.png">
                        </div>

                        <div class="dots" style="display: none">
                           <div class="dot 1"></div>
                           <div class="dot 2"></div>
                           <div class="dot 3"></div>
                           <div class="dot 4"></div>
                           <div class="dot 5"></div>
                           <div class="dot 6"></div>
                        </div>
                     </section>
                     <!--                      슬라이드 배너 wrapper
                     <div class="swiper-wrapper banner"
                        style="transform: translate3d(-6792px, 0px, 0px); transition-duration: 0ms;">
                        슬라이드 배너 6번
                        <div class="swiper-slide image" id="first-temp" data-swiper-slide-index="5"
                           style="cursor: pointer; width: 1698px;">
                           <a href="https://www.kurly.com/categories/262"><div
                                 class="css-sf7gh e1kc2glk0">
                                 <span
                                    style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
                                    alt="메인배너"
                                    src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg"
                                    decoding="async" data-nimg="fill" class="css-0"
                                    style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"
                                    sizes="100vw"
                                    srcset="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 3840w"></span>
                              </div></a>
                        </div>
                        슬라이드 배너 1번
                        <div class="swiper-slide image" data-swiper-slide-index="0"
                           style="cursor: pointer; width: 1698px;">
                           <a href="https://www.kurly.com/main/beauty"><div
                                 class="css-sf7gh e1kc2glk0">
                                 <span
                                    style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
                                    alt="메인배너"
                                    src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png"
                                    decoding="async" data-nimg="fill" class="css-0"
                                    style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"
                                    sizes="100vw"
                                    srcset="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 640w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 750w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 828w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 1080w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 1200w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 1920w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 2048w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 3840w"></span>
                              </div></a>
                        </div>
                        슬라이드 배너 2번
                        <div class="swiper-slide image" data-swiper-slide-index="1"
                           style="cursor: pointer; width: 1698px;">
                           <a href="https://www.kurly.com/categories/541"><div
                                 class="css-sf7gh e1kc2glk0">
                                 <span
                                    style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
                                    alt="메인배너"
                                    src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/b02b95ef-c984-493d-946f-3ccfdf182094.jpg"
                                    decoding="async" data-nimg="fill" class="css-0"
                                    style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"
                                    sizes="100vw"
                                    srcset="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/b02b95ef-c984-493d-946f-3ccfdf182094.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/b02b95ef-c984-493d-946f-3ccfdf182094.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/b02b95ef-c984-493d-946f-3ccfdf182094.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/b02b95ef-c984-493d-946f-3ccfdf182094.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/b02b95ef-c984-493d-946f-3ccfdf182094.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/b02b95ef-c984-493d-946f-3ccfdf182094.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/b02b95ef-c984-493d-946f-3ccfdf182094.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/b02b95ef-c984-493d-946f-3ccfdf182094.jpg 3840w"></span>
                              </div></a>
                        </div>
                        슬라이드 배너 3번
                        <div class="swiper-slide swiper-slide-prev image"
                           data-swiper-slide-index="2"
                           style="cursor: pointer; width: 1698px;">
                           <a href="https://www.kurly.com/categories/861"><div
                                 class="css-sf7gh e1kc2glk0">
                                 <span
                                    style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
                                    alt="메인배너"
                                    src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/ac052ca9-825d-41f5-8909-d10a8befcc09.jpg"
                                    decoding="async" data-nimg="fill" class="css-0"
                                    style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"
                                    sizes="100vw"
                                    srcset="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/ac052ca9-825d-41f5-8909-d10a8befcc09.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/ac052ca9-825d-41f5-8909-d10a8befcc09.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/ac052ca9-825d-41f5-8909-d10a8befcc09.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/ac052ca9-825d-41f5-8909-d10a8befcc09.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/ac052ca9-825d-41f5-8909-d10a8befcc09.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/ac052ca9-825d-41f5-8909-d10a8befcc09.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/ac052ca9-825d-41f5-8909-d10a8befcc09.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/ac052ca9-825d-41f5-8909-d10a8befcc09.jpg 3840w"></span>
                              </div></a>
                        </div>
                        슬라이드 배너 4번
                        <div class="swiper-slide swiper-slide-active image"
                           data-swiper-slide-index="3"
                           style="cursor: pointer; width: 1698px;">
                           <a href="https://www.kurly.com/categories/194"><div
                                 class="css-sf7gh e1kc2glk0">
                                 <span
                                    style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
                                    alt="메인배너"
                                    src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/26982c88-8f42-4702-997a-24f489f8bf38.jpg"
                                    decoding="async" data-nimg="fill" class="css-0"
                                    style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"
                                    sizes="100vw"
                                    srcset="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/26982c88-8f42-4702-997a-24f489f8bf38.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/26982c88-8f42-4702-997a-24f489f8bf38.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/26982c88-8f42-4702-997a-24f489f8bf38.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/26982c88-8f42-4702-997a-24f489f8bf38.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/26982c88-8f42-4702-997a-24f489f8bf38.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/26982c88-8f42-4702-997a-24f489f8bf38.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/26982c88-8f42-4702-997a-24f489f8bf38.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/26982c88-8f42-4702-997a-24f489f8bf38.jpg 3840w"></span>
                              </div></a>
                        </div>
                        슬라이드 배너 5번
                        <div class="swiper-slide swiper-slide-next image"
                           data-swiper-slide-index="4"
                           style="cursor: pointer; width: 1698px;">
                           <a href="https://www.kurly.com/categories/137"><div
                                 class="css-sf7gh e1kc2glk0">
                                 <span
                                    style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
                                    alt="메인배너"
                                    src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/f840985d-ed5b-4641-9ff3-c093dd168643.jpg"
                                    decoding="async" data-nimg="fill" class="css-0"
                                    style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"
                                    sizes="100vw"
                                    srcset="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/f840985d-ed5b-4641-9ff3-c093dd168643.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/f840985d-ed5b-4641-9ff3-c093dd168643.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/f840985d-ed5b-4641-9ff3-c093dd168643.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/f840985d-ed5b-4641-9ff3-c093dd168643.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/f840985d-ed5b-4641-9ff3-c093dd168643.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/f840985d-ed5b-4641-9ff3-c093dd168643.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/f840985d-ed5b-4641-9ff3-c093dd168643.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/f840985d-ed5b-4641-9ff3-c093dd168643.jpg 3840w"></span>
                              </div></a>
                        </div>
                        슬라이드 배너 6번
                        <div class="swiper-slide image" data-swiper-slide-index="5"
                           style="cursor: pointer; width: 1698px;">
                           <a href="https://www.kurly.com/categories/262"><div
                                 class="css-sf7gh e1kc2glk0">
                                 <span
                                    style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
                                    alt="메인배너"
                                    src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg"
                                    decoding="async" data-nimg="fill" class="css-0"
                                    style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"
                                    sizes="100vw"
                                    srcset="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/fc55e737-253b-407c-a7a4-e1d038a72e16.jpg 3840w"></span>
                              </div></a>
                        </div>
                        슬라이드 배너 1번
                        <div class="swiper-slide" id="last-temp" data-swiper-slide-index="0"
                           style="cursor: pointer; width: 1698px;">
                           <a href="https://www.kurly.com/main/beauty"><div
                                 class="css-sf7gh e1kc2glk0">
                                 <span
                                    style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
                                    alt="메인배너"
                                    src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png"
                                    decoding="async" data-nimg="fill" class="css-0"
                                    style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"
                                    sizes="100vw"
                                    srcset="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 640w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 750w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 828w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 1080w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 1200w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 1920w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 2048w, https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/27d8d626-7cec-4c35-ac4f-7e0743e2d0e3.png 3840w"></span>
                              </div></a>
                        </div>
                     </div> -->
                  </div>
               </div>
            </div>
            
            <!-- 이상품어때요? -->
            <div class="css-emt8cc e12kjs5e0">
               <div id="container" class="css-1i60c0e e13nsthd2">
               

                  <!-- [S] title -->
                  <h3 class="css-i804ml eaf14xt0">이 상품 어때요?</h3>
                  <!-- [E] title -->

                  <!-- [S] contents -->
                  <div class="css-pzlq5x e13nsthd1">

                     <!-- [S] 제품리스트 wrap -->
                     <div class="css-1d3w5wq ef36txc6">

                        <!-- [S] 제품 리스트 -->
                        <div class="css-11kh0cw ef36txc5">
                           
                        </div>
                        <div class="center-banner"></div>
                        <div class="css-11kh0cw2">
                           
                        </div>
                        <!-- [E] 제품 리스트 -->


                     </div>
                     <div class="notFind"></div>
                     <!-- [E] 제품리스트 -->
                  </div>
                  <!-- [E] contents -->
               </div>

            </div>

         </div>
      </div>
   </div>
   
   <jsp:include page="footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}"
      let products = JSON.parse(`${product}`);
      
</script>
<script src="${pageContext.request.contextPath}/static/js/index.js"></script>
</html>