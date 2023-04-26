package com.eatsTime.notificationboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.notificationboard.dao.NotificationBoardDAO;
import com.eatsTime.notificationboard.domain.NotificationBoardDTO;
import com.eatsTime.notificationboard.domain.NotificationBoardVO;

public class NoticeViewOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("NoticeViewOk 컨트롤러 들어옴");
		NotificationBoardDAO notificationBoardDAO = new NotificationBoardDAO();
		Long notbId = Long.valueOf(req.getParameter("notbId"));
		Result result = new Result();
		NotificationBoardDTO notificationboard = notificationBoardDAO.viewBoard(notbId);
		req.setAttribute("notbTitle", notificationboard.getNotbTitle());
		req.setAttribute("notbId", notificationboard.getNotbId());
		req.setAttribute("notbHit", notificationboard.getNotbHit());
		req.setAttribute("notbDate", notificationboard.getNotbDate());
		req.setAttribute("notbContent", notificationboard.getNotbContent());
		req.setAttribute("memberName", notificationboard.getMemberName());
		result.setPath("/templates/board/notice.jsp");
		
		return result;
	}

}
