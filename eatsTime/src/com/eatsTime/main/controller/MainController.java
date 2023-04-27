package com.eatsTime.main.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eatsTime.product.controller.ProductListOkController;

public class MainController implements MainControllerInterface {
    // URI 요청 경로와 컨트롤러 매핑
    private Map<String, MainControllerInterface> controllers = new HashMap<>();

    public MainController() {
        // 메인 페이지
        controllers.put("/", this);

        // 배너 페이지
        controllers.put("/banner", new BannerController());

        // 상품 목록 페이지
        controllers.put("/productList", (MainControllerInterface) new ProductListOkController());
    }

    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) {
        String uri = request.getRequestURI();
        String contextPath = request.getContextPath();
        String path = uri.substring(contextPath.length());

        // 매핑된 컨트롤러를 찾아서 처리
        MainControllerInterface controller = controllers.get(path);
        if (controller != null) {
            controller.handleRequest(request, response);
        } else {
            // 처리할 수 없는 요청인 경우 예외 처리
            throw new RuntimeException("Invalid request path: " + path);
        }
    }

	@Override
	public void method1() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void method2() {
		// TODO Auto-generated method stub
		
	}
}