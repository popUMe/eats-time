package com.eatsTime.inquiryboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.inquiryboard.dao.InquiryBoardDAO;

public class DeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		System.out.println("deleteOk 컨트롤러 들어옴");
		InquiryBoardDAO boardDAO = new InquiryBoardDAO();
		Result result = new Result();
		
		boardDAO.delete(Long.valueOf(req.getParameter("inqbId")));
		
		System.out.println("삭제완료");
		result.setPath(req.getContextPath() + "/listOk.inquiryboard");
		result.setRedirect(true);
		
		return result;
	}

}
