package com.eatsTime.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.member.dao.MemberDAO;

public class CheckIdController implements Action{
@Override
public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	MemberDAO memberDAO = new MemberDAO();
	String memberIdentification = memberDAO.selectIdentification(req.getParameter("memberIdentification"));
	boolean check = memberIdentification == null;
	
	return null;
}
}
