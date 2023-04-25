package com.eatsTime.notificationboard.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.notificationboard.dao.NotificationBoardDAO;

public class ViewOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("viewOk 컨트롤러 들어옴");
		NotificationBoardDAO notificationBoardDAO = new NotificationBoardDAO();
		Long notbId = Long.valueOf(req.getParameter("notbId"));
		Result result = new Result();
		JSONObject notificationboard = new JSONObject(notificationBoardDAO.viewBoard(notbId));
		System.out.println(notificationboard);
		req.setAttribute("notificationboard", notificationboard);
		result.setPath(req.getContextPath() + "/templates/admin/adminNoticeView.jsp");
		
		return result;
	}

}
