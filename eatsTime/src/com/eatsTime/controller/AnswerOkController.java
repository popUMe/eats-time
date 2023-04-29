package com.eatsTime.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;

public class AnswerOkController implements Action{
 @Override
public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

	 Result result=new Result();
	 
	 return result;
	 
	 
 }
}
