/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.repository.impl;

import com.hmh.pojo.ChiTietThuoc;
import com.hmh.pojo.DanhGiaBs;
import com.hmh.pojo.HoaDon;
import com.hmh.pojo.TaiKhoan;
import com.hmh.repository.DanhGiaRepository;
import com.hmh.repository.ThanhToanRepository;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Asus
 */
@Repository
@Transactional
public class DanhGiaRepositoryImpl implements DanhGiaRepository {

    @Autowired
    private LocalSessionFactoryBean factory;

    @Autowired
    private ThanhToanRepository thanhToanRepository;

    @Override
    public boolean themDanhGiaBS(DanhGiaBs danhGiaBs, TaiKhoan tk, TaiKhoan bs, int hd) {
        Session session = this.factory.getObject().getCurrentSession();
        DanhGiaBs dg = session.get(DanhGiaBs.class, hd);

        HoaDon hd1 = this.thanhToanRepository.getHoaDonById(hd);
        TaiKhoan tkBn = hd1.getIdPhieudky().getIdBn();
        TaiKhoan tkBs = hd1.getIdPhieudky().getIdBs();

        try {
            if (danhGiaBs.getIdDanhGiaBs() == null) {
                danhGiaBs.setTkDanhgia(tkBn);
                danhGiaBs.setBsDanhgia(tkBs);
                session.save(danhGiaBs);
            } else {
                session.update(danhGiaBs);
            }

            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }

        return false;
    }

    @Override
    public DanhGiaBs getDanhGiaBSByIdHD(int idHd) {
        Session session = this.factory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();

        CriteriaQuery<DanhGiaBs> criteriaQuery = builder.createQuery(DanhGiaBs.class);
        Root<DanhGiaBs> root = criteriaQuery.from(DanhGiaBs.class);

        criteriaQuery.select(root).where(builder.equal(root.get("hdDanhgia").get("idHoadon"), idHd));

        Query<DanhGiaBs> query = session.createQuery(criteriaQuery);

        try {
            return query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    @Override
    public List<TaiKhoan> getDSBacSiByDanhGiaBS() {
        Session session = this.factory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();

        CriteriaQuery<TaiKhoan> criteriaQuery = builder.createQuery(TaiKhoan.class);
        Root<DanhGiaBs> root = criteriaQuery.from(DanhGiaBs.class);
        Join<DanhGiaBs, TaiKhoan> doctorJoin = root.join("bsDanhgia", JoinType.INNER);

        criteriaQuery.select(doctorJoin).distinct(true);

        Query<TaiKhoan> query = session.createQuery(criteriaQuery);

        return query.getResultList();
    }

}
