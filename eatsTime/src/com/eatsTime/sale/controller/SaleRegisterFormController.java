package com.eatsTime.sale.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.product.domain.ProductVO;
import com.eatsTime.sale.dao.SaleDAO;

public class SaleRegisterFormController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {	
		Result result = new Result();
		SaleDAO dao = new SaleDAO();
		Long productId = Long.parseLong(Optional.ofNullable(req.getParameter("productId")).orElse("0"));
		ProductVO productVO = dao.selectProduct(productId);
		HttpSession session = req.getSession();
		
		session.setAttribute("productId", productId);
		
		req.setAttribute("productCategory", productVO.isProductCategory());
		req.setAttribute("productName", productVO.getProductName());
		req.setAttribute("productPrice", productVO.getProductPrice());
		req.setAttribute("productStock", productVO.getProductStock()); 
		req.setAttribute("productExpirationDate", productVO.getProductExpirationDate());
		req.setAttribute("productAddress", productVO.getProductAddress());
		req.setAttribute("productAddressDetail", productVO.getProductAddressDetail());
		
		req.setAttribute("productId", productVO.getProductId());
		
		result.setPath("/templates/member/sellingForm.jsp");
		
		return result;
	}

}
