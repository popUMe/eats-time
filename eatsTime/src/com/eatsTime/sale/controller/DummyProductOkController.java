package com.eatsTime.sale.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.product.domain.ProductVO;
import com.eatsTime.sale.dao.SaleDAO;

public class DummyProductOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {	
		Result result = new Result();
		SaleDAO dao = new SaleDAO();
		
		ProductVO productVO = dao.test();
		Date expDate = null;
		
		req.setAttribute("productName", productVO.getProductName());
		req.setAttribute("productPrice", productVO.getProductPrice());
		req.setAttribute("productStock", productVO.getProductStock()); 
		req.setAttribute("productExpirationDate", productVO.getProductExpirationDate());
		req.setAttribute("productAddress", productVO.getProductAddress());
		req.setAttribute("productAddressDetail", productVO.getProductAddressDetail());
		
		result.setPath("templates/member/sellingForm.jsp");
		
		return result;
	}

}
