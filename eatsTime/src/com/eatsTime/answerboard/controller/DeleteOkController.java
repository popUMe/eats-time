package com.eatsTime.answerboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.answerboard.dao.AnswerBoardDAO;

public class DeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("deleteOk 컨트롤러 들어옴");
		AnswerBoardDAO boardDAO = new AnswerBoardDAO();
		Result result = new Result();
		
		Long boardId = Long.valueOf(req.getParameter("InqbId"));
		boardDAO.delete(boardId);

		System.out.println("삭제완료");
		result.setPath(req.getContextPath() + "/listOk.answerBoard");
		result.setRedirect(true);

		return result;
	}

}
