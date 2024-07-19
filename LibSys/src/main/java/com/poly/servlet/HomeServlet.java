package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/house", "/thuThu", "/sach", "/tacGia", "/nxb", "/theLoai", "/docGia", "/phieuMuon", "/chiTietPM", "/thongKe"})
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Chuyển hướng yêu cầu đến trang "index.jsp"
		req.getRequestDispatcher("/views/index.jsp").forward(req, resp);
//		super.doGet(req, resp);
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("house")) {
//			this.doThuThu(req, resp);
		} else if (uri.contains("thuThu")) {
		} else if (uri.contains("sach")) {
		} else if (uri.contains("tacGia")) {
		} else if (uri.contains("nxb")) {
		} else if (uri.contains("theLoai")) {
		}
//		req.setAttribute("users", dao.findAll());

	}
}
