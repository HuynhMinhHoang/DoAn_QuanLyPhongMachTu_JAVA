/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.controllers;

import com.hmh.pojo.DanhGiaBs;
import com.hmh.pojo.DichVu;
import com.hmh.pojo.HoaDon;
import com.hmh.pojo.TaiKhoan;
import com.hmh.service.DanhGiaService;
import com.hmh.service.TaiKhoanService;
import com.hmh.service.ThanhToanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Asus
 */
@Controller
public class DanhGiaController {

    @Autowired
    private DanhGiaService danhGiaService;

    @Autowired
    private TaiKhoanService taiKhoanService;

    @Autowired
    private ThanhToanService thanhToanService;

    @GetMapping("/benhnhan/danhgiaBS")
    public String danhgiaBS(Model model) {
        return "danhgiaBS";
    }

    @GetMapping("/benhnhan/danhgiaBS/{id}")
    public String danhgiaIDBS(Model model, @PathVariable(value = "id") int id) {

        model.addAttribute("getDanhGiaBSByIdHD", this.danhGiaService.getDanhGiaBSByIdHD(id));
        
        model.addAttribute("addDGBS", new DanhGiaBs());

        model.addAttribute("getHD", this.thanhToanService.getHoaDonById(id));

        return "danhgiaBS";
    }

    @PostMapping("/benhnhan/danhgiaBS/{id}")
    public String adddanhgiaIDBS(Model model, @ModelAttribute(value = "addDGBS") DanhGiaBs dgbs,
            Authentication authentication, @PathVariable(value = "id") int id,
            @RequestParam("saoDanhGia") int saoDanhGia) {

        UserDetails user = taiKhoanService.loadUserByUsername(authentication.getName());

        TaiKhoan u = taiKhoanService.getTaiKhoan(user.getUsername()).get(0);

        HoaDon hd = this.thanhToanService.getHoaDonById(id);

        TaiKhoan idBS = hd.getIdPhieudky().getIdBs();

        if (dgbs.getIdDanhGiaBs() == null) {
            dgbs.setLuotDanhgia(saoDanhGia);
            dgbs.setHdDanhgia(hd);

            model.addAttribute("addDGBS", this.danhGiaService.themDanhGiaBS(dgbs, u, idBS, id));

            return "redirect:/benhnhan/lichsuthanhtoan";
        }

        return "danhgiaBS";
    }

    @GetMapping("/benhnhan/danhgiaDV")
    public String danhgiaDV(Model model) {
        return "danhgiaDV";
    }
}
