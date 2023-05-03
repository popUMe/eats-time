package com.eatsTime.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.answerboard.dao.AnswerBoardDAO;
import com.eatsTime.answerboard.domain.AnswerBoardDTO;
import com.eatsTime.answerboard.domain.AnswerBoardVO;
import com.eatsTime.inquiryboard.dao.InquiryBoardDAO;
import com.eatsTime.inquiryboard.domain.InquiryBoardVO;
import com.eatsTime.member.domain.MemberVO;

public class AnsUpdateOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		AnswerBoardDAO boardDAO=new AnswerBoardDAO();
		Result result=new Result();
		
		
		MemberVO memberVO = new MemberVO(); 

		HttpSession session = req.getSession();
		memberVO = (MemberVO) session.getAttribute("LOGIN_INFO");
		
		Long ansbId = Long.valueOf(req.getParameter("ansbId"));
		Long inqbId = Long.valueOf(req.getParameter("inqbId"));
		
		AnswerBoardDTO boardDTO=boardDAO.selectqs(ansbId);
		boardDTO.setAnsbTitle(req.getParameter("ansbTitle"));
		boardDTO.setAnsbContent(req.getParameter("ansbContent"));
		boardDTO.setAnsbDate(req.getParameter("ansbDate"));
		
		
		System.out.println(boardDTO);
		boardDAO.updateanswer(boardDTO);
		
		
		System.out.println("updateOk 컨트롤러 들어옴");
		
		
		result.setPath(req.getContextPath() + "/detailOk.answerBoard?inqbId=" + inqbId);
		
		result.setRedirect(true);
		return result;
	
	
	}
}
