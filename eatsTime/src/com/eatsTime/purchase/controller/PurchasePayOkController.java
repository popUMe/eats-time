package com.eatsTime.purchase.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.purchase.dao.PurchaseDAO;
import com.eatsTime.purchase.domain.PurchaseVO;

public class PurchasePayOkController implements Action {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

         resp.setContentType("text/html;charset=utf-8");
         req.setCharacterEncoding("UTF-8");
         resp.setCharacterEncoding("UTF-8");
         Result result = new Result();
         
         PurchaseVO purchaseVO = new PurchaseVO();
         PurchaseDAO purchaseDAO = new PurchaseDAO();
         
         System.out.println(req.getParameter("purTotalPrice"));
         
         int purTotalPrice = Integer.parseInt(req.getParameter("purTotalPrice"));
         
         purchaseVO.setMemberId(Long.valueOf(req.getParameter("memberId")));
         purchaseVO.setProductId(Long.valueOf(req.getParameter("productId")));
         purchaseVO.setPurAddress(req.getParameter("purAddress"));
         purchaseVO.setPurAddressDetail(req.getParameter("purAddressDetail"));
         purchaseVO.setPurLocation(req.getParameter("purLocation"));
         purchaseVO.setPurName(req.getParameter("purName"));
         purchaseVO.setPurPhoneNumber(req.getParameter("purPhoneNumber"));
         purchaseVO.setPurPw(req.getParameter("purPw"));
         purchaseVO.setPurTotalPrice(purTotalPrice);
         
         
         System.out.println("여기서부터");
         
         System.out.println(purchaseVO);

         purchaseDAO.insertPurchase(purchaseVO);
         
         
         
         
         result.setRedirect(true);
         result.setPath(req.getContextPath() + "/purchaseSuccess.purchase?purTotalPrice=" + purTotalPrice);
         
      
         return result;
   
   }

}