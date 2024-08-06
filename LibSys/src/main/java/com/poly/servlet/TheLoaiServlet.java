package com.poly.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.dao.TheLoaiDAO;
import com.poly.model.TheLoai;


@WebServlet(urlPatterns = { "/theLoai/index", "/theLoai/edit/*", "/theLoai/create", "/theLoai/update",
		"/theLoai/delete" })
public class TheLoaiServlet extends HttpServlet {

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		TheLoaiDAO theLoaiDAO = new TheLoaiDAO();
		TheLoai theLoai = new TheLoai();
		if (uri.contains("edit")) {
			String maTL = uri.substring(uri.lastIndexOf("/") + 1);
			theLoai = theLoaiDAO.findById(maTL);
		} else if (uri.contains("create")) {
			try {
				BeanUtils.populate(theLoai, req.getParameterMap());
				theLoaiDAO.create(theLoai);
				req.setAttribute("message", "Thêm thành công");
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "Thêm thất bại");
			}
		} else if (uri.contains("update")) {
			try {
				BeanUtils.populate(theLoai, req.getParameterMap());
				theLoaiDAO.update(theLoai);
				req.setAttribute("message", "Cập nhật thành công");
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "Cập nhật thất bại");
			}
		} else if (uri.contains("delete")) {
			try {
				BeanUtils.populate(theLoai, req.getParameterMap());
				theLoaiDAO.remove(theLoai);
				req.setAttribute("message", "Xóa thành công");
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "Xóa thất bại");
			}
		}
		req.setAttribute("form", theLoai);
		req.setAttribute("listUser", theLoaiDAO.findAll());
		req.getRequestDispatcher("/views/theLoai.jsp").forward(req, resp);
	}

}
