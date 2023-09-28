/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.service.impl;

import com.hmh.pojo.DanhGiaBs;
import com.hmh.repository.ThongKeDanhGiaBSRepository;
import com.hmh.service.ThongKeDanhGiaBSService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Service;

/**
 *
 * @author Asus
 */
@Service
public class ThongKeDanhGiaBSServiceImpl implements ThongKeDanhGiaBSService {

    @Autowired
    private ThongKeDanhGiaBSRepository thongKeDanhGiaBSRepository;

    @Override
    public Long thongKeDanhGiaBSByIDTK(int luotDanhgia, int idBs) {
        return this.thongKeDanhGiaBSRepository.thongKeDanhGiaBSByIDTK(luotDanhgia, idBs);
    }

    @Override
    public List<DanhGiaBs> getDSDanhGiaBSByIdTK(int idBs) {
        return this.thongKeDanhGiaBSRepository.getDSDanhGiaBSByIdTK(idBs);
    }

}
