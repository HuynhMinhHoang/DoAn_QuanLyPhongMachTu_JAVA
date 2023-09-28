/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.pojo;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.codehaus.jackson.annotate.JsonIgnore;

/**
 *
 * @author Asus
 */
@Entity
@Table(name = "loai_thanh_toan")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "LoaiThanhToan.findAll", query = "SELECT l FROM LoaiThanhToan l"),
    @NamedQuery(name = "LoaiThanhToan.findByIdLoaiThanhToan", query = "SELECT l FROM LoaiThanhToan l WHERE l.idLoaiThanhToan = :idLoaiThanhToan"),
    @NamedQuery(name = "LoaiThanhToan.findByTenLoaiThanhToan", query = "SELECT l FROM LoaiThanhToan l WHERE l.tenLoaiThanhToan = :tenLoaiThanhToan")})
public class LoaiThanhToan implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_loai_thanh_toan")
    private Integer idLoaiThanhToan;
    @Size(max = 500)
    @Column(name = "ten_loai_thanh_toan")
    private String tenLoaiThanhToan;
    @OneToMany(mappedBy = "loaiThanhToan")
    private Set<HoaDon> hoaDonSet;

    public LoaiThanhToan() {
    }

    public LoaiThanhToan(Integer idLoaiThanhToan) {
        this.idLoaiThanhToan = idLoaiThanhToan;
    }

    public Integer getIdLoaiThanhToan() {
        return idLoaiThanhToan;
    }

    public void setIdLoaiThanhToan(Integer idLoaiThanhToan) {
        this.idLoaiThanhToan = idLoaiThanhToan;
    }

    public String getTenLoaiThanhToan() {
        return tenLoaiThanhToan;
    }

    public void setTenLoaiThanhToan(String tenLoaiThanhToan) {
        this.tenLoaiThanhToan = tenLoaiThanhToan;
    }

    @XmlTransient
    @JsonIgnore
    public Set<HoaDon> getHoaDonSet() {
        return hoaDonSet;
    }

    public void setHoaDonSet(Set<HoaDon> hoaDonSet) {
        this.hoaDonSet = hoaDonSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idLoaiThanhToan != null ? idLoaiThanhToan.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof LoaiThanhToan)) {
            return false;
        }
        LoaiThanhToan other = (LoaiThanhToan) object;
        if ((this.idLoaiThanhToan == null && other.idLoaiThanhToan != null) || (this.idLoaiThanhToan != null && !this.idLoaiThanhToan.equals(other.idLoaiThanhToan))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hmh.pojo.LoaiThanhToan[ idLoaiThanhToan=" + idLoaiThanhToan + " ]";
    }
    
}
