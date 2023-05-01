package com.eatsTime.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;

public class LogoutController implements Action {
@Override
public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	Result result = new Result();
	req.getSession().invalidate();
	
	  if(req.getHeader("Cookie") != null){
	         Cookie[] cookies = req.getCookies();
	         for(Cookie cookie: cookies){
	        	if(cookie.getName().equals("memberIdentification")) {
	        	 cookie.setMaxAge(0); //초단위
	        	 resp.addCookie(cookie);
	         }
	        	if(cookie.getName().equals("memberPw")) {
	        		cookie.setMaxAge(0); //초단위
	        		resp.addCookie(cookie);
	        	}
	      }
	  }	
	result.setRedirect(true);
	result.setPath(req.getContextPath() + "/login.member");
	
	
	
	return result;
}
}
