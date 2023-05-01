package com.eatsTime.inquiryboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Result;
import com.eatsTime.inquiryboard.controller.DeleteOkController;
import com.eatsTime.inquiryboard.controller.ListOkController;
import com.eatsTime.inquiryboard.controller.UpdateController;
import com.eatsTime.inquiryboard.controller.UpdateOkController;
import com.eatsTime.inquiryboard.controller.WriteOkController;

public class InquiryFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;

		
			
		if(target.equals("writeQuestion")) {
			System.out.println("writeQuestion 프컨 들어옴");
			result=new Result();
			result.setPath("templates/member/writeQuestion.jsp");
		
 
		} else if(target.equals("writeOk")) {
			result = new WriteOkController().execute(req, resp);
		} else if(target.equals("listOk")) {
			System.out.println("listOk 들어옴");
			result = new ListOkController().execute(req, resp);
		} else if(target.equals("update")) {
			result = new UpdateController().execute(req, resp);
		}else if(target.equals("updateOk")) {
			result = new UpdateOkController().execute(req, resp);
		}else if(target.equals("deleteOk")) {
			result = new DeleteOkController().execute(req, resp);
		}
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
 