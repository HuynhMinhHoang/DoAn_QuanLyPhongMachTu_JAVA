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
@Table(name = "danh_gia_bs")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DanhGiaBs.findAll", query = "SELECT d FROM DanhGiaBs d"),
    @NamedQuery(name = "DanhGiaBs.findByIdDanhGiaBs", query = "SELECT d FROM DanhGiaBs d WHERE d.idDanhGiaBs = :idDanhGiaBs"),
    @NamedQuery(name = "DanhGiaBs.findByLuotDanhgia", query = "SELECT d FROM DanhGiaBs d WHERE d.luotDanhgia = :luotDanhgia"),
    @NamedQuery(name = "DanhGiaBs.findByNoidungDanhgia", query = "SELECT d FROM DanhGiaBs d WHERE d.noidungDanhgia = :noidungDanhgia")})
public class DanhGiaBs implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_danh_gia_bs")
    private Integer idDanhGiaBs;
    @Column(name = "luot_danhgia")
    private Integer luotDanhgia;
    @Size(max = 500)
    @Column(name = "noidung_danhgia")
    private String noidungDanhgia;
    @JoinColumn(name = "hd_danhgia", referencedColumnName = "id_hoadon")
    @ManyToOne
    private HoaDon hdDanhgia;
    @JoinColumn(name = "tk_danhgia", referencedColumnName = "id_tk")
    @ManyToOne
    private TaiKhoan tkDanhgia;
    @JoinColumn(name = "bs_danhgia", referencedColumnName = "id_tk")
    @ManyToOne
    private TaiKhoan bsDanhgia;

    public DanhGiaBs() {
    }

    public DanhGiaBs(Integer idDanhGiaBs) {
        this.idDanhGiaBs = idDanhGiaBs;
    }

    public Integer getIdDanhGiaBs() {
        return idDanhGiaBs;
    }

    public void setIdDanhGiaBs(Integer idDanhGiaBs) {
        this.idDanhGiaBs = idDanhGiaBs;
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

    public TaiKhoan getBsDanhgia() {
        return bsDanhgia;
    }

    public void setBsDanhgia(TaiKhoan bsDanhgia) {
        this.bsDanhgia = bsDanhgia;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDanhGiaBs != null ? idDanhGiaBs.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DanhGiaBs)) {
            return false;
        }
        DanhGiaBs other = (DanhGiaBs) object;
        if ((this.idDanhGiaBs == null && other.idDanhGiaBs != null) || (this.idDanhGiaBs != null && !this.idDanhGiaBs.equals(other.idDanhGiaBs))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hmh.pojo.DanhGiaBs[ idDanhGiaBs=" + idDanhGiaBs + " ]";
    }
    
}
