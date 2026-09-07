package org.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CurrencyController {

    // Hiển thị trang chủ
    @GetMapping("/")
    public String home() {
        return "index";
    }

    // Xử lý chuyển đổi USD -> VNĐ
    @PostMapping("/convert")
    public String convert(
            @RequestParam("rate") double rate,
            @RequestParam("usd") double usd,
            Model model) {

        double vnd = rate * usd;

        model.addAttribute("rate", rate);
        model.addAttribute("usd", usd);
        model.addAttribute("vnd", vnd);

        return "result";
    }
}

