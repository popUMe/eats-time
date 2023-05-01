package com.eatsTime.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.answerboard.dao.AnswerBoardDAO;
import com.eatsTime.answerboard.domain.AnswerBoardDTO;
import com.eatsTime.answerboard.domain.AnswerBoardVO;
//import com.eatsTime.inquiryboard.domain.InquiryBoardVO;
import com.eatsTime.notificationboard.domain.NotificationBoardDTO;

public class DetailOkController implements Action{
@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	
	AnswerBoardDAO boardDAO = new AnswerBoardDAO();
	Result result = new Result();
	
	System.out.println("detailOk 들어옴");
	
	System.out.println(Long.valueOf(req.getParameter("inqbId")));
	Long inqbId = Long.valueOf(req.getParameter("inqbId"));

	
	
	AnswerBoardDTO boardDTO = boardDAO.select(inqbId);
	System.out.println(boardDTO);
	req.setAttribute("boards",boardDTO);
	req.setAttribute("inqbId", boardDTO.getInqbId());
	req.setAttribute("inqbTitle", boardDTO.getInqbTitle());
	req.setAttribute("inqbContent", boardDTO.getInqbContent());
	req.setAttribute("memberIdentification", boardDTO.getMemberIdentification());
	req.setAttribute("inqbDate", boardDTO.getInqbDate());
	
	AnswerBoardDTO answerDTO=boardDAO.selectAnswer(inqbId);
	req.setAttribute("answers", answerDTO);
	
	
	
	
	
	
	
	
	result.setPath("templates/admin/adminQnaView.jsp");
	
	return result;
	
}
}
