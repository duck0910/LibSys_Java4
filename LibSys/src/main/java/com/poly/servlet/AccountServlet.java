package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.DAO.UserDAO;
import com.poly.model.User;

@WebServlet({ "/login", "/registration", "/updateProfile", "/forgot-password", "/change-password" })
public class AccountServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserDAO dao = new UserDAO();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("login")) {
			this.doSignIn(req, resp);
		} else if (uri.contains("registration")) {
			this.doSignUp(req, resp);
		} else if (uri.contains("logoff")) {
		} else if (uri.contains("forgot-password")) {
		} else if (uri.contains("change-password")) {
		} else if (uri.contains("edit-profile")) {
			this.doEditProfile(req, resp);
		}
		req.setAttribute("users", dao.findAll());

	}

	private void doSignIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			String id = req.getParameter("username");
			String pw = req.getParameter("password");
			try {
				User user = dao.findById(id);
				if (user == null) {
					req.setAttribute("alert", "Sai tên đăng nhập hoặc mật khẩu!");
				} else if (!user.getAdmin()) { // Nếu không phải là admin (isAdmin() trả về false)
					if (!user.getPassword().equals(pw)) {
						req.setAttribute("alert", "Sai mật khẩu!");
					} else {
						req.getSession().setAttribute("user", user);
						resp.sendRedirect("index.jsp"); // Quay lại trang index.jsp
//						return; // Dừng xử lý tiếp theo
					}
				} else { // Nếu là admin (getAdmin() trả về true)
					if (!user.getPassword().equals(pw)) {
						req.setAttribute("alert", "Sai mật khẩu!");
					} else {
						req.getSession().setAttribute("user", user);
						resp.sendRedirect(req.getContextPath() + "/admin/");
						return;
					}
				}
			} catch (Exception e) {
				req.setAttribute("alert", "Lỗi đăng nhập!");
			}
		}
		req.getRequestDispatcher("login.jsp").forward(req, resp);
	}

	private void doSignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			// TODO: ĐĂNG KÝ
			try {
				User entity = new User();
				BeanUtils.populate(entity, req.getParameterMap());
				UserDAO dao = new UserDAO();
				dao.create(entity);
				req.setAttribute("message", "Đăng ký thành công!");
			} catch (Exception e) {
				req.setAttribute("message", "Lỗi đăng ký!");
			}
		}
		req.getRequestDispatcher("registration.jsp").forward(req, resp);
	}

	private void doEditProfile(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			// TODO: CẬP NHẬT
			try {
				BeanUtils.populate(user, req.getParameterMap());
				UserDAO dao = new UserDAO();
				dao.update(user);
				req.setAttribute("message", "Cập nhật tài khoản thành công!");
			} catch (Exception e) {
				req.setAttribute("message", "Lỗi cập nhật tài khoản!");
			}
		}
		req.getRequestDispatcher("edit-profile.jsp").forward(req, resp);
	}

	private void doChangePassword(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// Lấy thông tin tài khoản người dùng đã đăng nhập từ session
		User user = (User) req.getSession().getAttribute("user");
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			// Lấy thông tin từ biểu mẫu
			String currentPassword = req.getParameter("currentPassword");
			String newPassword = req.getParameter("newPassword");
			String confirmNewPassword = req.getParameter("confirmNewPassword");

			// Kiểm tra mật khẩu hiện tại của người dùng
			if (!user.getPassword().equals(currentPassword)) {
				req.setAttribute("message", "Mật khẩu hiện tại không đúng!");
			} else if (!newPassword.equals(confirmNewPassword)) {
				req.setAttribute("message", "Mật khẩu mới và xác nhận mật khẩu không khớp!");
			} else {
				// Cập nhật mật khẩu mới cho người dùng
				try {
					user.setPassword(newPassword);
					UserDAO dao = new UserDAO();
					dao.update(user);
					req.setAttribute("message", "Đổi mật khẩu thành công!");
				} catch (Exception e) {
					req.setAttribute("message", "Lỗi khi cập nhật mật khẩu!");
				}
			}
		}
		req.getRequestDispatcher("change-password.jsp").forward(req, resp);
	}

}
