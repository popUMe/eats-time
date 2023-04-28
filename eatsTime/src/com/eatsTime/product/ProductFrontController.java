package com.eatsTime.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Result;
import com.eatsTime.member.controller.JoinOkController;
import com.eatsTime.product.controller.ProductDetailOkController;
import com.eatsTime.product.controller.ProductListDeliveryOkController;
import com.eatsTime.product.controller.ProductListOkController;
import com.eatsTime.product.controller.ProductListPickUpOkController;

public class ProductFrontController extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      
      String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
      Result result = null;
      System.out.println(target);


      if(target.equals("productListOk")){
         result = new ProductListOkController().execute(req, resp);
      }else if(target.equals("productListDeliveryOk")) {
         result = new ProductListDeliveryOkController().execute(req, resp);
      }else if(target.equals("productListPickUpOk")) {
         result = new ProductListPickUpOkController().execute(req, resp);
      }else if(target.equals("productDetailOk")) {
          result = new ProductDetailOkController().execute(req, resp);        
      }
      
      if(result != null) {
         if(result.isRedirect()) {
            resp.sendRedirect(result.getPath());
         }else {
            req.getRequestDispatcher(result.getPath()).forward(req, resp);
         }
      }
   }
   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doGet(req, resp);
   }
}