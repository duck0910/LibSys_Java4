package com.poly.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.poly.DAO.NhaXuatBanDAO;
import com.poly.DAO.SachDAO;
import com.poly.DAO.TacGiaDAO;
import com.poly.DAO.TheLoaiDAO;
import com.poly.model.NhaXuatBan;
import com.poly.model.Sach;
import com.poly.model.TacGia;
import com.poly.model.TheLoai;

@MultipartConfig
@WebServlet({"/sach", "/createSach", "/editSach/*", "/updateSach", "/deleteSach"})
public class SachServlet extends HttpServlet{

	
	private static final long serialVersionUID = 1L;
	Sach sach = new Sach();
	SachDAO sachDAO = new SachDAO();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String uri = req.getRequestURI();
		
		if (uri.contains("sach")) {
			int numSach = (sachDAO.findAll().size() + 1);
			String idSach = null;
			if (numSach >= 10 && numSach <= 99) {
				idSach = "S000" + numSach;
			} else if (numSach >= 100 && numSach <= 999) {
				idSach = "S00" + numSach;
			} else if (numSach >= 1000 && numSach <= 9999) {
				idSach = "S0" + numSach;
			} else {
				idSach = "S" + numSach;
			}
			req.setAttribute("Id", idSach);
			req.setAttribute("allSach", sachDAO.findAll());
			req.getRequestDispatcher("/views/sach.jsp").forward(req, resp);
			return;
		} else if (uri.contains("createSach")) {
			this.doCreatSach(req, resp);
			req.getRequestDispatcher("/sach").forward(req, resp);
			return;
		} else if (uri.contains("editSach")) {
			String id = uri.substring(uri.lastIndexOf("/") + 1);
	        sach = sachDAO.findById(id);
			req.setAttribute("form", sach);
			req.setAttribute("allSach", sachDAO.findAll());
			req.getRequestDispatcher("/views/sach.jsp").forward(req, resp);
			return;
		} else if (uri.contains("deleteSach")) {
			this.doRemove(req, resp);
			req.getRequestDispatcher("/sach").forward(req, resp);
			return;
		} else if (uri.contains("updateSach")) {
			this.doUpdateSach(req, resp);
			req.getRequestDispatcher("/sach").forward(req, resp);
			return;
		}
	}
	
	
	
	protected void doCreatSach(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
	        // Initialize the sach object
	        Sach sach = new Sach();

	        // Validate input fields
	        String maSach = req.getParameter("maSach");
	        String tacGiaId = req.getParameter("tacGia");
	        String theLoaiId = req.getParameter("theLoai");
	        String ngayNhap = req.getParameter("ngayNhap");
	        String tenSach = req.getParameter("tenSach");
	        String nhaXuatBanId = req.getParameter("nhaXuatBan");
	        String soLuongStr = req.getParameter("soLuong");
	        String viTri = req.getParameter("viTri");

	        // Check for empty fields
	        if (maSach == null || maSach.isEmpty() ||
	            tacGiaId == null || tacGiaId.isEmpty() ||
	            theLoaiId == null || theLoaiId.isEmpty() ||
	            ngayNhap == null || ngayNhap.isEmpty() ||
	            tenSach == null || tenSach.isEmpty() ||
	            nhaXuatBanId == null || nhaXuatBanId.isEmpty() ||
	            soLuongStr == null || soLuongStr.isEmpty() ||
	            viTri == null || viTri.isEmpty()) {

	            req.setAttribute("errorMessage", "Vui lòng điền đầy đủ thông tin.");
	            return;
	        }
	        
	        File dir = new File(req.getServletContext().getRealPath("/files"));
			System.out.println(dir);
			// định nghĩa nơi lưu file getServletContext thư mục gốc tới thư mục file
			if (!dir.exists()) { // tạo nếu chưa tồn tại
				dir.mkdirs(); // kiểm tra thư mục tồn tại hay chưa
			}
			// lưu các file upload vào thư mục files
			Part photo = req.getPart("photo"); // file hình "photo" là name ở bên jsp
			File photoFile = new File(dir, photo.getSubmittedFileName());
			photo.write(photoFile.getAbsolutePath());
			System.out.println(photoFile);
	        // Set values for the sach object
	        sach.setMaSach(maSach);
	        sach.setHinh(photoFile.getName());
	        sach.setNgayNhap(ngayNhap);
	        sach.setSoLuong(Integer.parseInt(soLuongStr));
	        sach.setTenSach(tenSach);
	        sach.setViTri(viTri);

	        // Retrieve and set the TacGia object
	        TacGiaDAO tacGiaDAO = new TacGiaDAO();
	        TacGia tgia = tacGiaDAO.findById(tacGiaId);
	        sach.setTacGia(tgia);

	        // Retrieve and set the TheLoai object
	        TheLoaiDAO theLoaiDAO = new TheLoaiDAO();
	        TheLoai theLoai = theLoaiDAO.findById(theLoaiId);
	        sach.setTheLoai(theLoai);

	        // Retrieve and set the NhaXuatBan object
	        NhaXuatBanDAO nhaXuatBanDAO = new NhaXuatBanDAO();
	        NhaXuatBan nxb = nhaXuatBanDAO.findById(nhaXuatBanId);
	        sach.setNhaXuatBan(nxb);

	        // Save the sach object to the database
	        sachDAO.create(sach);

	        // Set success message
	        req.setAttribute("successMessage", "Thêm sách thành công!");
	    } catch (Exception e) {
	        e.printStackTrace();
	        req.setAttribute("errorMessage", "Thêm sách thất bại!");
	    }
	}
	
	protected void doRemove(HttpServletRequest req, HttpServletResponse resp) {
		try {
			String id = req.getParameter("maSach");
			sachDAO.remove(id);
			sach = null;
			req.setAttribute("successMessage", "Xóa Sách thành công!");
		} catch (Exception e) {
			req.setAttribute("errorMessage", "Xóa Sách thất bại!");
		}
	}
	
	protected void doUpdateSach(HttpServletRequest req, HttpServletResponse resp) {
		try {
	        // Initialize the sach object
	        Sach sach = new Sach();

	        // Validate input fields
	        String maSach = req.getParameter("maSach");
	        String tacGiaId = req.getParameter("tacGia");
	        String theLoaiId = req.getParameter("theLoai");
	        String ngayNhap = req.getParameter("ngayNhap");
	        String tenSach = req.getParameter("tenSach");
	        String nhaXuatBanId = req.getParameter("nhaXuatBan");
	        String soLuongStr = req.getParameter("soLuong");
	        String viTri = req.getParameter("viTri");

	        // Check for empty fields
	        if (maSach == null || maSach.isEmpty() ||
	            tacGiaId == null || tacGiaId.isEmpty() ||
	            theLoaiId == null || theLoaiId.isEmpty() ||
	            ngayNhap == null || ngayNhap.isEmpty() ||
	            tenSach == null || tenSach.isEmpty() ||
	            nhaXuatBanId == null || nhaXuatBanId.isEmpty() ||
	            soLuongStr == null || soLuongStr.isEmpty() ||
	            viTri == null || viTri.isEmpty()) {

	            req.setAttribute("errorMessage", "Vui lòng điền đầy đủ thông tin.");
	            return;
	        }
	        File dir = new File(req.getServletContext().getRealPath("/files"));
			System.out.println(dir);
			// định nghĩa nơi lưu file getServletContext thư mục gốc tới thư mục file
			if (!dir.exists()) { // tạo nếu chưa tồn tại
				dir.mkdirs(); // kiểm tra thư mục tồn tại hay chưa
			}
			// lưu các file upload vào thư mục files
			Part photo = req.getPart("photo"); // file hình "photo" là name ở bên jsp
			File photoFile = new File(dir, photo.getSubmittedFileName());
			photo.write(photoFile.getAbsolutePath());
			System.out.println(photoFile);

	        // Set values for the sach object
	        sach.setMaSach(maSach);
	        sach.setHinh(photoFile.getName());
	        sach.setNgayNhap(ngayNhap);
	        sach.setSoLuong(Integer.parseInt(soLuongStr));
	        sach.setTenSach(tenSach);
	        sach.setViTri(viTri);

	        // Retrieve and set the TacGia object
	        TacGiaDAO tacGiaDAO = new TacGiaDAO();
	        TacGia tgia = tacGiaDAO.findById(tacGiaId);
	        sach.setTacGia(tgia);

	        // Retrieve and set the TheLoai object
	        TheLoaiDAO theLoaiDAO = new TheLoaiDAO();
	        TheLoai theLoai = theLoaiDAO.findById(theLoaiId);
	        sach.setTheLoai(theLoai);

	        // Retrieve and set the NhaXuatBan object
	        NhaXuatBanDAO nhaXuatBanDAO = new NhaXuatBanDAO();
	        NhaXuatBan nxb = nhaXuatBanDAO.findById(nhaXuatBanId);
	        sach.setNhaXuatBan(nxb);

	        // Save the sach object to the database
	        sachDAO.update(sach);

	        // Set success message
	        req.setAttribute("successMessage", "Cập Nhật sách thành công!");
	    } catch (Exception e) {
	        e.printStackTrace();
	        req.setAttribute("errorMessage", "Cập Nhật sách thất bại!");
	    }
	}
	
	

}
