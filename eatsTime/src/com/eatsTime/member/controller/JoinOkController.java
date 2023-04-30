package com.eatsTime.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.member.dao.MemberDAO;
import com.eatsTime.member.domain.MemberVO;

public class JoinOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		Result result = new Result();
		
		memberVO.setMemberIdentification(req.getParameter("memberIdentification"));
		memberVO.setMemberPw(req.getParameter("memberPw"));
		memberVO.setMemberName(req.getParameter("memberName"));
		memberVO.setMemberEmail(req.getParameter("memberEmail"));
		memberVO.setMemberPhoneNumber(req.getParameter("memberPhoneNumber"));
		memberVO.setMemberAddress(req.getParameter("memberAddress"));
		memberVO.setMemberAddressDetail(req.getParameter("memberAddressDetail"));
		memberVO.setMemberGender(req.getParameter("memberGender"));
		memberVO.setMemberGrade(req.getParameter("memberGrade"));
		memberVO.setMemberBirthday(req.getParameter("memberBirthday"));
		
		
		memberDAO.insert(memberVO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/login.member");
		
		
		return result;
	}

}
