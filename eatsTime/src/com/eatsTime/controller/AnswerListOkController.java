package com.eatsTime.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.answerboard.dao.AnswerBoardDAO;
import com.eatsTime.answerboard.domain.AnswerBoardDTO;
import com.eatsTime.answerboard.domain.Criteria;

public class AnswerListOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		resp.setContentType("text/html;charset=utf-8");

		System.out.println("AnswerListOkController 들어옴");

		AnswerBoardDAO boardDAO=new AnswerBoardDAO();
//		AnswerBoardDTO boardDTO=new AnswerBoardDTO();
		
		Result result=new Result();
		
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		
		HashMap<String, Object> pagable = new HashMap<String, Object>();
		Criteria criteria = new Criteria(page, boardDAO.getTotal());
		
		System.out.println(criteria);
		
		pagable.put("offset", criteria.getOffset());
		pagable.put("rowCount", criteria.getRowCount());

		
		req.setAttribute("boards", boardDAO.selectAll(pagable));
		req.setAttribute("realEndPage", criteria.getRealEndPage());
		req.setAttribute("total", boardDAO.getTotal());
		req.setAttribute("page", page);
		req.setAttribute("startPage", criteria.getStartPage());
		req.setAttribute("endPage", criteria.getEndPage());
		req.setAttribute("prev", criteria.isPrev());
		req.setAttribute("next", criteria.isNext());

		System.out.println("여기까지 오나");	
		System.out.println(boardDAO.selectAll(pagable));
		
		result.setPath("templates/admin/adminQna.jsp");
		
		return result;

	}
}
