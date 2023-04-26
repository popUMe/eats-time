package com.eatsTime.purchase.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.member.dao.MemberDAO;
import com.eatsTime.member.domain.MemberVO;
import com.eatsTime.purchase.dao.PurchaseDAO;

public class PurchaseListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
//		MemberDAO memberDAO = new MemberDAO();
//		MemberVO memberVO = new MemberVO();
//		Result result = new Result();
//		
//		Long MemberId = Long.valueOf(req.getParameter("MemberId"));
//
//		req.setAttribute("purchaseList", PurchaseDAO.select("2L"));
//		
//		result.setPath(req.getContextPath() + "/index.member");
		return null;
	}

}
