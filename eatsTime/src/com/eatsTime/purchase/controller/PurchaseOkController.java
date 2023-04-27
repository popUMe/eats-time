package com.eatsTime.purchase.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.member.dao.MemberDAO;
import com.eatsTime.product.dao.ProductDAO;
import com.eatsTime.purchase.dao.PurchaseDAO;

public class PurchaseOkController implements Action {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
         resp.setContentType("text/html;charset=utf-8");
         req.setCharacterEncoding("UTF-8");
         resp.setCharacterEncoding("UTF-8");
         Result result = new Result();
         PurchaseDAO purchaseDAO = new PurchaseDAO();
         ProductDAO productDAO = new ProductDAO();
         MemberDAO memberDAO = new MemberDAO();
         String productId = req.getParameter("productId");
         Long memberId = Long.valueOf(req.getParameter("memberId"));
         String count = req.getParameter("count");
         
         System.out.println(memberId);
         System.out.println(memberDAO.selectMember(memberId));
         
         JSONObject jsonProduct = new JSONObject(productDAO.selectPurchase(productId));
         JSONObject jsonMember = new JSONObject(productDAO.selectPurchase(productId));

         
        req.setAttribute("productId", jsonProduct.toString());
        req.setAttribute("memberId", jsonMember.toString());
        req.setAttribute("count", count);
        req.setAttribute("product", productDAO.selectPurchase(productId));
        req.setAttribute("member", memberDAO.selectMember(memberId));
        
         
         result.setPath("/templates/product/purchase.jsp");
         
         return result;
      
   }

}