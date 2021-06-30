package controller;

import model.bean.Product;
import model.service.ProductService;
import model.service.ProductServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductServlet", urlPatterns = {"", "/products"})
public class ProductServlet extends HttpServlet {

    private ProductService productService = new ProductServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
            case "edit":
                saveProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            default:
                showProductList(request, response);
        }
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        productService.removeById(id);

        response.sendRedirect("/products");
    }

    private void saveProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        String description = request.getParameter("description");
        String producer = request.getParameter("producer");

        Product product = new Product(id, name, price, description, producer);
        productService.save(product);

        showProductList(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                showCreateProduct(request, response);
                break;
            case "edit":
                showEditProduct(request, response);
                break;
            case "delete":
                showDeleteProduct(request, response);
                break;
            case "view":
                viewProduct(request, response);
                break;
            default:
                showProductList(request, response);
        }
    }

    private void viewProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        request.setAttribute("productView", productService.findByName(name));

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/product/view.jsp");
        requestDispatcher.forward(request, response);
    }

    private void showDeleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        request.setAttribute("productDel", productService.findByName(name));

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/product/delete.jsp");
        requestDispatcher.forward(request, response);
    }

    private void showEditProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));

        request.setAttribute("id", id);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/product/edit.jsp");
        requestDispatcher.forward(request, response);
    }

    private void showCreateProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("/product/create.jsp");
    }

    private void showProductList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("productList", productService.showList());

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/product/list.jsp");
        requestDispatcher.forward(request, response);
    }
}
