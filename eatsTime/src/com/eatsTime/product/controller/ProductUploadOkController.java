package com.eatsTime.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.product.dao.ProductDAO;
import com.eatsTime.product.domain.ProductVO;

public class ProductUploadOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		ProductDAO productDAO = new ProductDAO(); 
		ProductVO productVO = new ProductVO(); 
		Result result = new Result();
		
		
		Long memberId = Long.valueOf(req.getParameter("memberId"));
		boolean productCategory =Boolean.parseBoolean(req.getParameter("productCategory"));
		String productName = req.getParameter("productName");
		int productPrice =  Integer.parseInt(req.getParameter("productPrice"));
		String productExpirationDate = req.getParameter("productExpirationDate");
		int productStock = Integer.parseInt(req.getParameter("productStock"));
		String productAddress = req.getParameter("productAddress");
		String productAddressDetail = req.getParameter("productAddressDetail");
		
		
		
		productVO.setMemberId(memberId);
		productVO.setProductCategory(productCategory);
		productVO.setProductName(productName);
		productVO.setProductPrice(productPrice);
		productVO.setProductExpirationDate(productExpirationDate);
		productVO.setProductStock(productStock);
		productVO.setProductAddress(productAddress);
		productVO.setProductAddressDetail(productAddressDetail);
		
		productDAO.insert(productVO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/index.member");

		return null;
	}

}
