package model.repository;

import model.bean.User;

import java.sql.SQLException;
import java.util.List;

public interface UserRepository {
    void insertUser(User user);

    User selectUser(int id);

    List<User> selectUserByCountry(String country);

    List<User> selectAllUsers();

    void deleteUser(int id) throws SQLException;

    void updateUser(User user) throws SQLException;
}
