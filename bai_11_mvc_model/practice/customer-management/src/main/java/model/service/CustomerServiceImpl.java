package model.service;

import model.bean.Customer;
import model.repository.CustomerRepository;
import model.repository.CustomerRepositoryImpl;

import java.util.List;

public class CustomerServiceImpl implements CustomerService {

    private CustomerRepository repository = new CustomerRepositoryImpl();

    @Override
    public List<Customer> findAll() {
        return repository.findAll();
    }

    @Override
    public void save(Customer customer) {
        repository.save(customer);
    }

    @Override
    public Customer findById(int id) {
        return repository.findById(id);
    }

    @Override
    public void update(int id, Customer customer) {
        repository.update(id, customer);
    }

    @Override
    public void remove(int id) {
        repository.remove(id);
    }
}
