package com.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.model.TheLoai;
import com.poly.util.JpaUtils;

public class TheLoaiDAO {

private EntityManager em = JpaUtils.getEntityManager();	
	
	public TheLoai create(TheLoai theLoai) {
		try {
			em.getTransaction().begin();
			em.persist(theLoai);
			em.getTransaction().commit();
			return theLoai;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
		
	}

	public TheLoai update(TheLoai theLoai) {
		try {
			em.getTransaction().begin();
			em.merge(theLoai);
			em.getTransaction().commit();
			return theLoai;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public TheLoai remove(TheLoai theLoai) {
		em.getTransaction().begin();
		try {
			theLoai = this.findById(theLoai.getMaTL());
			em.remove(theLoai);
			em.getTransaction().commit();
			return theLoai;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public TheLoai findById(String maTL) {
		TheLoai theLoai = em.find(TheLoai.class, maTL);
		return theLoai;
	}

	public List<TheLoai> findAll() {
		String jpql = "SELECT o FROM Sach o";
		TypedQuery<TheLoai> query = em.createQuery(jpql, TheLoai.class);
		List<TheLoai> list = query.getResultList();
		return list;
	}
}
