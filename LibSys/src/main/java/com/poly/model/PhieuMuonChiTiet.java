package com.poly.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the PhieuMuonChiTiet database table.
 * 
 */
@Entity
@NamedQuery(name="PhieuMuonChiTiet.findAll", query="SELECT p FROM PhieuMuonChiTiet p")
public class PhieuMuonChiTiet implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MaCTPM")
	private int maCTPM;

	//bi-directional many-to-one association to PhieuMuon
	@ManyToOne
	@JoinColumn(name="MaPM")
	private PhieuMuon phieuMuon;

	//bi-directional many-to-one association to Sach
	@ManyToOne
	@JoinColumn(name="MaSach")
	private Sach sach;

	public PhieuMuonChiTiet() {
	}

	public int getMaCTPM() {
		return this.maCTPM;
	}

	public void setMaCTPM(int maCTPM) {
		this.maCTPM = maCTPM;
	}

	public PhieuMuon getPhieuMuon() {
		return this.phieuMuon;
	}

	public void setPhieuMuon(PhieuMuon phieuMuon) {
		this.phieuMuon = phieuMuon;
	}

	public Sach getSach() {
		return this.sach;
	}

	public void setSach(Sach sach) {
		this.sach = sach;
	}

}