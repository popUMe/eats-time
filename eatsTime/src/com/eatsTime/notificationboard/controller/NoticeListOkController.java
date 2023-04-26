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

public class NoticeListOkController implements Action {
		@Override
		public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
			System.out.println("NoticeListOk 컨트롤러 들어옴");
			NotificationBoardDAO notificationBoardDAO = new NotificationBoardDAO();
			Result result = new Result();
			JSONArray jsonArray = new JSONArray();
			String temp = req.getParameter("page");
			int page = temp == null ? 1 : Integer.parseInt(temp);
			Criteria criteria = new Criteria(page, notificationBoardDAO.getTotal());
			
			
			notificationBoardDAO.selectAllAdmin(criteria).stream().map(notificationboard -> new JSONObject(notificationboard)).forEach(jsonArray::put);			
			req.setAttribute("notificationboards", jsonArray.toString());
			req.setAttribute("total", notificationBoardDAO.getTotal());
			req.setAttribute("page", page);
			req.setAttribute("startPage", criteria.getStartPage());
			req.setAttribute("endPage", criteria.getEndPage());
			req.setAttribute("prev", criteria.isPrev());
			req.setAttribute("next", criteria.isNext());
			result.setPath("templates/board/noticeList.jsp");
			return result;
		}
	}

