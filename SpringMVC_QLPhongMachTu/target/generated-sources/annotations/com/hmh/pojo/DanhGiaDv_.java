package com.hmh.pojo;

import com.hmh.pojo.DichVu;
import com.hmh.pojo.HoaDon;
import com.hmh.pojo.TaiKhoan;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-09-28T13:27:54")
@StaticMetamodel(DanhGiaDv.class)
public class DanhGiaDv_ { 

    public static volatile SingularAttribute<DanhGiaDv, Integer> idDanhGiaDv;
    public static volatile SingularAttribute<DanhGiaDv, HoaDon> hdDanhgia;
    public static volatile SingularAttribute<DanhGiaDv, DichVu> dvDanhgia;
    public static volatile SingularAttribute<DanhGiaDv, Integer> luotDanhgia;
    public static volatile SingularAttribute<DanhGiaDv, String> noidungDanhgia;
    public static volatile SingularAttribute<DanhGiaDv, TaiKhoan> tkDanhgia;

}