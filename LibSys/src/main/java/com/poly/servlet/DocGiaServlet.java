package com.poly.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.dao.DocGiaDAO;
import com.poly.model.DocGia;

@WebServlet(urlPatterns = { "/docgia/index", "/docgia/edit/*", "/docgia/create", "/docgia/update", "/docgia/delete" })
public class DocGiaServlet extends HttpServlet{
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		DocGiaDAO docGiaDAO = new DocGiaDAO();
		DocGia docGia = new DocGia();
		String maDocGia = uri.substring(uri.lastIndexOf("/") + 1);
		if (uri.contains("edit")) {
			docGia = docGiaDAO.findById(maDocGia);
		} else if (uri.contains("create")) {
			try {
				BeanUtils.populate(docGia, req.getParameterMap());
				docGiaDAO.create(docGia);
				req.setAttribute("message", "Thêm thành công");
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "Thêm thất bại");
			}
		} else if (uri.contains("update")) {
			try {
				BeanUtils.populate(docGia, req.getParameterMap());
				docGiaDAO.update(docGia);
				req.setAttribute("message", "Cập nhật thành công");
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "Cập nhật thất bại");
			}
		} else if (uri.contains("delete")) {
			try {
				BeanUtils.populate(docGia, req.getParameterMap());
				docGiaDAO.remove(maDocGia);
				req.setAttribute("message", "Xóa thành công");
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "Xóa thất bại");
			}
		}
		req.setAttribute("docGia", docGia);
		req.setAttribute("docGias", docGiaDAO.findAll());
		req.getRequestDispatcher("/views/docGia.jsp").forward(req, resp);
	}
}
