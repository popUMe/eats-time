package com.eatsTime.inquiryboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.inquiryboard.dao.InquiryBoardDAO;

public class UpdateController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
			System.out.println("UpdateController 들어옴");

			InquiryBoardDAO boardDAO=new InquiryBoardDAO();

			Result result=new Result();

			Long inqbId=Long.valueOf(req.getParameter("inqbId"));
			
			req.setAttribute("board", boardDAO.select(inqbId));
			
			result.setPath("templates/member/updateQuetion.jsp");

			result.setPath(null);

			return result;
	}
}
