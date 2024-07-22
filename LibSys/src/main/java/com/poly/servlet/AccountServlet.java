package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/dnhap", "/dky"})
public class AccountServlet extends HttpServlet{

	protected void DangNhap(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Chuyển hướng yêu cầu đến trang "index.jsp"
		req.getRequestDispatcher("/views/dangNhap.jsp").forward(req, resp);
//		super.doGet(req, resp);
	}
	
	protected void DangKy(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Chuyển hướng yêu cầu đến trang "index.jsp"
		req.getRequestDispatcher("/views/dangKy.jsp").forward(req, resp);
//		super.doGet(req, resp);
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("dnhap")) {
			this.DangNhap(req, resp);
		} else if (uri.contains("dky")) {
			this.DangKy(req, resp);
		} 

//		req.setAttribute("users", dao.findAll());

	}
}
