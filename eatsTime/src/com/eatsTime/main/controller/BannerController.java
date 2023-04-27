package com.eatsTime.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BannerController implements MainControllerInterface {
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        // 배너 데이터 조회
        // ...

        Object bannerData = null;
        // 조회 결과를 JSP 페이지에 전달
        request.setAttribute("bannerData", bannerData);

        // 결과를 출력할 JSP 경로를 반환
        return "index.jsp";
    }

    public void handleRequest(HttpServletRequest request, HttpServletResponse response) {
        // ...
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