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
import com.eatsTime.notificationboard.domain.NotificationBoardDTO;

public class AnswerViewController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

	
		AnswerBoardDAO boardDAO = new AnswerBoardDAO();
		Result result = new Result();
		AnswerBoardVO boardVO = new AnswerBoardVO();
		AnswerBoardDTO boardDTO = new AnswerBoardDTO();

		Long inqdId = Long.valueOf(req.getParameter("inqdId"));

		
//		AnswerBoardDTO boardDTO = boardDAO.selectAnswer(inqdId);
		System.out.println("detailOk 들어옴");
		
		
//		Long ansqId = Long.valueOf(req.getParameter("ansqId"));

//		Long ansqId=Long.valueOf(boardVO.getAnsbId());
		
		
		
//		req.setAttribute("boards", boardDAO.select(inqdId));
		req.setAttribute("inqbId", boardDTO.getInqbId());
		req.setAttribute("inqbTitle", boardDTO.getInqbTitle());
		req.setAttribute("inqbContent", boardDTO.getInqbContent());
		req.setAttribute("memberIdentification", boardDTO.getMemberIdentification());
		req.setAttribute("inqbDate", boardDTO.getInqbDate());
		
		

		AnswerBoardDTO boardDTO2 = boardDAO.selectAnswer(inqdId);

		
		req.setAttribute("inqbTitle", boardDTO2.getInqbTitle());
		req.setAttribute("inqbContent", boardDTO2.getInqbContent());
		req.setAttribute("memberIdentification", boardDTO2.getMemberIdentification());
		req.setAttribute("inqbDate", boardDTO2.getInqbDate());
		
		req.setAttribute("ansbTitle", boardDTO2.getAnsbTitle());
		req.setAttribute("ansbContent", boardDTO2.getAnsbContent());
		req.setAttribute("ansbDate", boardDTO2.getAnsbDate());
		
		
		result.setPath("templates/admin/adminQnaView.jsp");
		
		return result;
		
	
	}
}
