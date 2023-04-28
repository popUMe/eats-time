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
	
	boardVO.setInqbId(Long.valueOf(req.getParameter("inqbId")));
	boardVO.setInqbTitle(req.getParameter("inqbTitle"));
	boardVO.setInqbContent(req.getParameter("inqbContent"));
	
	

	return result;
}	
	
	
	
}
