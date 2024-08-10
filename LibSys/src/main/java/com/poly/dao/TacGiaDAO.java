package com.poly.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.JpaUtils.JpaUtils;
import com.poly.model.TacGia;

public class TacGiaDAO {
	private EntityManager em = JpaUtils.getEntityManager();	
	
	public TacGia create(TacGia entity) {
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

	public TacGia update(TacGia entity) {
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

	public TacGia remove(String MaTG) {
		try {
			em.getTransaction().begin();
			TacGia entity = this.findById(MaTG);
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public TacGia findById(String MaTG) {
		TacGia entity = em.find(TacGia.class, MaTG);
		return entity;
	}

	public List<TacGia> findAll() {
		String jpql = "SELECT t FROM TacGia t";
		TypedQuery<TacGia> query = em.createQuery(jpql, TacGia.class);
		List<TacGia> list = query.getResultList();
		return list;
	}
}
