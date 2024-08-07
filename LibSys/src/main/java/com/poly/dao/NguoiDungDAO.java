package com.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.model.NguoiDung;
import com.poly.util.JpaUtils;

public class NguoiDungDAO {
	private EntityManager em = JpaUtils.getEntityManager();	
	
	public NguoiDung create(NguoiDung entity) {
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

	public NguoiDung update(NguoiDung entity) {
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

	public NguoiDung remove(String maND) {
		try {
			em.getTransaction().begin();
			NguoiDung entity = this.findById(maND);
			em.remove(entity); 
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public NguoiDung findById(String maND) {
		NguoiDung entity = em.find(NguoiDung.class, maND);
		return entity;
	}

	public List<NguoiDung> findAll() {
		String jpql = "SELECT o FROM NguoiDung o";
		TypedQuery<NguoiDung> query = em.createQuery(jpql, NguoiDung.class);
		List<NguoiDung> list = query.getResultList();
		return list;
	}
}


