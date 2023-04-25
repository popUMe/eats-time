/**
 * 
 */

/*상세*/



      //상품 상세 페이지 : 수량 감소 btn
   $('#decreaseQuantity').click(function() {
         
      var stat = $('#numberUpDown').text();
      var num = parseInt(stat, 10);
      num--;

      if (num <= 1) {
         $('#decreaseQuantity').attr('disabled', true);
         $('#decreaseQuantity').removeClass('css-8azp8');
         num = 1;
      }

      if (num >= 1) {
         $('#increaseQuantity').attr('disabled', false);
         $('#increaseQuantity').removeClass('plus-on');
      }

      $('#numberUpDown').text(num);
   });
   //상품 상세 페이지 : 수량 증가 btn
   $('#increaseQuantity').click(function() {
      var stat = $('#numberUpDown').text();
      var num = parseInt(stat, 10);
      num++;

      if (num >= 2) {
         $('#decreaseQuantity').attr('disabled', false);
         $('#decreaseQuantity').addClass('css-8azp8');
      }

      if (num >= product.productStock) {
         $('#increaseQuantity').attr('disabled', true);
         $('#increaseQuantity').addClass('plus-on');
         num = product.productStock;
      }

      $('#numberUpDown').text(num);
   });