package model.repository;

import model.bean.User;

import java.sql.SQLException;
import java.util.List;

public interface UserRepository {
    void insertUser(User user);

    User selectUser(int id);

    List<User> selectUserByCountry(String country);

    List<User> selectAllUsers();

    List<User> selectAllUsersAfSort();

    void deleteUser(int id) throws SQLException;

    void updateUser(User user) throws SQLException;

    User getUserById(int id);

    void insertUserStore(User user);

    void addUserTransaction(User user, int[] permision);

    void insertUpdateWithoutTransaction();

    void insertUpdateUseTransaction();
}
