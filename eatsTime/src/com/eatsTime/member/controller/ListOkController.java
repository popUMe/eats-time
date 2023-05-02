package com.eatsTime.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.member.dao.MemberDAO;
import com.eatsTime.member.domain.Criteria;
import com.eatsTime.member.domain.MemberVO;

public class ListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		Criteria criteria = new Criteria(page, memberDAO.getTotal());
		
		HttpSession session = req.getSession();
		memberVO = (MemberVO) session.getAttribute("LOGIN_INFO");
				
		memberDAO.selectAllMember(new Criteria(page, memberDAO.getTotal())).stream().map(member -> new JSONObject(member)).forEach(jsonArray::put);
		req.setAttribute("members", jsonArray.toString());
		req.setAttribute("total", memberDAO.getTotal());
		req.setAttribute("page", page);
		req.setAttribute("startPage", criteria.getStartPage());
		req.setAttribute("endPage", criteria.getEndPage());
		req.setAttribute("prev", criteria.isPrev());
		req.setAttribute("next", criteria.isNext());
		
		result.setPath("templates/admin/adminMember.jsp");
		
		return result;
	}

}
