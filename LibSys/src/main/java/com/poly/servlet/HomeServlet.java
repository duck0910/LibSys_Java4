package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/house", "/pMuon", "/sach", "/nxb", "/theLoai"})
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void Home(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Chuyển hướng yêu cầu đến trang "index.jsp"
		req.getRequestDispatcher("/views/index.jsp").forward(req, resp);
//		super.doGet(req, resp);
	}
	
	protected void PhieuMuon(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Chuyển hướng yêu cầu đến trang "Admin-managerment.jsp"
		req.getRequestDispatcher("/views/phieuMuon.jsp").forward(req, resp);
		super.doGet(req, resp);
	}
	
	protected void Sach(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Chuyển hướng yêu cầu đến trang "Admin-managerment.jsp"
		req.getRequestDispatcher("/views/sach.jsp").forward(req, resp);
		super.doGet(req, resp);
	}
	
	protected void NXB(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Chuyển hướng yêu cầu đến trang "Admin-managerment.jsp"
		req.getRequestDispatcher("/views/nxb.jsp").forward(req, resp);
		//super.doGet(req, resp);
	}
	protected void TheLoai(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Chuyển hướng yêu cầu đến trang "Admin-managerment.jsp"
		req.getRequestDispatcher("/views/theLoai.jsp").forward(req, resp);
		//super.doGet(req, resp);
	}
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("house")) {
			this.Home(req, resp);
		} else if (uri.contains("pMuon")) {
			this.PhieuMuon(req, resp);
		} else if (uri.contains("sach")) {
			this.Sach(req, resp);
		} else if (uri.contains("nxb")) {
			this.NXB(req, resp);
		} else if (uri.contains("theLoai")) {
			this.TheLoai(req, resp);
		}

//		req.setAttribute("users", dao.findAll());

	}
}
