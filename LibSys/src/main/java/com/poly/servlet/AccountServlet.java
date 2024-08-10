package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.DAO.NguoiDungDAO;
import com.poly.model.NguoiDung;

@WebServlet({"/dnhap", "/dky"})
public class AccountServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("dnhap")) {
			this.doSignIn(req, resp);
		} else if (uri.contains("dky")) {
			this.doSignUp(req, resp);
		} else if (uri.contains("logoff")) {
//			req.getSession().invalidate(); // Xóa thông tin phiên đăng nhập
//		    resp.sendRedirect(req.getContextPath() + "/login");
			this.doSignout(req, resp);
		}

	}
	
	private void doSignIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    // Lấy phương thức HTTP được gửi từ client (GET, POST, v.v.)
	    String method = req.getMethod();
	    
	    // Kiểm tra nếu phương thức là POST
	    if (method.equalsIgnoreCase("POST")) {
	        // Lấy thông tin đăng nhập từ form
	        String id = req.getParameter("username");
	        String pw = req.getParameter("password");
	        try {
	            // Tạo một đối tượng DAO để tương tác với cơ sở dữ liệu
	            NguoiDungDAO dao = new NguoiDungDAO();
	            
	            // Tìm kiếm người dùng trong cơ sở dữ liệu dựa trên ID (username)
	            NguoiDung user = dao.findById(id);
	            
	            // Nếu người dùng không tồn tại trong cơ sở dữ liệu
	            if (user == null) {
	                req.setAttribute("alert", "Sai tên đăng nhập hoặc mật khẩu!");
	            } else if (!user.getVaiTro()) { // Kiểm tra nếu người dùng không phải là admin
	                // Nếu mật khẩu không đúng
	                if (!user.getMatKhau().equals(pw)) {
	                    req.setAttribute("alert", "Sai mật khẩu!");
	                } else {
	                    // Nếu đúng, tạo session cho người dùng và chuyển hướng về trang chủ
	                    req.getSession().setAttribute("user", user);
	                    resp.sendRedirect(req.getContextPath() + "/house");
	                    return;
	                }
	            } else { // Nếu người dùng là admin
	                // Kiểm tra mật khẩu
	                if (!user.getMatKhau().equals(pw)) {
	                    req.setAttribute("alert", "Sai mật khẩu!");
	                } else {
	                    // Nếu đúng, tạo session cho admin và chuyển hướng về trang quản lý
	                    req.getSession().setAttribute("user", user);
	                    resp.sendRedirect(req.getContextPath() + "/house");
	                    return;
	                }
	            }
	        } catch (Exception e) {
	            // Xử lý lỗi nếu có vấn đề xảy ra trong quá trình đăng nhập
	            req.setAttribute("alert", "Lỗi đăng nhập!");
	        }
	    }
	    // Chuyển tiếp tới trang đăng nhập nếu có lỗi hoặc không phải phương thức POST
	    req.getRequestDispatcher("/views/dangNhap.jsp").forward(req, resp);
	}

	private void doSignout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    // Lấy session hiện tại nếu tồn tại, không tạo mới
	    HttpSession session = req.getSession(false);
	    if (session != null) {
	        // Hủy bỏ session hiện tại để đăng xuất
	        session.invalidate();
	        req.setAttribute("alert", "Đăng xuất tài khoản thành công!");
	        // Chuyển tiếp tới trang đăng nhập sau khi đăng xuất
	        req.getRequestDispatcher("/views/dangNhap.jsp").forward(req, resp);
	    }
	}

	private void doSignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    // Lấy phương thức HTTP được gửi từ client
	    String method = req.getMethod();
	    
	    // Kiểm tra nếu phương thức là POST
	    if (method.equalsIgnoreCase("POST")) {
	        try {
	            // Tạo một đối tượng User và populate dữ liệu từ form đăng ký
	            NguoiDung entity = new NguoiDung();
	            BeanUtils.populate(entity, req.getParameterMap());
	            
	            // Tạo một đối tượng DAO để lưu người dùng mới vào cơ sở dữ liệu
	            NguoiDungDAO dao = new NguoiDungDAO();
	            dao.create(entity);
	            
	            // Thiết lập thông báo đăng ký thành công
	            req.setAttribute("message", "Đăng ký thành công!");
	        } catch (Exception e) {
	            // Xử lý lỗi nếu có vấn đề xảy ra trong quá trình đăng ký
	            req.setAttribute("message", "Lỗi đăng ký!");
	        }
	    }
	    // Chuyển tiếp tới trang đăng ký
	    req.getRequestDispatcher("/views/dangKy.jsp").forward(req, resp);
	}

}
