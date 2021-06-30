package model.service;

import model.bean.Product;
import model.repository.ProductRepository;
import model.repository.ProductRepositoryImpl;

import java.util.List;

public class ProductServiceImpl implements ProductService{

    private ProductRepository repository = new ProductRepositoryImpl();

    @Override
    public List<Product> showList() {
        return repository.showList();
    }

    @Override
    public void save(Product product) {
        repository.save(product);
    }

    @Override
    public void removeById(int id) {
        repository.removeById(id);
    }

    @Override
    public Product findByName(String name) {
        return repository.findByName(name);
    }
}
