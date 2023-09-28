/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.service.impl;

import com.hmh.pojo.DanhGiaBs;
import com.hmh.pojo.TaiKhoan;
import com.hmh.repository.DanhGiaRepository;
import com.hmh.service.DanhGiaService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Asus
 */
@Service
public class DanhGiaServiceImpl implements DanhGiaService {

    @Autowired
    private DanhGiaRepository danhGiaRepository;

    @Override
    public boolean themDanhGiaBS(DanhGiaBs danhGiaBs, TaiKhoan tk, TaiKhoan bs, int hd) {
        return this.danhGiaRepository.themDanhGiaBS(danhGiaBs, tk, bs, hd);
    }

    @Override
    public DanhGiaBs getDanhGiaBSByIdHD(int idHd) {
        return this.danhGiaRepository.getDanhGiaBSByIdHD(idHd);
    }

    @Override
    public List<TaiKhoan> getDSBacSiByDanhGiaBS() {
        return this.danhGiaRepository.getDSBacSiByDanhGiaBS();
    }

}
