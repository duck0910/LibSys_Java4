package com.poly.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the DocGia database table.
 * 
 */
@Entity
@NamedQuery(name="DocGia.findAll", query="SELECT d FROM DocGia d")
public class DocGia implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MaDG")
	private String maDG;

	@Column(name="DiaChi")
	private String diaChi;

	@Column(name="DienThoai")
	private String dienThoai;

	@Column(name="Email")
	private String email;

	@Column(name="GioiTinh")
	private boolean gioiTinh;

	@Column(name="TenDG")
	private String tenDG;

	//bi-directional many-to-one association to PhieuMuon
	@OneToMany(mappedBy="docGia")
	private List<PhieuMuon> phieuMuons;

	public DocGia() {
	}

	public String getMaDG() {
		return this.maDG;
	}

	public void setMaDG(String maDG) {
		this.maDG = maDG;
	}

	public String getDiaChi() {
		return this.diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getDienThoai() {
		return this.dienThoai;
	}

	public void setDienThoai(String dienThoai) {
		this.dienThoai = dienThoai;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean getGioiTinh() {
		return this.gioiTinh;
	}

	public void setGioiTinh(boolean gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getTenDG() {
		return this.tenDG;
	}

	public void setTenDG(String tenDG) {
		this.tenDG = tenDG;
	}

	public List<PhieuMuon> getPhieuMuons() {
		return this.phieuMuons;
	}

	public void setPhieuMuons(List<PhieuMuon> phieuMuons) {
		this.phieuMuons = phieuMuons;
	}

	public PhieuMuon addPhieuMuon(PhieuMuon phieuMuon) {
		getPhieuMuons().add(phieuMuon);
		phieuMuon.setDocGia(this);

		return phieuMuon;
	}

	public PhieuMuon removePhieuMuon(PhieuMuon phieuMuon) {
		getPhieuMuons().remove(phieuMuon);
		phieuMuon.setDocGia(null);

		return phieuMuon;
	}

}