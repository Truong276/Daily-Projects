package org.example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/display-discount")
public class DiscountServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy dữ liệu từ form
        String productDescription =
                request.getParameter("productDescription");

        double listPrice =
                Double.parseDouble(request.getParameter("listPrice"));

        double discountPercent =
                Double.parseDouble(request.getParameter("discountPercent"));

        // Tính tiền chiết khấu
        double discountAmount =
                listPrice * discountPercent * 0.01;

        // Tính giá sau khi chiết khấu
        double discountPrice =
                listPrice - discountAmount;

        // Gửi dữ liệu sang JSP
        request.setAttribute("productDescription", productDescription);
        request.setAttribute("listPrice", listPrice);
        request.setAttribute("discountPercent", discountPercent);
        request.setAttribute("discountAmount", discountAmount);
        request.setAttribute("discountPrice", discountPrice);

        // Chuyển sang trang kết quả
        request.getRequestDispatcher("display-discount.jsp")
                .forward(request, response);
    }
}
