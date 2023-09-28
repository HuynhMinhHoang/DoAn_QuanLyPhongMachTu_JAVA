/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Asus
 */
@Entity
@Table(name = "danh_gia_dv")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DanhGiaDv.findAll", query = "SELECT d FROM DanhGiaDv d"),
    @NamedQuery(name = "DanhGiaDv.findByIdDanhGiaDv", query = "SELECT d FROM DanhGiaDv d WHERE d.idDanhGiaDv = :idDanhGiaDv"),
    @NamedQuery(name = "DanhGiaDv.findByLuotDanhgia", query = "SELECT d FROM DanhGiaDv d WHERE d.luotDanhgia = :luotDanhgia"),
    @NamedQuery(name = "DanhGiaDv.findByNoidungDanhgia", query = "SELECT d FROM DanhGiaDv d WHERE d.noidungDanhgia = :noidungDanhgia")})
public class DanhGiaDv implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_danh_gia_dv")
    private Integer idDanhGiaDv;
    @Column(name = "luot_danhgia")
    private Integer luotDanhgia;
    @Size(max = 500)
    @Column(name = "noidung_danhgia")
    private String noidungDanhgia;
    @JoinColumn(name = "dv_danhgia", referencedColumnName = "id_dv")
    @ManyToOne
    private DichVu dvDanhgia;
    @JoinColumn(name = "hd_danhgia", referencedColumnName = "id_hoadon")
    @ManyToOne
    private HoaDon hdDanhgia;
    @JoinColumn(name = "tk_danhgia", referencedColumnName = "id_tk")
    @ManyToOne
    private TaiKhoan tkDanhgia;

    public DanhGiaDv() {
    }

    public DanhGiaDv(Integer idDanhGiaDv) {
        this.idDanhGiaDv = idDanhGiaDv;
    }

    public Integer getIdDanhGiaDv() {
        return idDanhGiaDv;
    }

    public void setIdDanhGiaDv(Integer idDanhGiaDv) {
        this.idDanhGiaDv = idDanhGiaDv;
    }

    public Integer getLuotDanhgia() {
        return luotDanhgia;
    }

    public void setLuotDanhgia(Integer luotDanhgia) {
        this.luotDanhgia = luotDanhgia;
    }

    public String getNoidungDanhgia() {
        return noidungDanhgia;
    }

    public void setNoidungDanhgia(String noidungDanhgia) {
        this.noidungDanhgia = noidungDanhgia;
    }

    public DichVu getDvDanhgia() {
        return dvDanhgia;
    }

    public void setDvDanhgia(DichVu dvDanhgia) {
        this.dvDanhgia = dvDanhgia;
    }

    public HoaDon getHdDanhgia() {
        return hdDanhgia;
    }

    public void setHdDanhgia(HoaDon hdDanhgia) {
        this.hdDanhgia = hdDanhgia;
    }

    public TaiKhoan getTkDanhgia() {
        return tkDanhgia;
    }

    public void setTkDanhgia(TaiKhoan tkDanhgia) {
        this.tkDanhgia = tkDanhgia;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDanhGiaDv != null ? idDanhGiaDv.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DanhGiaDv)) {
            return false;
        }
        DanhGiaDv other = (DanhGiaDv) object;
        if ((this.idDanhGiaDv == null && other.idDanhGiaDv != null) || (this.idDanhGiaDv != null && !this.idDanhGiaDv.equals(other.idDanhGiaDv))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hmh.pojo.DanhGiaDv[ idDanhGiaDv=" + idDanhGiaDv + " ]";
    }
    
}
