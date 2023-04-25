package com.eatsTime.notificationboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.notificationboard.dao.NotificationBoardDAO;

public class EditController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		NotificationBoardDAO notificationBoardDAO = new NotificationBoardDAO();
		Result result = new Result();
		Long notbId = Long.valueOf(req.getParameter("notbId"));
		
		return null;
	}

}
