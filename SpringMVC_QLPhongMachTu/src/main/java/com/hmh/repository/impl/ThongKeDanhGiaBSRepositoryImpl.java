/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.repository.impl;

import com.hmh.pojo.DanhGiaBs;
import com.hmh.repository.ThongKeDanhGiaBSRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
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
public class ThongKeDanhGiaBSRepositoryImpl implements ThongKeDanhGiaBSRepository {

    @Autowired
    private LocalSessionFactoryBean factory;

    public Long thongKeDanhGiaBSByIDTK(int luotDanhgia, int idBs) {
        Session session = this.factory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();

        CriteriaQuery<Long> criteriaQuery = builder.createQuery(Long.class);
        Root<DanhGiaBs> root = criteriaQuery.from(DanhGiaBs.class);

        Predicate luotDanhgiaPredicate = builder.equal(root.get("luotDanhgia"), luotDanhgia);
        Predicate idBsPredicate = builder.equal(root.get("bsDanhgia").get("idTk"), idBs);

        criteriaQuery.select(builder.count(root)).where(builder.and(luotDanhgiaPredicate, idBsPredicate));

        Query<Long> query = session.createQuery(criteriaQuery);

        return query.getSingleResult();
    }

    @Override
    public List<DanhGiaBs> getDSDanhGiaBSByIdTK(int idBs) {
        Session session = this.factory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<DanhGiaBs> criteriaQuery = builder.createQuery(DanhGiaBs.class);
        Root<DanhGiaBs> root = criteriaQuery.from(DanhGiaBs.class);

        criteriaQuery.select(root).where(builder.equal(root.get("bsDanhgia").get("idTk"), idBs));

        Query<DanhGiaBs> query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }
}
