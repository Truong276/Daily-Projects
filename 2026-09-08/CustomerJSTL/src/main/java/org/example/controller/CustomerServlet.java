package org.example.controller;



import org.example.model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/customers")
public class CustomerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        List<Customer> customers = new ArrayList<>();

        customers.add(new Customer(
                1,
                "Nguyễn Văn An",
                "an@gmail.com",
                "Hà Nội"
        ));

        customers.add(new Customer(
                2,
                "Trần Thị Bình",
                "binh@gmail.com",
                "Hồ Chí Minh"
        ));

        customers.add(new Customer(
                3,
                "Lê Văn Cường",
                "cuong@gmail.com",
                "Đà Nẵng"
        ));

        customers.add(new Customer(
                4,
                "Phạm Thị Dung",
                "dung@gmail.com",
                "Hải Phòng"
        ));

        request.setAttribute("customers", customers);

        request.getRequestDispatcher("/index.jsp")
                .forward(request, response);
    }
}
