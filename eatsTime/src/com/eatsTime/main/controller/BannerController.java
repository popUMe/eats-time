package com.eatsTime.main.controller;

public class BannerController implements MainController {
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        // 배너 데이터 조회
        // ...

        // 조회 결과를 JSP 페이지에 전달
        request.setAttribute("bannerData", bannerData);

        // 결과를 출력할 JSP 경로를 반환
        return "index.jsp";
    }
}
