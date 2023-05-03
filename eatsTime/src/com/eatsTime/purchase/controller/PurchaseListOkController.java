package com.eatsTime.purchase.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.member.domain.MemberVO;
import com.eatsTime.purchase.dao.PurchaseDAO;
import com.eatsTime.purchase.domain.PurchaseListDTO;

public class PurchaseListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        
        PurchaseDAO purchaseDAO = new PurchaseDAO();
        MemberVO memberVO = new MemberVO();
        PurchaseListDTO purchaseListDTO = new PurchaseListDTO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		
		HttpSession session = req.getSession();
		memberVO = (MemberVO) session.getAttribute("LOGIN_INFO");
		Long memberId = memberVO.getMemberId();
		
		
		purchaseDAO.selectAll(memberId).stream().map(purchase -> new JSONObject(purchase)).forEach(jsonArray::put);
		
		
		req.setAttribute("purchaseList", jsonArray.toString());
		result.setPath("templates/member/memberProduct.jsp");
		return result;
	}

}
