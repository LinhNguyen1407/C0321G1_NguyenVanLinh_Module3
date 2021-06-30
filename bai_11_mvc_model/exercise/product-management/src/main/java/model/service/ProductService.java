package model.service;

import model.bean.Product;

import java.util.List;

public interface ProductService {

    List<Product> showList();

    void save(Product product);

    void removeById(int id);

    Product findByName(String name);
}
