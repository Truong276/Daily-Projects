package org.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SalaryController {

    // Hiển thị trang nhập dữ liệu
    @GetMapping("/")
    public String showForm() {
        return "index";
    }

    // Xử lý tính lương
    @PostMapping("/calculate")
    public String calculateSalary(
            @RequestParam("shiftHours") double[] shiftHours,
            @RequestParam("hourlyRate") double hourlyRate,
            Model model) {

        // Tính tổng số giờ
        double totalHours = 0;

        for (double hours : shiftHours) {
            totalHours += hours;
        }

        // Tính tổng lương
        double totalSalary = totalHours * hourlyRate;

        // Đưa dữ liệu sang View
        model.addAttribute("hourlyRate", hourlyRate);
        model.addAttribute("totalHours", totalHours);
        model.addAttribute("totalSalary", totalSalary);

        return "result";
    }
}
