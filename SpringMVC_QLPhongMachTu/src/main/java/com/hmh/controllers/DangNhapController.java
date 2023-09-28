/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hmh.controllers;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.hmh.pojo.TaiKhoan;
import com.hmh.share.constants.Constants;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.http.client.ClientProtocolException;
//import org.apache.http.client.fluent.Request;
//import org.apache.http.client.fluent.Form;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Asus
 */
@Controller
public class DangNhapController {

    @RequestMapping("/dangnhap")
    public String dangnhap(Model model, Authentication authentication,
            HttpServletRequest request, HttpServletResponse response) throws IOException {

        String code = request.getParameter("code");
        if (code != null) {
            // Sử dụng mã code để lấy thông tin người dùng từ Google
//            String accessToken = getToken(code);
//            TaiKhoan user = getUserInfo(accessToken);

            // Thực hiện xử lý với thông tin người dùng, ví dụ: lưu vào cơ sở dữ liệu
            // ...
            // Redirect hoặc hiển thị view tùy thuộc vào kết quả xử lý
            return "redirect:/"; // Thay thế bằng URL hoặc view hiển thị thông tin người dùng
        }

        return "dangnhap";
    }

//    public static String getToken(String code) throws ClientProtocolException, IOException {
//        // call api to get token
//        String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
//                .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
//                        .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
//                        .add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
//                        .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
//                .execute().returnContent().asString();
//
//        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
//        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
//        return accessToken;
//    }
//
//    public static TaiKhoan getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
//        String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
//        String response = Request.Get(link).execute().returnContent().asString();
//
//        TaiKhoan tk = new Gson().fromJson(response, TaiKhoan.class);
//
//        return tk;
//    }
}
