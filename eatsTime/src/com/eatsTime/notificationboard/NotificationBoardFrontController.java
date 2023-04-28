package com.eatsTime.notificationboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Result;
import com.eatsTime.notificationboard.controller.DeleteOkController;
import com.eatsTime.notificationboard.controller.EditController;
import com.eatsTime.notificationboard.controller.EditOkController;
import com.eatsTime.notificationboard.controller.ListOkController;
import com.eatsTime.notificationboard.controller.NoticeListOkController;
import com.eatsTime.notificationboard.controller.NoticeViewOkController;
import com.eatsTime.notificationboard.controller.ViewOkController;
import com.eatsTime.notificationboard.controller.WriteOkController;

public class NotificationBoardFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		System.out.println("����");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		System.out.println(target);
		
		if(target.equals("adminindex")) {
			result = new Result();
			result.setPath("templates/admin/adminIndex.jsp");
		} else if(target.equals("adminNoticeWrite")) {
			System.out.println("write 들어옴");
			result = new Result();
			result.setPath("templates/admin/adminNoticeWrite.jsp");
		}else if(target.equals("writeOk")) {
			System.out.println("writeOk ����");
			result = new WriteOkController().execute(req, resp);			
		}else if(target.equals("listOk")) {
			result = new ListOkController().execute(req, resp);	

		}else if(target.equals("viewOk")) {
			System.out.println("viewOk ����");

		}else if(target.equals("noticeListOk")) {
			System.out.println("noticeListOk 들어옴");
			result = new NoticeListOkController().execute(req, resp);	
		}		else if(target.equals("viewOk")) {
			System.out.println("viewOk 들어옴");

			result = new ViewOkController().execute(req, resp);
		}else if(target.equals("noticeViewOk")) {
			System.out.println("noticeViewOk 들어옴");
			result = new NoticeViewOkController().execute(req, resp);
		}else if(target.equals("adminEdit")) {
			System.out.println("adminEdit 들어옴");
			result = new EditController().execute(req, resp);
		}else if(target.equals("editOk")) {
			System.out.println("editOk 들어옴");
			result = new EditOkController().execute(req, resp);
		}else if(target.equals("deleteOk")) {
			System.out.println("deleteOk 들어옴");
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