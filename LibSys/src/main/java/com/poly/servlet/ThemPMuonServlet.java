package com.poly.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.DAO.DocGiaDAO;
import com.poly.DAO.NguoiDungDAO;
import com.poly.DAO.PhieuMuonChiTietDAO;
import com.poly.DAO.PhieuMuonDAO;
import com.poly.DAO.SachDAO;
import com.poly.model.DocGia;
import com.poly.model.NguoiDung;
import com.poly.model.PhieuMuon;
import com.poly.model.PhieuMuonChiTiet;
import com.poly.model.Sach;

@WebServlet({"/pMuon", "/creatPmuon"})
public class ThemPMuonServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	SachDAO sd = new SachDAO();
	Sach s = new Sach();
	PhieuMuon pm = new PhieuMuon();
	PhieuMuonDAO pMDAO = new PhieuMuonDAO();
	PhieuMuonChiTiet pmCT = new PhieuMuonChiTiet();
	PhieuMuonChiTietDAO pmCTDAO = new PhieuMuonChiTietDAO();
	DocGiaDAO docGiaDAO = new DocGiaDAO();
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		
		if (uri.contains("pMuon")) {
			DocGiaDAO docGiaDAO = new DocGiaDAO();
			req.setAttribute("dsSach", sd.findAll());
			req.setAttribute("dsDG", docGiaDAO.findAll());
			req.setAttribute("dsachMuon", pMDAO.findAll());
			  // Lấy ngày hiện tại
		    LocalDate currentDate = LocalDate.now();
		    // Định dạng ngày nếu cần (theo format "yyyy-MM-dd")
		    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		    String formattedDate = currentDate.format(formatter);
		    // Đặt ngày hiện tại vào request attribute
		    req.setAttribute("currentDate", formattedDate);
			req.getRequestDispatcher("/views/phieuMuon.jsp").forward(req, resp);
			return;
		} else if (uri.contains("creatPmuon")) {
			this.doCreate(req, resp);
			req.getRequestDispatcher("/pMuon").forward(req, resp);
			return;
		}
	}
	
	
	private void doCreate(HttpServletRequest req, HttpServletResponse resp) {
	    try {
	        // Thiết lập giá trị cho các thuộc tính
	        PhieuMuon pm = new PhieuMuon();
	        pm.setNgayMuon(req.getParameter("ngayMuon"));
	        pm.setNgayTra(req.getParameter("ngayTra"));
	        
	        String maDG = req.getParameter("docGia");
	        String maSach = req.getParameter("sach");
	        String trangThai = req.getParameter("trangThai");
	        boolean tra = "daTra".equals(trangThai); // Sửa để giá trị đúng cho trạng thái "Đã trả"
	        pm.setTinhTrang(tra);
	        
	        // Thiết lập đối tượng DocGia
	        DocGia docGia = docGiaDAO.findById(maDG);
	        pm.setDocGia(docGia);

	        // Thiết lập đối tượng NguoiDung
	        NguoiDungDAO nguoiDungDAO = new NguoiDungDAO();
	        NguoiDung nguoiDung = nguoiDungDAO.findById("thamldh");
	        pm.setNguoiDung(nguoiDung);

	        // Thiết lập đối tượng Sach
	        Sach s = sd.findById(maSach); // "maSach" là giá trị mã sách bạn cần tìm

	        if (s != null) {
	            // Tạo đối tượng PhieuMuonChiTiet
	            PhieuMuonChiTiet pmCT = new PhieuMuonChiTiet();
	            pmCT.setSach(s);
	            pmCT.setPhieuMuon(pm);
	            
	            // Lưu PhieuMuon trước, sau đó lưu PhieuMuonChiTiet
	            PhieuMuonDAO pMDAO = new PhieuMuonDAO();
	            pMDAO.create(pm); // Bạn có thể cần thay đổi sang merge nếu cần
	            
	            PhieuMuonChiTietDAO pmCTDAO = new PhieuMuonChiTietDAO();
	            pmCTDAO.create(pmCT);

	            req.setAttribute("successMessage", "Thêm phiếu mượn và chi tiết phiếu mượn thành công!");
	            System.out.println("Thêm phiếu mượn và chi tiết phiếu mượn thành công!");
	        } else {
	            req.setAttribute("errorMessage", "Không tìm thấy sách với mã đã cung cấp.");
	            System.out.println("Không tìm thấy sách với mã đã cung cấp.");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        req.setAttribute("errorMessage", "Có lỗi xảy ra khi thêm phiếu mượn và chi tiết phiếu mượn.");
	        System.out.println("Có lỗi xảy ra khi thêm phiếu mượn và chi tiết phiếu mượn.");
	    }
	}


}
