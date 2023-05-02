package com.eatsTime.answerboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.answerboard.dao.AnswerBoardDAO;
import com.eatsTime.inquiryboard.domain.InquiryBoardVO;

public class DeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("deleteOk 컨트롤러 들어옴");
		AnswerBoardDAO boardDAO = new AnswerBoardDAO();
		InquiryBoardVO boardVO= new InquiryBoardVO();
		
		Result result = new Result();
		
		
		Long ansbId = Long.valueOf(req.getParameter("ansbId"));
		boardDAO.delete(ansbId);
	
		System.out.println("삭제완료");
		
		Long inqbId = Long.valueOf(req.getParameter("inqbId"));
		System.out.println(inqbId);
		boardDAO.deleteanswer(inqbId);

		result.setPath(req.getContextPath() + "/listOk.answerBoard");
		result.setRedirect(true);

		return result;
	}

}
