package com.eatsTime.inquiryboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.inquiryboard.dao.InquiryBoardDAO;
import com.eatsTime.inquiryboard.domain.InquiryBoardVO;
import com.eatsTime.member.domain.MemberVO;

public class UpdateOkController implements Action{

@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	
	InquiryBoardDAO boardDAO=new InquiryBoardDAO();
	Result result=new Result();
	MemberVO memberVO = new MemberVO(); 

	HttpSession session = req.getSession();
	memberVO = (MemberVO) session.getAttribute("LOGIN_INFO");
	
	Long inqbId = Long.valueOf(req.getParameter("inqbId"));
	
	InquiryBoardVO boardVO=boardDAO.select(inqbId);
	
	boardVO.setMemberId(memberVO.getMemberId());
	boardVO.setInqbTitle(req.getParameter("inqbTitle"));
	boardVO.setInqbContent(req.getParameter("inqbContent"));
	
	boardDAO.update(boardVO);
	
	System.out.println("updateOk 컨트롤러 들어옴");
	
	
	result.setPath(req.getContextPath() + "/listOk.inquiryboard");
	
	
//	result.setPath(req.getContextPath() + "/updateOk.inquiryboard?inqbId=" + inqbId);
	result.setRedirect(true);
	return result;
}	
	
	
	
}
