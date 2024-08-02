package com.poly.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the TacGia database table.
 * 
 */
@Entity
@NamedQuery(name="TacGia.findAll", query="SELECT t FROM TacGia t")
public class TacGia implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MaTG")
	private String maTG;

	@Column(name="Email")
	private String email;

	@Column(name="GioiTinh")
	private boolean gioiTinh;

	@Column(name="NgaySinh")
	private String ngaySinh;

	@Column(name="TenTG")
	private String tenTG;

	//bi-directional many-to-one association to Sach
	@OneToMany(mappedBy="tacGia")
	private List<Sach> saches;

	public TacGia() {
	}

	public String getMaTG() {
		return this.maTG;
	}

	public void setMaTG(String maTG) {
		this.maTG = maTG;
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

	public String getNgaySinh() {
		return this.ngaySinh;
	}

	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getTenTG() {
		return this.tenTG;
	}

	public void setTenTG(String tenTG) {
		this.tenTG = tenTG;
	}

	public List<Sach> getSaches() {
		return this.saches;
	}

	public void setSaches(List<Sach> saches) {
		this.saches = saches;
	}

	public Sach addSach(Sach sach) {
		getSaches().add(sach);
		sach.setTacGia(this);

		return sach;
	}

	public Sach removeSach(Sach sach) {
		getSaches().remove(sach);
		sach.setTacGia(null);

		return sach;
	}

}