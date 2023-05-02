package com.eatsTime.inquiryboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.inquiryboard.dao.InquiryBoardDAO;
import com.eatsTime.member.domain.MemberVO;

public class UpdateController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
			System.out.println("UpdateController 들어옴");

			InquiryBoardDAO boardDAO=new InquiryBoardDAO();
			MemberVO memberVO = new MemberVO(); 

			HttpSession session = req.getSession();
			memberVO = (MemberVO) session.getAttribute("LOGIN_INFO");
			
			Result result=new Result();

			Long inqbId=Long.valueOf(req.getParameter("inqbId"));
			
			req.setAttribute("boards", boardDAO.select(inqbId));
			
			result.setPath("templates/member/updateQuestion.jsp");


			return result;
	}
}
