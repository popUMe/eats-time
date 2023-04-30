package com.eatsTime.main.controller;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.main.dao.MainDAO;

public class SearchOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("들어옴1");
		   @SuppressWarnings("unused")
		MainDAO mainDAO = new MainDAO();
		   Result result = new Result();
		   JSONArray jsonArray = new JSONArray();
		   String keyword = req.getParameter("keyword");
		   MainDAO.selectAll1(keyword).stream().map(user -> new JSONObject(user)).forEach(jsonArray::put);
		   req.setAttribute("product", jsonArray.toString());
		   req.setAttribute("keyword", keyword);
		return result;
	}
}