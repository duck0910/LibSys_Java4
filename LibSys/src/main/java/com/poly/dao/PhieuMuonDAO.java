package com.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.model.PhieuMuon;
import com.poly.util.JpaUtils;

public class PhieuMuonDAO {
private EntityManager em = JpaUtils.getEntityManager();	
	
	public PhieuMuon create(PhieuMuon entity) {
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

	public PhieuMuon update(PhieuMuon entity) {
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

	public PhieuMuon remove(Integer maPM) {
		try {
			em.getTransaction().begin();
			PhieuMuon entity = this.findById(maPM);
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public PhieuMuon findById(Integer maPM) {
		PhieuMuon entity = em.find(PhieuMuon.class, maPM);
		return entity;
	}

	public List<PhieuMuon> findAll() {
		String jpql = "SELECT o FROM PhieuMuon o";
		TypedQuery<PhieuMuon> query = em.createQuery(jpql, PhieuMuon.class);
		List<PhieuMuon> list = query.getResultList();
		return list;
	}
}
