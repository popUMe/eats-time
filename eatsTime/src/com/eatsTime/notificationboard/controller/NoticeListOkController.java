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
import com.eatsTime.notificationboard.domain.Criteria2;

public class NoticeListOkController implements Action {
		@Override
		public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
			System.out.println("NoticeListOk 컨트롤러 들어옴");
			NotificationBoardDAO notificationBoardDAO = new NotificationBoardDAO();
			Result result = new Result();
			String temp = req.getParameter("page");
			int page = temp == null ? 1 : Integer.parseInt(temp);
			Criteria2 criteria2 = new Criteria2(page, notificationBoardDAO.getTotal());
			
			
			req.setAttribute("notificationboards", notificationBoardDAO.selectAll(criteria2));
			req.setAttribute("total", notificationBoardDAO.getTotal());
			req.setAttribute("page", page);
			req.setAttribute("startPage", criteria2.getStartPage());
			req.setAttribute("endPage", criteria2.getEndPage());
			req.setAttribute("prev", criteria2.isPrev());
			req.setAttribute("next", criteria2.isNext());
			result.setPath("templates/board/noticeList.jsp");
			return result;
		}
	}

