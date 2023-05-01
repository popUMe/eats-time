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
import com.eatsTime.inquiryboard.domain.InquiryBoardVO;


public class AnswerWriteOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		System.out.println("writeOk 컨트롤러 들어옴");

		AnswerBoardVO boardVO = new AnswerBoardVO();
		AnswerBoardDAO boardDAO = new AnswerBoardDAO();
		AnswerBoardDTO boardDTO=new AnswerBoardDTO();
		InquiryBoardVO invo = new InquiryBoardVO();
		Result result=new Result();
		
		System.out.println(Long.valueOf(req.getParameter("inqbId")));
		
		Long inqbId = Long.valueOf(req.getParameter("inqbId"));
		
		
		
//		여기에 계속 갖고옴 InqbId 값을 넣어주고 싶음 
		boardVO.setInqbId(inqbId);
		boardVO.setAnsbTitle(req.getParameter("ansbTitle"));
		boardVO.setAnsbContent(req.getParameter("ansbContent"));
		
		System.out.println(req.getParameter("ansbTitle"));
		System.out.println(req.getParameter("ansbContent"));
	
		boardDAO.insert(boardVO);

		System.out.println("dao 에 insert함");
		
		
//		boardDAO.yesno(inqbId);
//		Long ansbId = Long.valueOf(req.getParameter("ansbId"));

		
//		boardDTO = boardDAO.select(ansbId);

		
		
		//		boardDTO = boardDAO.select(ansbId);
//		req.setAttribute("reply", boardDAO.select(ansbId));
//		req.setAttribute("inqbId", boardDTO.getInqbId());
//		req.setAttribute("inqbTitle", boardDTO.getInqbTitle());
//		req.setAttribute("inqbContent", boardDTO.getInqbContent());
//		req.setAttribute("memberIdentification", boardDTO.getMemberIdentification());
//		req.setAttribute("inqbDate", boardDTO.getInqbDate());
		
		
//		req.setAttribute("ansbTitle", boardDTO.getAnsbTitle());
//		req.setAttribute("ansbContent", boardDTO.getAnsbContent());
//		req.setAttribute("ansbDate", boardDTO.getAnsbDate());
		
		
		
//		System.out.println(boardVO);
		
		result.setPath(req.getContextPath() + "/detailOk.answerBoard?inqbId=" + inqbId);
		result.setRedirect(true);
		
		return result;
	}
}
