package com.eatsTime.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MainControllerInterface {
    public void method1();
    public void method2();
	void handleRequest(HttpServletRequest request, HttpServletResponse response);
}