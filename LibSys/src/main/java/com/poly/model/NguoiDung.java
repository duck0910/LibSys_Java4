package com.poly.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the NguoiDung database table.
 * 
 */
@Entity
@NamedQuery(name="NguoiDung.findAll", query="SELECT n FROM NguoiDung n")
public class NguoiDung implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MaND")
	private String maND;

	@Column(name="Email")
	private String email;

	@Column(name="MatKhau")
	private String matKhau;

	@Column(name="TenND")
	private String tenND;

	@Column(name="VaiTro")
	private boolean vaiTro;

	//bi-directional many-to-one association to PhieuMuon
	@OneToMany(mappedBy="nguoiDung")
	private List<PhieuMuon> phieuMuons;

	public NguoiDung() {
	}

	public String getMaND() {
		return this.maND;
	}

	public void setMaND(String maND) {
		this.maND = maND;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMatKhau() {
		return this.matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public String getTenND() {
		return this.tenND;
	}

	public void setTenND(String tenND) {
		this.tenND = tenND;
	}

	public boolean getVaiTro() {
		return this.vaiTro;
	}

	public void setVaiTro(boolean vaiTro) {
		this.vaiTro = vaiTro;
	}

	public List<PhieuMuon> getPhieuMuons() {
		return this.phieuMuons;
	}

	public void setPhieuMuons(List<PhieuMuon> phieuMuons) {
		this.phieuMuons = phieuMuons;
	}

	public PhieuMuon addPhieuMuon(PhieuMuon phieuMuon) {
		getPhieuMuons().add(phieuMuon);
		phieuMuon.setNguoiDung(this);

		return phieuMuon;
	}

	public PhieuMuon removePhieuMuon(PhieuMuon phieuMuon) {
		getPhieuMuons().remove(phieuMuon);
		phieuMuon.setNguoiDung(null);

		return phieuMuon;
	}

}