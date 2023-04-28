package com.eatsTime.inquiryboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.inquiryboard.dao.InquiryBoardDAO;
import com.eatsTime.inquiryboard.domain.InquiryBoardVO;


public class WriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

	System.out.println("writeOk 컨트롤러 들어옴");

	InquiryBoardVO boardVO = new InquiryBoardVO();
	InquiryBoardDAO boardDAO = new InquiryBoardDAO();
	
	Result result=new Result();
	
	
	System.out.println(req.getParameter("inqbTitle"));
	System.out.println(req.getParameter("inqbContent"));
	
	boardVO.setMemberId(1L);
	boardVO.setInqbTitle(req.getParameter("inqbTitle"));
	boardVO.setInqbContent(req.getParameter("inqbContent"));
	
	boardDAO.insert(boardVO);
	
//	System.out.println(boardVO);
	
	result.setPath(req.getContextPath() + "/templates/member/qnaList.jsp");
	result.setRedirect(true);
	
	return result;

	}
}
