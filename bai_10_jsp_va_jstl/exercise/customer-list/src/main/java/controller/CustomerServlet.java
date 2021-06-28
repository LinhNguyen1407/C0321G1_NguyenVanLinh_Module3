package controller;

import model.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = {"", "/customer"})
public class CustomerServlet extends HttpServlet {

    private static List<Customer> customerList;

    static {
        customerList = new ArrayList<>();
        customerList.add(new Customer("Nguyễn Văn A", "2000-10-02", "Đà Nẵng", "img_1.jpg"));
        customerList.add(new Customer("Nguyễn Văn B", "1999-02-11", "Hà Nội", "img_2.jpg"));
        customerList.add(new Customer("Nguyễn Văn C", "2002-08-02", "Quảng Nam", "img_3.jpg"));
        customerList.add(new Customer("Nguyễn Văn D", "2001-10-02", "Huế", "img_4.jpg"));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("customerList", customerList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/customer/list.jsp");
        requestDispatcher.forward(request, response);
    }
}
