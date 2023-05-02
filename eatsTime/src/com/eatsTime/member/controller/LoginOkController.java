package com.eatsTime.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.member.dao.MemberDAO;
import com.eatsTime.member.domain.MemberVO;

public class LoginOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		MemberDAO memberDAO = new MemberDAO();
		String memberIdentification = req.getParameter("memberIdentification");
		String memberPw = req.getParameter("memberPw");
		HttpSession session = req.getSession();
		Result result = new Result();
		boolean autoLogin = Boolean.valueOf(req.getParameter("auto-login"));
		result.setRedirect(true);

		if(memberIdentification == null) {

			if(req.getHeader("Cookie") != null){
				Cookie[] cookies = req.getCookies();
				for(Cookie cookie: cookies){
					if(cookie.getName().equals("memberIdentification")) {
						memberIdentification = cookie.getValue();   
					}
					if(cookie.getName().equals("memberPw")) {
						memberPw = cookie.getValue();   
					}
					if(cookie.getName().equals("autoLogin")) {
						autoLogin = Boolean.valueOf(cookie.getValue());   
					}
				}
			}
		}
		MemberVO memberVO = new MemberVO();
		memberVO.setMemberIdentification(memberIdentification);
		memberVO.setMemberPw(memberPw);
		MemberVO loginVO = memberDAO.login(memberVO);
		

		if(loginVO == null) {
			//		로그인 실패
			result.setPath(req.getContextPath() + "/login.member?login=false");
			// 		탈퇴 계정 로그인
		} else if(loginVO.isMemberStatus() == false) {
			result.setPath(req.getContextPath() + "/login.member?status=false");
		}
		else {
			//		로그인 성공 purchaser seller admin
			session.setAttribute("LOGIN_INFO", loginVO);
			
			String memberGrade = loginVO.getMemberGrade();
			
			if("ADMIN".equals(memberGrade)) {
				result.setPath(req.getContextPath() + "/adminindex.notificationboard");
			} else {
				result.setPath(req.getContextPath() + "/listOk.main");
			}

			if(autoLogin) {

				Cookie memberIdentificationInCookie = new Cookie("memberIdentification", memberIdentification);
				Cookie memberPwInCookie = new Cookie("memberPw", memberPw);
				Cookie autoLoginInCookie = new Cookie("autoLogin", String.valueOf(autoLogin));
				resp.addCookie(memberIdentificationInCookie);
				resp.addCookie(memberPwInCookie);
				resp.addCookie(autoLoginInCookie);

			}else {
				if(req.getHeader("Cookie") != null){
					Cookie[] cookies = req.getCookies();
					for(Cookie cookie: cookies){
						if(cookie.getName().equals("autoLogin")) {
							cookie.setMaxAge(0); //초단위
							resp.addCookie(cookie);
						}

					}
				}	

			}

		}
		return result;
	}
}
