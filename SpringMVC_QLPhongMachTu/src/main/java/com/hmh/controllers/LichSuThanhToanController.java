/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.controllers;

import com.hmh.pojo.HoaDon;
import com.hmh.pojo.TaiKhoan;
import com.hmh.repository.LichSuKhamRepository;
import com.hmh.service.DanhGiaService;
import com.hmh.service.LichSuKhamService;
import com.hmh.service.TaiKhoanService;
import com.hmh.service.ThanhToanService;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Asus
 */
@Controller
public class LichSuThanhToanController {

    @Autowired
    private LichSuKhamRepository lichSuKhamRepository;

    @Autowired
    private TaiKhoanService taiKhoanService;

    @Autowired
    private LichSuKhamService lichSuKhamService;

    @Autowired
    private DanhGiaService danhGiaService;

    @Autowired
    private ThanhToanService thanhToanService;

    @GetMapping("/benhnhan/lichsuthanhtoan")
    public String lichsuthanhtoan(Model model, Authentication authentication) {

        model.addAttribute("user", new TaiKhoan());

        UserDetails user = this.taiKhoanService.loadUserByUsername(authentication.getName());

        TaiKhoan u = this.taiKhoanService.getTaiKhoanByUsername(user.getUsername());

        model.addAttribute("lsthanhtoan", this.thanhToanService.getHoaDonByBenhNhanId(u));

        model.addAttribute("user", u);

        List<HoaDon> lstThanhToan = this.thanhToanService.getHoaDonByBenhNhanId(u);

        // Định dạng số tiền trước khi đặt vào model
        DecimalFormat decimalFormat = new DecimalFormat("#,### vnđ");
        List<String> formattedAmounts = new ArrayList<>();
        for (HoaDon hoaDon : lstThanhToan) {
            String formattedAmount = decimalFormat.format(hoaDon.getTienThuoc());
            formattedAmounts.add(formattedAmount);
        }

        model.addAttribute("formattedAmounts", formattedAmounts);

        return "lichsuthanhtoan";

    }
}
