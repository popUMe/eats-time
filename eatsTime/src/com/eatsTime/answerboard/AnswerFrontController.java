package com.eatsTime.answerboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Result;
import com.eatsTime.controller.AnswerListOkController;
import com.eatsTime.controller.AnswerViewController;
import com.eatsTime.controller.AnswerWriteOkController;
import com.eatsTime.controller.DetailOkController;
import com.eatsTime.inquiryboard.controller.DeleteOkController;
import com.eatsTime.member.controller.JoinOkController;

public class AnswerFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		System.out.println(target);
		Result result = null;

		if(target.equals("answerList")) {
			System.out.println("AnswerList fk 들어옴");
			result = new AnswerListOkController().execute(req, resp);
		} else if(target.equals("detailOk")) {
			System.out.println("detailOk 로 보낼 fk 들어옴");
			result = new DetailOkController().execute(req, resp);
		} else if(target.equals("writeAnswer")) {
			System.out.println("writeAnswer 프컨 들어옴");
			result=new Result();
			result.setPath("templates/admin/adminQnaWrite.jsp");
		
		} else if(target.equals("writeOk")) {
			System.out.println("writeOk 프컨 들어옴");
			result = new AnswerWriteOkController().execute(req, resp);
			
		}
		else if(target.equals("deleteOk")) {
			System.out.println("deleteOk 들어옴");
			result = new DeleteOkController().execute(req, resp);
		} else if(target.equals("answerView")) {
			System.out.println("answerView 들어옴");
			result = new AnswerViewController().execute(req, resp);
		}
//		} else if(target.equals("answerWrite"))
//			System.out.println("answerWrite 프컨 들어옴");
//			result=new AnswerWriteOkController().execute(req,resp);
//		} 
// 		
	
	if(result != null) {
		if(result.isRedirect()) {
			resp.sendRedirect(result.getPath());
		}else {
			req.getRequestDispatcher(result.getPath()).forward(req, resp);
		}
	}
}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
