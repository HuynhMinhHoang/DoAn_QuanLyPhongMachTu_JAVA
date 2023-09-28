/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.formatter;

import com.hmh.pojo.DonviThuoc;
import com.hmh.pojo.LoaiThanhToan;
import com.hmh.pojo.LoaiThanhToan_;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Asus
 */
public class LoaiThanhToanFormatter implements Formatter<LoaiThanhToan> {

    @Override
    public String print(LoaiThanhToan ltt, Locale locale) {
        return String.valueOf(ltt.getIdLoaiThanhToan());
    }

    @Override
    public LoaiThanhToan parse(String id, Locale locale) throws ParseException {
        return new LoaiThanhToan(Integer.parseInt(id));
    }
}
