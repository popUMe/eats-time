package com.eatsTime.inquiryboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.inquiryboard.dao.InquiryBoardDAO;
import com.eatsTime.inquiryboard.domain.InquiryBoardVO;

public class UpdateOkController implements Action{

@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	
	InquiryBoardDAO boardDAO=new InquiryBoardDAO();
	Result result=new Result();
	InquiryBoardVO boardVO=new InquiryBoardVO();
	Long inqbId = Long.valueOf(req.getParameter("inqbId"));

	boardVO.setInqbId(inqbId);
	boardVO.setInqbTitle(req.getParameter("inqbTitle"));
	boardVO.setInqbContent(req.getParameter("inqbContent"));
	
	boardDAO.update(boardVO);
	result.setPath(req.getContextPath() + "/listOk.inquiryboard");
	
	
//	result.setPath(req.getContextPath() + "/updateOk.inquiryboard?inqbId=" + inqbId);
	result.setRedirect(true);
	return result;
}	
	
	
	
}
