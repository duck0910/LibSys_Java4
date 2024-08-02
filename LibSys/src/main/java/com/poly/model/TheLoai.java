package com.poly.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the TheLoai database table.
 * 
 */
@Entity
@NamedQuery(name="TheLoai.findAll", query="SELECT t FROM TheLoai t")
public class TheLoai implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MaTL")
	private String maTL;

	@Column(name="TenTL")
	private String tenTL;

	//bi-directional many-to-one association to Sach
	@OneToMany(mappedBy="theLoai")
	private List<Sach> saches;

	public TheLoai() {
	}

	public String getMaTL() {
		return this.maTL;
	}

	public void setMaTL(String maTL) {
		this.maTL = maTL;
	}

	public String getTenTL() {
		return this.tenTL;
	}

	public void setTenTL(String tenTL) {
		this.tenTL = tenTL;
	}

	public List<Sach> getSaches() {
		return this.saches;
	}

	public void setSaches(List<Sach> saches) {
		this.saches = saches;
	}

	public Sach addSach(Sach sach) {
		getSaches().add(sach);
		sach.setTheLoai(this);

		return sach;
	}

	public Sach removeSach(Sach sach) {
		getSaches().remove(sach);
		sach.setTheLoai(null);

		return sach;
	}

}