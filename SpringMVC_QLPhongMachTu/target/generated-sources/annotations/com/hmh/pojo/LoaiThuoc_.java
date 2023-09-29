package com.hmh.pojo;

import com.hmh.pojo.Thuoc;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-09-29T22:56:20")
@StaticMetamodel(LoaiThuoc.class)
public class LoaiThuoc_ { 

    public static volatile SingularAttribute<LoaiThuoc, Integer> idloaiThuoc;
    public static volatile SingularAttribute<LoaiThuoc, String> tenLoaiThuoc;
    public static volatile SetAttribute<LoaiThuoc, Thuoc> thuocSet;

}