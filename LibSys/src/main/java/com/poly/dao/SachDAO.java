package com.poly.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.JpaUtils.JpaUtils;
import com.poly.model.Sach;
import com.poly.model.TacGia;

public class SachDAO {
	private EntityManager em = JpaUtils.getEntityManager();	
	
	public Sach create(Sach entity) {
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

	public Sach update(Sach entity) {
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

	public Sach remove(String MaSach) {
		try {
			em.getTransaction().begin();
			Sach entity = this.findById(MaSach);
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public Sach findById(String MaSach) {
		Sach entity = em.find(Sach.class, MaSach);
		return entity;
	}

	public List<Sach> findAll() {
		String jpql = "SELECT o FROM Sach o";
		TypedQuery<Sach> query = em.createQuery(jpql, Sach.class);
		List<Sach> list = query.getResultList();
		return list;
	}
}
