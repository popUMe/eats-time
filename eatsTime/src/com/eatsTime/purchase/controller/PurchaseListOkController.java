package com.eatsTime.purchase.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.purchase.dao.PurchaseDAO;
import com.eatsTime.purchase.domain.PurchaseListDTO;

public class PurchaseListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        
        PurchaseDAO purchaseDAO = new PurchaseDAO();
        PurchaseListDTO purchaseListDTO = new PurchaseListDTO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		purchaseDAO.selectAll().stream().map(purchase -> new JSONObject(purchase)).forEach(jsonArray::put);
		
		
		req.setAttribute("purchaseList", jsonArray.toString());
		result.setPath("templates/member/memberProduct.jsp");
		return result;
	}

}
