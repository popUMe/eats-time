package com.eatsTime.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.product.dao.ProductDAO;
import com.eatsTime.product.domain.ProductVO;

public class ProductController implements Action{
	private String memberId;

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		
		
		ProductDAO productDAO = new ProductDAO();
		ProductVO  productVO = new ProductVO();
		
		
		productVO.setMemberId(req.getParameter("memberId"));
		productVO.setProductCategory(req.getParameter("productCategory"));
		productVO.setProductName(req.getParameter("productName"));
		productVO.setProductPrice(req.getParameter("productPrice"));
		productVO.setProductDate(req.getParameter("productDate"));
		productVO.setProductExpirationDate(req.getParameter("productExpirationDate"));
		productVO.setProductStock(req.getParameter("productStock"));
		productVO.setProductAddress(req.getParameter("productAddress"));
		productVO.setProductAddresDetail(req.getParameter("productAddresDetail"));
		
		productDAO.insert(productVO);
		
		return null;
	}
}
