package com.poly.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.dao.NhaXuatBanDAO;
import com.poly.model.NhaXuatBan;

@WebServlet(urlPatterns = { "/nxb/index", "/nxb/edit/*", "/nxb/create", "/nxb/update", "/nxb/delete" })
public class NhaXuatBanServlet extends HttpServlet {
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		NhaXuatBanDAO nhaXuatBanDAO = new NhaXuatBanDAO();
		NhaXuatBan nhaXuatBan = new NhaXuatBan();
		if (uri.contains("edit")) {
			String maNXB = uri.substring(uri.lastIndexOf("/") + 1);
			nhaXuatBan = nhaXuatBanDAO.findById(maNXB);
		} else if (uri.contains("create")) {
			try {
				BeanUtils.populate(nhaXuatBan, req.getParameterMap());
				nhaXuatBanDAO.create(nhaXuatBan);
				req.setAttribute("message", "Thêm thành công");
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "Thêm thất bại");
			}
		} else if (uri.contains("update")) {
			try {
				BeanUtils.populate(nhaXuatBan, req.getParameterMap());
				nhaXuatBanDAO.update(nhaXuatBan);
				req.setAttribute("message", "Cập nhật thành công");
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "Cập nhật thất bại");
			}
		} else if (uri.contains("delete")) {
			try {
				BeanUtils.populate(nhaXuatBan, req.getParameterMap());
				nhaXuatBanDAO.remove(nhaXuatBan);
				req.setAttribute("message", "Xóa thành công");
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "Xóa thất bại");
			}
		}
		req.setAttribute("form", nhaXuatBan);
		req.setAttribute("listUser", nhaXuatBanDAO.findAll());
		req.getRequestDispatcher("/views/nxb.jsp").forward(req, resp);
	}

}
