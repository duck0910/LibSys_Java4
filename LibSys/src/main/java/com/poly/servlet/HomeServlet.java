package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.poly.DAO.TacGiaDAO;
import com.poly.DAO.TheLoaiDAO;
import com.poly.model.TacGia;

@WebServlet({"/house","/theLoai", "/nxb", "/docGia", "/ngDung"})
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	TheLoaiDAO theLoaiDAO = new TheLoaiDAO();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("house")) {
			this.Home(req, resp);
		}else if (uri.contains("/theLoai")) {
			req.setAttribute("theLoais", theLoaiDAO.findAll());
			req.getRequestDispatcher("/views/theLoai.jsp").forward(req, resp);
		}
	}


	protected void Home(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Chuyển hướng yêu cầu đến trang "index.jsp"
		req.getRequestDispatcher("/views/index.jsp").forward(req, resp);
//		super.doGet(req, resp);
	}
	
	
	protected void NXB(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Chuyển hướng yêu cầu đến trang "Admin-managerment.jsp"
		req.getRequestDispatcher("/views/nxb.jsp").forward(req, resp);
//		super.doGet(req, resp);
	}
	
	protected void DocGia(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Chuyển hướng yêu cầu đến trang "Admin-managerment.jsp"
		req.getRequestDispatcher("/views/docGia.jsp").forward(req, resp);
//		super.doGet(req, resp);
	}
	
	protected void NguoiDung(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Chuyển hướng yêu cầu đến trang "Admin-managerment.jsp"
		req.getRequestDispatcher("/views/nguoiDung.jsp").forward(req, resp);
//		super.doGet(req, resp);
	}
	
	
	
	
}
