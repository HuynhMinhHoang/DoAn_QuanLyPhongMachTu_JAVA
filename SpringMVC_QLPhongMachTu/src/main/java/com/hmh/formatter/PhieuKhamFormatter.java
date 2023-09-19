/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.formatter;

import com.hmh.pojo.PhieuKhamBenh;
import java.text.ParseException;
import java.util.Locale;

import org.springframework.format.Formatter;

/**
 *
 * @author LENOVO
 */
public class PhieuKhamFormatter implements  Formatter<PhieuKhamBenh>{

    @Override
    public String print(PhieuKhamBenh pk, Locale locale) {
         return  String.valueOf(pk.getIdPhieukham());
    }

    @Override
    public PhieuKhamBenh parse(String text, Locale locale) throws ParseException {
        return new PhieuKhamBenh(Integer.parseInt(text));
    }
    
    

   
}
