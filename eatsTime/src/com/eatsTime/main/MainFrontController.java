package com.eatsTime.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Result;
import com.eatsTime.inquiryboard.controller.ListOkController;


public class MainFrontController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("들어옴0");
        req.setCharacterEncoding("UTF-8");

        String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
        Result result = null;
        System.out.print(target);
        if(target.equals("indexPage")) {
            result = new Result(); // null check 후 객체 생성
            result.setPath("/templates/index.jsp");
            System.out.println("들어옴4");
        } 
        else if(target.equals("ListOk")) {
            result = new ListOkController().execute(req, resp);
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