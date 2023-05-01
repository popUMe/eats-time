package com.eatsTime.sale;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.Result;
import com.eatsTime.product.controller.ProductListDeliveryOkController;
import com.eatsTime.product.controller.ProductListOkController;

public class SaleFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		// 작업 다시 해야함 여기는 그냥 써놓은거
		if (target.equals("productListOk")) {
			result = new ProductListOkController().execute(req, resp);
		} else if (target.equals("productListDeliveryOk")) {
			result = new ProductListDeliveryOkController().execute(req, resp);
		}

		if (result != null) {
			if (result.isRedirect()) {
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
