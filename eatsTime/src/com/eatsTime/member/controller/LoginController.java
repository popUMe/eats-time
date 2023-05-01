package com.eatsTime.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;

public class LoginController implements Action {
	
@Override
public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	String memberIdentification = null, memberPw = null;
	Result result = new Result();
	boolean autoLogin = false;
	
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
        	   autoLogin =  Boolean.valueOf(cookie.getValue());   
           }
         }
      }
	if(memberIdentification != null) {
		req.setAttribute("memberIdentification", memberIdentification);
		req.setAttribute("memberPw", memberPw);
		result.setPath("loginOk.member");
	}else {
		if(autoLogin) {
		req.setAttribute("autoLogin", autoLogin);
	}
		result.setPath("templates/member/login.jsp");
	}	
	
	
	
	return result;
}
}
