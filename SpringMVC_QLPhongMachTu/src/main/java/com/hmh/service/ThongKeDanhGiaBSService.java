/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.service;

import com.hmh.pojo.DanhGiaBs;
import java.util.List;

/**
 *
 * @author Asus
 */
public interface ThongKeDanhGiaBSService {

    Long thongKeDanhGiaBSByIDTK(int luotDanhgia, int idBs);
    
    List<DanhGiaBs> getDSDanhGiaBSByIdTK(int idBs);
}
