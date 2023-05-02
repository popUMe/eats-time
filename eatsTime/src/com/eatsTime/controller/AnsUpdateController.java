package com.eatsTime.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.answerboard.dao.AnswerBoardDAO;
import com.eatsTime.inquiryboard.dao.InquiryBoardDAO;
import com.eatsTime.member.domain.MemberVO;

public class AnsUpdateController implements Action{
@Override
public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

	System.out.println("AnsUpdateController 들어옴");

	AnswerBoardDAO boardDAO=new AnswerBoardDAO();
	MemberVO memberVO = new MemberVO(); 

//	HttpSession session = req.getSession();
//	memberVO = (MemberVO) session.getAttribute("LOGIN_INFO");
	
	Result result=new Result();

	Long ansbId=Long.valueOf(req.getParameter("ansbId"));
	
	req.setAttribute("boards", boardDAO.selectqs(ansbId));
	
	result.setPath("templates/admin/adminQnaEdit.jsp");

	return result;
	
	
}
}
