/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.controllers;

import com.hmh.service.DanhGiaService;
import com.hmh.service.ThongKeDanhGiaBSService;
import com.hmh.service.ThongKeDoanhThuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Asus
 */
@Controller
public class ThongKeDanhGiaBSController {

    @Autowired
    private DanhGiaService danhGiaService;

    @Autowired
    private ThongKeDanhGiaBSService thongKeDanhGiaBSService;

    @GetMapping("/admin/thongkedanhgiaBS")
    public String thongkedanhgiaBS(Model model) {
        model.addAttribute("dsBS", this.danhGiaService.getDSBacSiByDanhGiaBS());
        return "thongkedanhgiaBS";
    }

    @PostMapping("/admin/thongkedanhgiaBS")
    public String thongkedanhgiaBSByIdTK(Model model, @RequestParam("idTk") int idTk) {
        model.addAttribute("dsBS", this.danhGiaService.getDSBacSiByDanhGiaBS());

        model.addAttribute("dsBSByIDTK", this.thongKeDanhGiaBSService.getDSDanhGiaBSByIdTK(idTk));

        model.addAttribute("mot", this.thongKeDanhGiaBSService.thongKeDanhGiaBSByIDTK(1, idTk));
        model.addAttribute("hai", this.thongKeDanhGiaBSService.thongKeDanhGiaBSByIDTK(2, idTk));
        model.addAttribute("ba", this.thongKeDanhGiaBSService.thongKeDanhGiaBSByIDTK(3, idTk));
        model.addAttribute("bon", this.thongKeDanhGiaBSService.thongKeDanhGiaBSByIDTK(4, idTk));
        model.addAttribute("nam", this.thongKeDanhGiaBSService.thongKeDanhGiaBSByIDTK(5, idTk));

        return "thongkedanhgiaBS";
    }
}
