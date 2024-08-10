package com.poly.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.DAO.DocGiaDAO;
import com.poly.DAO.NguoiDungDAO;
import com.poly.model.DocGia;
import com.poly.model.NguoiDung;


@WebServlet(urlPatterns = { "/ngDung/index", "/ngDung/edit/*", "/ngDung/create", "/ngDung/update", "/ngDung/delete" })
public class NguoiDungServlet extends HttpServlet {
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		NguoiDungDAO nguoiDungDAO = new NguoiDungDAO();
		NguoiDung nguoiDung = new NguoiDung();
		String maNguoiDung = uri.substring(uri.lastIndexOf("/") + 1);
		if (uri.contains("edit")) {
			nguoiDung = nguoiDungDAO.findById(maNguoiDung);
		} else if (uri.contains("create")) {
			try {
				BeanUtils.populate(nguoiDung, req.getParameterMap());
				nguoiDungDAO.create(nguoiDung);
				req.setAttribute("message", "Thêm thành công");
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "Thêm thất bại");
			}
		} else if (uri.contains("update")) {
			try {
				BeanUtils.populate(nguoiDung, req.getParameterMap());
				nguoiDungDAO.update(nguoiDung);
				req.setAttribute("message", "Cập nhật thành công");
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "Cập nhật thất bại");
			}
		} else if (uri.contains("delete")) {
			try {
				BeanUtils.populate(nguoiDung, req.getParameterMap());
				nguoiDungDAO.remove(maNguoiDung);
				req.setAttribute("message", "Xóa thành công");
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "Xóa thất bại");
			}
		}
		req.setAttribute("docGia", nguoiDung);
		req.setAttribute("docGias", nguoiDungDAO.findAll());
		req.getRequestDispatcher("/views/nguoiDung.jsp").forward(req, resp);
	}
}
