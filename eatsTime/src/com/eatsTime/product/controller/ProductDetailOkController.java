package com.eatsTime.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.product.dao.ProductDAO;

public class ProductDetailOkController implements Action {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
      resp.setContentType("text/html;charset=utf-8");
      req.setCharacterEncoding("UTF-8");
      resp.setCharacterEncoding("UTF-8");
      
      ProductDAO productDAO = new ProductDAO();
      Result result = new Result();
      
      String productId = req.getParameter("productId");
      
      JSONObject json = new JSONObject(productDAO.selectProductDetail(productId));
      
      req.setAttribute("productId", json.toString());
      
      result.setPath("/templates/product/productDetail.jsp");
      
      return result;
      
   }

}