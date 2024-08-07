package com.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.model.DocGia;
import com.poly.util.JpaUtils;

public class DocGiaDAO {
	private EntityManager em = JpaUtils.getEntityManager();	
	
	public DocGia create(DocGia entity) {
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

	public DocGia update(DocGia entity) {
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

	public DocGia remove(String maDG) {
		try {
			em.getTransaction().begin();
			DocGia entity = this.findById(maDG);
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public DocGia findById(String maDG) {
		DocGia entity = em.find(DocGia.class, maDG);
		return entity;
	}

	public List<DocGia> findAll() {
		String jpql = "SELECT o FROM DocGia o";
		TypedQuery<DocGia> query = em.createQuery(jpql, DocGia.class);
		List<DocGia> list = query.getResultList();
		return list;
	}
}
