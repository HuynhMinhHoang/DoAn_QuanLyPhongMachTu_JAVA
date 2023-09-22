/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.repository.impl;

import com.hmh.pojo.ChiTietThuoc;
import com.hmh.pojo.HoaDon;
import com.hmh.pojo.PhieuDangKy;
import com.hmh.pojo.PhieuKhamBenh;
import com.hmh.pojo.TaiKhoan;
import com.hmh.repository.LichSuKhamRepository;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
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
public class LichSuKhamRepositoryImpl implements LichSuKhamRepository {

    @Autowired
    private LocalSessionFactoryBean factory;

    @Override
    public List<Object> getPhieuDangKy(TaiKhoan idBn) {
        Session s = this.factory.getObject().getCurrentSession();
        Query q = s.createQuery("From PhieuDangKy Where idBn =: idBn");

        q.setParameter("idBn", idBn);
        return q.getResultList();
    }

    @Override
    public PhieuDangKy getLsKhamId(int id) {
        Session session = this.factory.getObject().getCurrentSession();
        return session.get(PhieuDangKy.class, id);
    }

    @Override
    public boolean xoaLsKham(int id) {
        Session session = this.factory.getObject().getCurrentSession();
        PhieuDangKy pdk = this.getLsKhamId(id);
        try {
            session.delete(pdk);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public List<ChiTietThuoc> getChiTietThuocByHoaDonId(int hoaDonId) {
        Session session = this.factory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();

        // Lấy hóa đơn dựa trên ID hóa đơn
        HoaDon hoaDon = session.get(HoaDon.class, hoaDonId);

        if (hoaDon != null) {
            PhieuDangKy phieuDangKy = hoaDon.getIdPhieudky();
            if (phieuDangKy != null) {
                PhieuKhamBenh phieuKhamBenh = phieuDangKy.getIdPk();
                if (phieuKhamBenh != null) {
                    CriteriaQuery<ChiTietThuoc> chiTietThuocQuery = builder.createQuery(ChiTietThuoc.class);
                    Root<ChiTietThuoc> chiTietThuocRoot = chiTietThuocQuery.from(ChiTietThuoc.class);
                    chiTietThuocQuery.select(chiTietThuocRoot)
                            .where(builder.equal(chiTietThuocRoot.get("idPhieukham"), phieuKhamBenh.getIdPhieukham()));

                    Query chiTietThuocQueryObject = session.createQuery(chiTietThuocQuery);
                    return chiTietThuocQueryObject.getResultList();
                }
            }
        }

        return Collections.emptyList();
    }

//    @Override
//    public void themPDK(PhieuDangKy pdk) {
//        Session s = this.factory.getObject().getCurrentSession();
//        s.delete(pdk);
//    }
//    public List<ChiTietThuoc> getChiTietThuocByBenhNhanId(TaiKhoan idBn) {
//        Session session = this.factory.getObject().getCurrentSession();
//        CriteriaBuilder builder = session.getCriteriaBuilder();
//
//        // Lấy danh sách hóa đơn của bệnh nhân dựa trên ID
//        CriteriaQuery<HoaDon> hoaDonQuery = builder.createQuery(HoaDon.class);
//        Root<HoaDon> hoaDonRoot = hoaDonQuery.from(HoaDon.class);
//
//        Join<HoaDon, PhieuDangKy> phieuDangKyJoin = hoaDonRoot.join("idPhieudky");
//        Join<PhieuDangKy, TaiKhoan> taiKhoanJoin = phieuDangKyJoin.join("idBn");
//
//        hoaDonQuery.select(hoaDonRoot)
//                .where(builder.equal(taiKhoanJoin.get("idTk"), idBn.getIdTk()));
//
//        Query hoaDonQueryObject = session.createQuery(hoaDonQuery);
//        List<HoaDon> hoaDonList = hoaDonQueryObject.getResultList();
//
//        // Lấy danh sách chi tiết thuốc dựa trên ID phiếu khám
//        List<ChiTietThuoc> chiTietThuocList = new ArrayList<>();
//
//        for (HoaDon hoaDon : hoaDonList) {
//            PhieuDangKy phieuDangKy = hoaDon.getIdPhieudky();
//            if (phieuDangKy != null) {
//                PhieuKhamBenh phieuKhamBenh = phieuDangKy.getIdPk();
//                if (phieuKhamBenh != null) {
//                    CriteriaQuery<ChiTietThuoc> chiTietThuocQuery = builder.createQuery(ChiTietThuoc.class);
//                    Root<ChiTietThuoc> chiTietThuocRoot = chiTietThuocQuery.from(ChiTietThuoc.class);
//                    chiTietThuocQuery.select(chiTietThuocRoot)
//                            .where(builder.equal(chiTietThuocRoot.get("idPhieukham"), phieuKhamBenh.getIdPhieukham()));
//
//                    Query chiTietThuocQueryObject = session.createQuery(chiTietThuocQuery);
//                    List<ChiTietThuoc> chiTietThuocForHoaDon = chiTietThuocQueryObject.getResultList();
//
//                    chiTietThuocList.addAll(chiTietThuocForHoaDon);
//                }
//            }
//        }
//
//        return chiTietThuocList;
//    }
}
