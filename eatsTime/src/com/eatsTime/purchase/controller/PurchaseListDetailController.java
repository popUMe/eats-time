package com.eatsTime.purchase.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.purchase.dao.PurchaseDAO;
import com.eatsTime.purchase.domain.PurchaseListDTO;

public class PurchaseListDetailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		PurchaseDAO purchaseDAO = new PurchaseDAO();
		PurchaseListDTO purchaseListDTO = new PurchaseListDTO();
		Result result = new Result();
		Long purId = Long.valueOf(req.getParameter("purId"));
//		Long purId = 2L;
		
		result.setPath("/templates/member/buyinglistDetail.jsp");
		
		req.setAttribute("purchaseDetail", purchaseDAO.selectDetail(purId));
		return result;
		
//		JSONArray jsonArray = new JSONArray();
//		purchaseDAO.selectDetail().stream().map(purchase -> new JSONObject(purchase)).forEach(jsonArray::put);
//		req.setAttribute("purchaseProductDetail", jsonArray.toString());
		
//		JSONObject obj = new JSONObject();
//
//		List<PurchaseListDTO> listMap = new ArrayList();
//
//		listMap = purchaseDAO.selectDetail(purchaseListDTO);
//
//		try {
//			for (int i = 0; i < listMap.size(); i++) {
//				obj.put("purId", listMap.get(i).getPurId().toString());
//				obj.put("productName", listMap.get(i).getProductName().toString());
//				obj.put("purTotalPrice", listMap.get(i).getPurTotalPrice().toString());
//				obj.put("fileOriginalName", listMap.get(i).getFileOriginalName().toString());
//				obj.put("productCategory", listMap.get(i).isProductCategory());
//				obj.put("purDate", listMap.get(i).getPurDate().toString());
//				obj.put("purName", listMap.get(i).getPurName().toString());
//				obj.put("purPhoneNumber", listMap.get(i).getPurPhoneNumber().toString());
//				obj.put("purAddress", listMap.get(i).getPurAddress().toString());
//				obj.put("purAddressDetail", listMap.get(i).getPurAddressDetail().toString());
//				obj.put("purLocation", listMap.get(i).getPurLocation().toString());
//				obj.put("purPw", listMap.get(i).getPurPw().toString());
//				obj.put("productId", listMap.get(i).getProductId().toString());
//				obj.put("memberId", listMap.get(i).getMemberId().toString());
//
//			}
//		} catch (JSONException e) {
//			e.printStackTrace();
//		}
//
//		req.setAttribute("obj", obj);



	}

}
