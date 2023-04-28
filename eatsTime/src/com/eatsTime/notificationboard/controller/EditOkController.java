package com.eatsTime.notificationboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.notificationboard.dao.NotificationBoardDAO;
import com.eatsTime.notificationboard.domain.NotificationBoardVO;

public class EditOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("editOk 컨트롤러 들어옴");
		NotificationBoardDAO notificationBoardDAO = new NotificationBoardDAO();
		NotificationBoardVO notificationBoardVO = new NotificationBoardVO();
		Result result = new Result();
		Long notbId = Long.valueOf(req.getParameter("notbId"));
		notificationBoardVO.setNotbId(notbId);
		notificationBoardVO.setNotbTitle(req.getParameter("notbTitle"));
		notificationBoardVO.setNotbContent(req.getParameter("notbContent"));
		
		notificationBoardDAO.edit(notificationBoardVO);
		
		result.setPath(req.getContextPath() + "/viewOk.notificationboard?notbId=" + notbId);
		result.setRedirect(true);
		
		return result;
	}

}
