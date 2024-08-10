package com.poly.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Sach database table.
 * 
 */
@Entity
@NamedQuery(name="Sach.findAll", query="SELECT s FROM Sach s")
public class Sach implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MaSach")
	private String maSach;

	@Column(name="Hinh")
	private String hinh;

	@Column(name="NgayNhap")
	private String ngayNhap;

	@Column(name="SoLuong")
	private int soLuong;

	@Column(name="TenSach")
	private String tenSach;

	@Column(name="ViTri")
	private String viTri;


	//bi-directional many-to-one association to PhieuMuonChiTiet
	@OneToMany(mappedBy="sach")
	private List<PhieuMuonChiTiet> phieuMuonChiTiets;

	//bi-directional many-to-one association to NhaXuatBan
	@ManyToOne
	@JoinColumn(name="MaNXB")
	private NhaXuatBan nhaXuatBan;

	//bi-directional many-to-one association to TacGia
	@ManyToOne
	@JoinColumn(name="MaTG")
	private TacGia tacGia;

	//bi-directional many-to-one association to TheLoai
	@ManyToOne
	@JoinColumn(name="MaTL")
	private TheLoai theLoai;

	public Sach() {
	}

	public String getMaSach() {
		return this.maSach;
	}

	public void setMaSach(String maSach) {
		this.maSach = maSach;
	}

	public String getHinh() {
		return this.hinh;
	}

	public void setHinh(String hinh) {
		this.hinh = hinh;
	}

	public String getNgayNhap() {
		return this.ngayNhap;
	}

	public void setNgayNhap(String ngayNhap) {
		this.ngayNhap = ngayNhap;
	}

	public int getSoLuong() {
		return this.soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public String getTenSach() {
		return this.tenSach;
	}

	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}

	public String getViTri() {
		return this.viTri;
	}

	public void setViTri(String viTri) {
		this.viTri = viTri;
	}


	public List<PhieuMuonChiTiet> getPhieuMuonChiTiets() {
		return this.phieuMuonChiTiets;
	}

	public void setPhieuMuonChiTiets(List<PhieuMuonChiTiet> phieuMuonChiTiets) {
		this.phieuMuonChiTiets = phieuMuonChiTiets;
	}

	public PhieuMuonChiTiet addPhieuMuonChiTiet(PhieuMuonChiTiet phieuMuonChiTiet) {
		getPhieuMuonChiTiets().add(phieuMuonChiTiet);
		phieuMuonChiTiet.setSach(this);

		return phieuMuonChiTiet;
	}

	public PhieuMuonChiTiet removePhieuMuonChiTiet(PhieuMuonChiTiet phieuMuonChiTiet) {
		getPhieuMuonChiTiets().remove(phieuMuonChiTiet);
		phieuMuonChiTiet.setSach(null);

		return phieuMuonChiTiet;
	}

	public NhaXuatBan getNhaXuatBan() {
		return this.nhaXuatBan;
	}

	public void setNhaXuatBan(NhaXuatBan nhaXuatBan) {
		this.nhaXuatBan = nhaXuatBan;
	}

	public TacGia getTacGia() {
		return this.tacGia;
	}

	public void setTacGia(TacGia tacGia) {
		this.tacGia = tacGia;
	}

	public TheLoai getTheLoai() {
		return this.theLoai;
	}

	public void setTheLoai(TheLoai theLoai) {
		this.theLoai = theLoai;
	}

}