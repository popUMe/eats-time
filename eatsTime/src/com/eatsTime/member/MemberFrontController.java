package com.eatsTime.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Result;
import com.eatsTime.member.controller.DeleteOkController;
import com.eatsTime.member.controller.JoinOkController;
import com.eatsTime.member.controller.LoginOkController;
import com.eatsTime.member.controller.ModifyController;
import com.eatsTime.member.controller.ModifyOkController;
import com.eatsTime.member.controller.UpdateStatusOkController;
import com.eatsTime.notificationboard.controller.ListOkController;

public class MemberFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("join")) {
			result = new Result();
			result.setPath("templates/member/signup.jsp");
			
		} else if(target.equals("joinOk")) {
			result = new JoinOkController().execute(req, resp);
			
		} else if(target.equals("login")) {
			result = new Result();
			result.setPath("templates/member/login.jsp");
					
		} else if(target.equals("loginOk")) {
			result = new LoginOkController().execute(req,resp);
			
		} else if(target.equals("logout")) {
			req.getSession().invalidate();
			result = new Result();
			result.setPath("templates/member/login.jsp");
			
		}
		
		
		if (target.equals("index")) {
			result = new Result();
			result.setPath("/templates/index.jsp");

		} else if (target.equals("modify")) {
			result = new ModifyController().execute(req, resp);
			
		} else if (target.equals("delete")) {
			result = new Result();
			result.setPath("/templates/member/lastPageWithdraw.jsp");

		} else if (target.equals("deleteOk")) {
			result = new Result();
			result = new DeleteOkController().execute(req, resp);

		} else if (target.equals("modifyOk")) {
			result = new ModifyOkController().execute(req, resp);
		
		} 
		
//		관리자페이지 - 회원 전체조회
		else if (target.equals("listOk")) {
			result = new ListOkController().execute(req, resp);
		}
		
//		관리자페이지 - 회원 상태변경
		else if(target.equals("updateStatusOk")) {
			result = new UpdateStatusOkController().execute(req, resp);
		}
		
		
		if (result != null) {
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}