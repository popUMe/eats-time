package com.eatsTime.notificationboard.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.notificationboard.dao.NotificationBoardDAO;

public class DeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("DeleteOk Controller 들어옴");
		Result result = new Result();
		NotificationBoardDAO notificationBoardDAO = new NotificationBoardDAO();
		
		String[] array = req.getParameterValues("chk");
		System.out.println(array[0]);
		for(int i = 0; i < array.length; i++) {
			notificationBoardDAO.delete(Long.valueOf(array[i]));
		}		
						
		result.setPath(req.getContextPath() + "/listOk.notificationboard");
		result.setRedirect(true);
		
		return result;
	}

}
