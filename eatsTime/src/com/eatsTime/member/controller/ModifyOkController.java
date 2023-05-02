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

public class ModifyOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		Result result = new Result();
		
		HttpSession session = req.getSession();
		memberVO = (MemberVO) session.getAttribute("LOGIN_INFO");
		Long memberId = memberVO.getMemberId();

		memberVO.setMemberId(memberId);
		
		memberVO.setMemberIdentification(req.getParameter("memberIdentification"));
		memberVO.setMemberPw(req.getParameter("memberPw"));
		memberVO.setMemberName(req.getParameter("memberName"));
		memberVO.setMemberEmail(req.getParameter("memberEmail"));
		memberVO.setMemberPhoneNumber(req.getParameter("memberPhoneNumber"));
		memberVO.setMemberGender(req.getParameter("memberGender"));
		memberVO.setMemberBirthday(req.getParameter("memberBirthday"));
		
		memberDAO.update(memberVO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/index.member?memberIdentification=&memberPw");
		return result;
	}
}

