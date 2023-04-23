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

public class ListOkController implements Action {
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		NotificationBoardDAO notificationBoardDAO = new NotificationBoardDAO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		notificationBoardDAO.selectAllAdmin().stream().map(notificationboard -> new JSONObject(notificationboard)).forEach(jsonArray::put);
		req.setAttribute("notificationboards", jsonArray.toString());
		result.setPath("templates/admin/adminIndex.jsp");
		return result;
	}
}
