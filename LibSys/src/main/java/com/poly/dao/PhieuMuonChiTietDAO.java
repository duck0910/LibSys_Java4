package com.poly.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.JpaUtils.JpaUtils;
import com.poly.model.PhieuMuonChiTiet;

public class PhieuMuonChiTietDAO {
	private EntityManager em = JpaUtils.getEntityManager();

	public PhieuMuonChiTiet create(PhieuMuonChiTiet entity) {
		try {
			em.getTransaction().begin();
//			bắt đầu một giao dịch với cơ sở dữ liệu thông qua EntityManager
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

	public PhieuMuonChiTiet remove(String id) {
		try {
			em.getTransaction().begin();
			PhieuMuonChiTiet entity = this.findById(id);
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public PhieuMuonChiTiet findById(String id) {
		PhieuMuonChiTiet entity = em.find(PhieuMuonChiTiet.class, id);
		return entity;
	}
	
	public PhieuMuonChiTiet findByEmail(String email) {
	    TypedQuery<PhieuMuonChiTiet> query = em.createQuery("SELECT u FROM PhieuMuonChiTiet u WHERE u.email = :email", PhieuMuonChiTiet.class);
	    query.setParameter("email", email);
	    List<PhieuMuonChiTiet> resultList = query.getResultList();
	    return resultList.isEmpty() ? null : resultList.get(0);
	}


	public List<PhieuMuonChiTiet> findAll() {
		String jpql = "SELECT o FROM PhieuMuonChiTiet o";
		TypedQuery<PhieuMuonChiTiet> query = em.createQuery(jpql, PhieuMuonChiTiet.class);
		List<PhieuMuonChiTiet> list = query.getResultList();
		return list;
	}
}
