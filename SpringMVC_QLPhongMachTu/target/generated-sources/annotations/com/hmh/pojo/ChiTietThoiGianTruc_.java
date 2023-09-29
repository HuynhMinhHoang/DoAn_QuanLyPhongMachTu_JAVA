package com.hmh.pojo;

import com.hmh.pojo.TaiKhoan;
import com.hmh.pojo.ThoiGianTruc;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-09-29T22:56:20")
@StaticMetamodel(ChiTietThoiGianTruc.class)
public class ChiTietThoiGianTruc_ { 

    public static volatile SingularAttribute<ChiTietThoiGianTruc, Date> ngayDkyTruc;
    public static volatile SingularAttribute<ChiTietThoiGianTruc, TaiKhoan> idTk;
    public static volatile SingularAttribute<ChiTietThoiGianTruc, Short> trangThaiTruc;
    public static volatile SingularAttribute<ChiTietThoiGianTruc, ThoiGianTruc> idTgTruc;
    public static volatile SingularAttribute<ChiTietThoiGianTruc, Integer> idChiTietTgTruc;

}