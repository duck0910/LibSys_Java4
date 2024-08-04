package com.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.model.PhieuMuonChiTiet;
import com.poly.util.JpaUtils;

public class PhieuMuonChiTietDAO {
private EntityManager em = JpaUtils.getEntityManager();	
	
	public PhieuMuonChiTiet create(PhieuMuonChiTiet entity) {
		try {
			em.getTransaction().begin();
			em.persist(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
		
	}

	public PhieuMuonChiTiet update(PhieuMuonChiTiet entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public PhieuMuonChiTiet remove(Integer maCTPM) {
		try {
			em.getTransaction().begin();
			PhieuMuonChiTiet entity = this.findById(maCTPM);
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public PhieuMuonChiTiet findById(Integer maCTPM) {
		PhieuMuonChiTiet entity = em.find(PhieuMuonChiTiet.class, maCTPM);
		return entity;
	}

	public List<PhieuMuonChiTiet> findAll() {
		String jpql = "SELECT o FROM PhieuMuonChiTiet o";
		TypedQuery<PhieuMuonChiTiet> query = em.createQuery(jpql, PhieuMuonChiTiet.class);
		List<PhieuMuonChiTiet> list = query.getResultList();
		return list;
	}
}
