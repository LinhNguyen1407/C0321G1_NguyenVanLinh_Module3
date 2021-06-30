package model.service;

import model.bean.User;
import model.repository.UserRepository;
import model.repository.UserRepositoryImpl;

import java.sql.SQLException;
import java.util.List;

public class UserServiceImpl implements UserService {

    private UserRepository repository = new UserRepositoryImpl();

    @Override
    public void insertUser(User user) throws SQLException {
        repository.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return repository.selectUser(id);
    }

    @Override
    public List<User> selectUserByCountry(String country) {
        return repository.selectUserByCountry(country);
    }

    @Override
    public List<User> selectAllUsers() {
        return repository.selectAllUsers();
    }

    @Override
    public void deleteUser(int id) throws SQLException {
        repository.deleteUser(id);
    }

    @Override
    public void updateUser(User user) throws SQLException {
        repository.updateUser(user);
    }
}
