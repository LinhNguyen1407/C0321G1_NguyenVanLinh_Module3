package model.repository;

import model.bean.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepositoryImpl implements ProductRepository {

    private static Map<Integer, Product> productList;

    static {
        productList = new HashMap<>();
        productList.put(1, new Product(1, "iphone1", 10, "iphone1", "apple" ));
        productList.put(2, new Product(2, "iphone2", 11, "iphone2", "apple" ));
        productList.put(3, new Product(3, "iphone3", 12, "iphone3", "apple" ));
        productList.put(4, new Product(4, "iphone4", 13, "iphone4", "apple" ));
        productList.put(5, new Product(5, "iphone5", 14, "iphone5", "apple" ));
    }

    @Override
    public List<Product> showList() {
        return new ArrayList<>(productList.values());
    }

    @Override
    public void save(Product product) {
        productList.put(product.getId(), product);
    }

    @Override
    public void removeById(int id) {
        productList.remove(id);
    }

    @Override
    public Product findByName(String name) {
        List<Product> list = new ArrayList<>(productList.values());
        for (Product product: list) {
            if (product.getName().equals(name)) {
                return product;
            }
        }
        return null;
    }
}
