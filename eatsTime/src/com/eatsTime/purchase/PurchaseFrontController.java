package com.eatsTime.purchase;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Result;
import com.eatsTime.purchase.controller.PurchaseOkController;
import com.eatsTime.purchase.controller.PurchasePayOkController;

public class PurchaseFrontController extends HttpServlet {
	
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      
      String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
      Result result = null;

//           if   else if      ôϱ         Ʈ   Ʈ ѷ       缭      ؼ   ۾ 
      if(target.equals("purchaseOk")) {
         System.out.println("프컨들어옴");
         result = new PurchaseOkController().execute(req, resp);
      } else if(target.equals("purchasePayOk")) {
         result = new PurchasePayOkController().execute(req, resp);
      }else if(target.equals("purchaseSuccess")) {
         result = new Result();
         result.setPath("templates/product/purchaseSuccess.jsp");
      } else if (target.equals("memberProduct")) {
			result = new Result();
			result.setPath("/templates/member/memberProduct.jsp");

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
