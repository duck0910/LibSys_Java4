package com.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.model.NhaXuatBan;
import com.poly.util.JpaUtils;

public class NhaXuatBanDAO {
	private EntityManager em = JpaUtils.getEntityManager();

	public NhaXuatBan create(NhaXuatBan nhaXuatBan) {
		try {
			em.getTransaction().begin();
			em.persist(nhaXuatBan);
			em.getTransaction().commit();
			return nhaXuatBan;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}

	}

	public NhaXuatBan update(NhaXuatBan nhaXuatBan) {
		try {
			em.getTransaction().begin();
			em.merge(nhaXuatBan);
			em.getTransaction().commit();
			return nhaXuatBan;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public NhaXuatBan remove(NhaXuatBan nhaXuatBan) {
		em.getTransaction().begin();
		try {
			nhaXuatBan = this.findById(nhaXuatBan.getMaNXB());
			em.remove(nhaXuatBan);
			em.getTransaction().commit();
			return nhaXuatBan;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public NhaXuatBan findById(String maNXB) {
		NhaXuatBan nhaXuatBan = em.find(NhaXuatBan.class, maNXB);
		return nhaXuatBan;
	}

	public List<NhaXuatBan> findAll() {
		String jpql = "SELECT o FROM NhaXuatBan o";
		TypedQuery<NhaXuatBan> query = em.createQuery(jpql, NhaXuatBan.class);
		List<NhaXuatBan> list = query.getResultList();
		return list;
	}

}
