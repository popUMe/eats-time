	package com.eatsTime.main;
	
	import java.io.IOException;
	
	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	
	import com.eatsTime.Result;
import com.eatsTime.main.controller.SearchOkController;
	
	public class MainFrontController extends HttpServlet {
	    @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    System.out.println("들어옴0");
	        req.setCharacterEncoding("UTF-8");
	
	        String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
	        Result result = null;
	        System.out.print(target);
	        if(target.equals("searchOk")) {
	            result = new SearchOkController().execute(req, resp);
	            System.out.println("들어옴4");
	        } else if(target.equals("indexPage")) {
	        	result = new Result();
	        	result.setPath("/templates/index.jsp");
	        } 
	         else if(target.equals("serviceInfo")) {
	        	result = new Result();
	        	result.setPath("/templates/service_info.jsp");
	        } else if (target.equals("signup")) {
	        	result = new Result();
	        	result.setPath("/templates/member/signup.jsp");
	        } else if (target.equals("login")) {
	        	result = new Result();
	        	result.setPath("/templates/member/login.jsp");
	    
	        } else if (target.equals("qnaList")) {
	        	result = new Result();
	        	result.setPath("/templates/board/qnaList.jsp");
	        } else if (target.equals("notice")) {
	        	result = new Result();
	        	result.setPath("/templates/board/notice.jsp");
	        } else if (target.equals("noticeList")) {
	        	result = new Result();
	        	result.setPath("/templates/board/noticeList.jsp");
	        }
	        
	
	        if(result != null) {
	            if(result.isRedirect()) {
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