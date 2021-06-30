package model.repository;

import model.bean.Product;

import java.util.List;

public interface ProductRepository {

    List<Product> showList();

    void save(Product product);

    void removeById(int id);

    Product findByName(String name);
}
