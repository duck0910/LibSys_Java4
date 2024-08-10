package com.poly.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.JpaUtils.JpaUtils;
import com.poly.model.PhieuMuon;


public class PhieuMuonDAO {
	private EntityManager em = JpaUtils.getEntityManager();

	public PhieuMuon create(PhieuMuon entity) {
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

	public PhieuMuon remove(String id) {
		try {
			em.getTransaction().begin();
			PhieuMuon entity = this.findById(id);
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public PhieuMuon findById(String id) {
		PhieuMuon entity = em.find(PhieuMuon.class, id);
		return entity;
	}
	
	public PhieuMuon findByEmail(String email) {
	    TypedQuery<PhieuMuon> query = em.createQuery("SELECT u FROM PhieuMuon u WHERE u.email = :email", PhieuMuon.class);
	    query.setParameter("email", email);
	    List<PhieuMuon> resultList = query.getResultList();
	    return resultList.isEmpty() ? null : resultList.get(0);
	}


	public List<PhieuMuon> findAll() {
		String jpql = "SELECT o FROM PhieuMuon o";
		TypedQuery<PhieuMuon> query = em.createQuery(jpql, PhieuMuon.class);
		List<PhieuMuon> list = query.getResultList();
		return list;
	}
}
