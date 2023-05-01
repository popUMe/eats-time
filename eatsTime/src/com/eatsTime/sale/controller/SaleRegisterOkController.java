package com.eatsTime.sale.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.member.domain.MemberVO;
import com.eatsTime.sale.dao.SaleDAO;
import com.eatsTime.sale.domain.SaleVO;

public class SaleRegisterOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		Result result = new Result();
		MemberVO memberVO = new MemberVO();
		
		HttpSession session = req.getSession();
        memberVO = (MemberVO) session.getAttribute("LOGIN_INFO");
        
        Long memberId = memberVO.getMemberId();
		
		SaleDAO dao = new SaleDAO();
		SaleVO saleVO = new SaleVO();
		
		Long productId = Long.parseLong("3" /*req.getParameter("productId")*/);
		String saleTitle = req.getParameter("saleTitle");
		String saleContent = req.getParameter("saleContent");
		
		saleVO.setMemberId(memberId); 
		saleVO.setProductId(productId); 
		saleVO.setSaleTitle(saleTitle);
		saleVO.setSaleContent(saleContent); 
		
		dao.insert(saleVO);
		
		result.setPath("/saleListOk.sale");
		result.setRedirect(true);
		
		return result;
	}

}
