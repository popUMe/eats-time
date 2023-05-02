package com.eatsTime.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.member.dao.MemberDAO;
import com.eatsTime.member.domain.MemberVO;

public class UpdateStatusOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		Result result = new Result();
		
		HttpSession session = req.getSession();
		memberVO = (MemberVO) session.getAttribute("LOGIN_INFO");
		
		int page = Integer.parseInt(req.getParameter("page"));
		String[] array = req.getParameterValues("chk");
		boolean status = Boolean.valueOf(req.getParameter("status"));
		for(int i = 0; i < array.length; i++) {
			memberDAO.updateStatus(Long.valueOf(array[i]), status);
		} 
   	  
	    result.setPath(req.getContextPath() + "/listOk.member?page=" + page);
	    result.setRedirect(true);
	      
	    return result;

	}

}
