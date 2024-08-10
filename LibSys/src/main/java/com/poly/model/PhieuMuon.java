package com.poly.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the PhieuMuon database table.
 * 
 */
@Entity
@NamedQuery(name="PhieuMuon.findAll", query="SELECT p FROM PhieuMuon p")
public class PhieuMuon implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="MaPM")
	private int maPM;

	@Column(name="NgayMuon")
	private String ngayMuon;

	@Column(name="NgayTra")
	private String ngayTra;

	@Column(name="TinhTrang")
	private boolean tinhTrang;

	//bi-directional many-to-one association to DocGia
	@ManyToOne
	@JoinColumn(name="MaDG")
	private DocGia docGia;

	//bi-directional many-to-one association to NguoiDung
	@ManyToOne
	@JoinColumn(name="MaND")
	private NguoiDung nguoiDung;


	//bi-directional many-to-one association to PhieuMuonChiTiet
	@OneToMany(mappedBy="phieuMuon")
	private List<PhieuMuonChiTiet> phieuMuonChiTiets;

	public PhieuMuon() {
	}

	public int getMaPM() {
		return this.maPM;
	}

	public void setMaPM(int maPM) {
		this.maPM = maPM;
	}

	public String getNgayMuon() {
		return this.ngayMuon;
	}

	public void setNgayMuon(String ngayMuon) {
		this.ngayMuon = ngayMuon;
	}

	public String getNgayTra() {
		return this.ngayTra;
	}

	public void setNgayTra(String ngayTra) {
		this.ngayTra = ngayTra;
	}

	public boolean getTinhTrang() {
		return this.tinhTrang;
	}

	public void setTinhTrang(boolean tinhTrang) {
		this.tinhTrang = tinhTrang;
	}

	public DocGia getDocGia() {
		return this.docGia;
	}

	public void setDocGia(DocGia docGia) {
		this.docGia = docGia;
	}

	public NguoiDung getNguoiDung() {
		return this.nguoiDung;
	}

	public void setNguoiDung(NguoiDung nguoiDung) {
		this.nguoiDung = nguoiDung;
	}


	public List<PhieuMuonChiTiet> getPhieuMuonChiTiets() {
		return this.phieuMuonChiTiets;
	}

	public void setPhieuMuonChiTiets(List<PhieuMuonChiTiet> phieuMuonChiTiets) {
		this.phieuMuonChiTiets = phieuMuonChiTiets;
	}

	public PhieuMuonChiTiet addPhieuMuonChiTiet(PhieuMuonChiTiet phieuMuonChiTiet) {
		getPhieuMuonChiTiets().add(phieuMuonChiTiet);
		phieuMuonChiTiet.setPhieuMuon(this);

		return phieuMuonChiTiet;
	}

	public PhieuMuonChiTiet removePhieuMuonChiTiet(PhieuMuonChiTiet phieuMuonChiTiet) {
		getPhieuMuonChiTiets().remove(phieuMuonChiTiet);
		phieuMuonChiTiet.setPhieuMuon(null);

		return phieuMuonChiTiet;
	}

}