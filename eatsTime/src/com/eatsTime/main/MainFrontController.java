	package com.eatsTime.main;
	
	import java.io.IOException;
	
	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	
	import com.eatsTime.Result;
	import com.eatsTime.product.controller.ProductListOkController;
	
	public class MainFrontController extends HttpServlet {
	    @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        req.setCharacterEncoding("UTF-8");
	
	        String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
	        Result result = null;
	
	        if(target.equals("productListOk")) {
	            result = new ProductListOkController().execute(req, resp);
	        } else if(target.equals("indexPage")) {
	        	result = new Result();
	        	result.setPath("/templates/index.jsp");
	        } else if(target.equals("productListAll")) {
	        	result = new Result();
	        	result.setPath("/templates/product/productListAll.jsp");
	        } else if(target.equals("productListDelivery")) {
	        	result = new Result();
	        	result.setPath("/templates/product/productListDelivery.jsp");
	        } else if(target.equals("productListPickup")) {
	        	result = new Result();
	        	result.setPath("/templates/product/productListPickup.jsp");
	        } else if(target.equals("serviceInfo")) {
	        	result = new Result();
	        	result.setPath("/templates/service_info.jsp");
	        } else if (target.equals("signup")) {
	        	result = new Result();
	        	result.setPath("/templates/member/signup.jsp");
	        } else if (target.equals("login")) {
	        	result = new Result();
	        	result.setPath("/templates/member/login.jsp");
	        } else if (target.equals("noticeList")) {
	        	result = new Result();
	        	result.setPath("/templates/board/noticeList.jsp");
	        } else if (target.equals("qnaList")) {
	        	result = new Result();
	        	result.setPath("/templates/board/qnaList.jsp");
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