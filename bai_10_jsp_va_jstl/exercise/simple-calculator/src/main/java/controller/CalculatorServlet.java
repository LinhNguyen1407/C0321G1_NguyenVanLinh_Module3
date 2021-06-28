package controller;

import model.Calculator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculator/calculate")
public class CalculatorServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double fOper = Double.parseDouble(request.getParameter("fOper"));
        double sOper = Double.parseDouble(request.getParameter("sOper"));
        String operator = request.getParameter("operator");
        try {
            double result = Calculator.calculate(fOper, sOper, operator);

            request.setAttribute("fOper", fOper);
            request.setAttribute("sOper", sOper);
            request.setAttribute("operator", operator);
            request.setAttribute("result", " = " + result);

        } catch (Exception ex) {
            request.setAttribute("fault", ex.getMessage());
        } finally {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/calculator/calculate.jsp");
            requestDispatcher.forward(request, response);
        }
    }
}
