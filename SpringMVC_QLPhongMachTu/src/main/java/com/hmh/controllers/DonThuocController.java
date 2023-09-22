/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.controllers;

import com.hmh.pojo.ChiTietThuoc;
import com.hmh.pojo.HoaDon;
import com.hmh.pojo.PhieuDangKy;
import com.hmh.pojo.TaiKhoan;
import com.hmh.repository.LichSuKhamRepository;
import com.hmh.service.LichSuKhamService;
import com.hmh.service.TaiKhoanService;
import com.hmh.service.ThanhToanService;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Asus
 */
@Controller
public class DonThuocController {

    @Autowired
    private TaiKhoanService taiKhoanService;

    @Autowired
    private LichSuKhamService lichSuKhamService;

    @Autowired
    private ThanhToanService thanhToanService;

    @GetMapping("/benhnhan/donthuoc")
    public String lichsuthanhtoan(Model model, Authentication authentication) {

        model.addAttribute("user", new TaiKhoan());

        UserDetails user = this.taiKhoanService.loadUserByUsername(authentication.getName());

        TaiKhoan u = this.taiKhoanService.getTaiKhoanByUsername(user.getUsername());

//        model.addAttribute("lsdonthuoc", this.lichSuKhamService.getChiTietThuocByBenhNhanId(u));
        model.addAttribute("user", u);

        return "donthuoc";
    }

    @GetMapping("/benhnhan/donthuoc/{id}")
    public String lichsuthanhtoanid(Model model, Authentication authentication, @PathVariable(value = "id") int id) {

        model.addAttribute("lsdonthuoc", this.lichSuKhamService.getChiTietThuocByHoaDonId(id));

        return "donthuoc";
    }

    @GetMapping("/DonThuoc-PDF")
    public void generatePDF(HttpServletResponse response,
            @RequestParam("id") int id,
            @RequestParam Map<String, String> params) throws IOException, DocumentException {

        List<ChiTietThuoc> danhSachThuoc = lichSuKhamService.getChiTietThuocByHoaDonId(id);

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "inline; filename=DonThuoc.pdf");

        OutputStream out = response.getOutputStream();

        Document document = new Document();
        PdfWriter.getInstance(document, out);

        document.open();
//            document.add(new Paragraph("TOA THUOC PHONG MACH HEALTH COUCH\n"
//                    + "\nID Phieu Dang Ky: " + phieuDangKy.getIdPhieudk()
//                    + "\nTen benh nhan: " + phieuDangKy.getIdBn().getHoTen()
//                    + "\nNgay kham: " + phieuDangKy.getChonNgaykham()
//                    + "\nKet luan: " + phieuDangKy.getIdPk().getKetLuan())
//            );
        for (ChiTietThuoc t : danhSachThuoc) {
            document.add(new Paragraph("\n---------------------------------------------"));
            document.add(new Paragraph("Ten thuoc: " + t.getIdThuoc().getTenThuoc()));
            document.add(new Paragraph("So luong: " + t.getSoLuongSd()));
            document.add(new Paragraph("Huong dan su dung: " + t.getHdsd()));
//                document.add(new Paragraph("---------------------------------------------"));
        }
        document.close();

        out.flush();
        out.close();
    }
}
