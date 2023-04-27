package com.eatsTime.notificationboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.notificationboard.dao.NotificationBoardDAO;
import com.eatsTime.notificationboard.domain.Criteria;

public class ListOkController implements Action {
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("ListOk 컨트롤러 들어옴");
		NotificationBoardDAO notificationBoardDAO = new NotificationBoardDAO();
		Result result = new Result();
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		Criteria criteria = new Criteria(page, notificationBoardDAO.getTotal());
			
		req.setAttribute("notificationboards", notificationBoardDAO.selectAllAdmin(criteria));
		req.setAttribute("total", notificationBoardDAO.getTotal());
		req.setAttribute("page", page);
		req.setAttribute("startPage", criteria.getStartPage());
		req.setAttribute("endPage", criteria.getEndPage());
		req.setAttribute("prev", criteria.isPrev());
		req.setAttribute("next", criteria.isNext());
		result.setPath("templates/admin/adminIndex.jsp");
		return result;
	}
}
