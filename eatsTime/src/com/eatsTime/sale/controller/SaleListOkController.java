package com.eatsTime.sale.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.member.domain.MemberVO;
import com.eatsTime.sale.dao.SaleDAO;
import com.eatsTime.sale.domain.SaleDTO;

public class SaleListOkController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		SaleDAO dao = new SaleDAO();
		MemberVO memberVO = new MemberVO();

		HttpSession session = req.getSession();
		memberVO = (MemberVO) session.getAttribute("LOGIN_INFO");

		Long memberId = memberVO.getMemberId();
		List<SaleDTO> sales = dao.selectList(memberId);
		JSONArray salesJSONArray = new JSONArray();

		sales.stream().map(sale -> new JSONObject(sale)).forEach(salesJSONArray::put);
		req.setAttribute("sales", salesJSONArray.toString());
		result.setPath("/templates/member/sellingList.jsp");

		return result;
	}
}
