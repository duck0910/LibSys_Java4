package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.DAO.TacGiaDAO;
import com.poly.model.TacGia;

@WebServlet({ "/tacGia", "/themTgia", "/editTGia/*", "/updateTGia", "/clearTgia", "/deleteTgia"})
public class TacGiaServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	TacGiaDAO tacGiaDAO = new TacGiaDAO();
	TacGia tgia = new TacGia();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String uri = req.getRequestURI();
		String method = req.getMethod();

		if (uri.contains("tacGia")) {
			int numTacGia = (tacGiaDAO.findAll().size() + 1);
			String idTGia = null;
			if (numTacGia >= 10 && numTacGia <= 99) {
				idTGia = "TG000" + numTacGia;
			} else if (numTacGia >= 100 && numTacGia <= 999) {
				idTGia = "TG00" + numTacGia;
			} else if (numTacGia >= 1000 && numTacGia <= 9999) {
				idTGia = "TG0" + numTacGia;
			} else {
				idTGia = "TG" + numTacGia;
			}
			req.setAttribute("Id", idTGia);
			req.setAttribute("dsachTGia", tacGiaDAO.findAll());
			req.getRequestDispatcher("/views/tacGia.jsp").forward(req, resp);
			return;
		} else if (uri.contains("themTgia") && "POST".equals(method)) {
			System.out.println("Thêm thành công");
			this.AddTacGia(req, resp);
			req.getRequestDispatcher("/tacGia").forward(req, resp);
			return;
		} else if (uri.contains("editTGia")) {
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			tgia = tacGiaDAO.findById(id);
			req.setAttribute("form", tgia);
			req.setAttribute("dsachTGia", tacGiaDAO.findAll());
			req.getRequestDispatcher("/views/tacGia.jsp").forward(req, resp);
			return;
		} else if (uri.contains("updateTGia")) {
			this.UpdateTaGia(req, resp);
			resp.sendRedirect(req.getContextPath() + "/tacGia");
			return;
		} else if (uri.contains("deleteTgia")) {
			this.doRemove(req, resp);
			resp.sendRedirect(req.getContextPath() + "/tacGia");
			return;
		} else if (uri.contains("clearTgia")) {
			req.setAttribute("form", "");
			resp.sendRedirect(req.getContextPath() + "/tacGia");
			return;
		}
	}

	protected void AddTacGia(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			BeanUtils.populate(tgia, req.getParameterMap());
			tacGiaDAO.create(tgia);
			req.setAttribute("successMessage", "Thêm tác giả thành công!");
		} catch (Exception e) {
			req.setAttribute("successError", "Thêm tác giả thất bại!");
		}
	}

	protected void UpdateTaGia(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
		try {
			BeanUtils.populate(tgia, req.getParameterMap());
			tacGiaDAO.update(tgia);
			req.setAttribute("successMessage", "Cập nhật tác giả thành công!");
		} catch (Exception e) {
			req.setAttribute("successMessage", "Cập nhật tác giả thất bại!");
		}
	}

	protected void doRemove(HttpServletRequest req, HttpServletResponse resp) {
		try {
			String id = req.getParameter("maTG");
			tacGiaDAO.remove(id);
			tgia = null;
			req.setAttribute("message", "Xóa tác giả thành công!");
		} catch (Exception e) {
			req.setAttribute("message", "Xóa tác giả thất bại!");
		}
	}
}
