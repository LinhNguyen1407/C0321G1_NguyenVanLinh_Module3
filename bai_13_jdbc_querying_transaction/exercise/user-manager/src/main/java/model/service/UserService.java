package model.service;

import model.bean.User;

import java.sql.SQLException;
import java.util.List;

public interface UserService {

    void insertUser(User user) throws SQLException;

    User selectUser(int id);

    List<User> selectUserByCountry(String country);

    List<User> selectAllUsers();

    List<User> selectAllUsersAfSort();

    void deleteUser(int id) throws SQLException;

    void updateUser(User user) throws SQLException;

    User getUserById(int id);

    void insertUserStore(User user) throws SQLException;

    void addUserTransaction(User user, int[] permision);

    void insertUpdateWithoutTransaction();

    void insertUpdateUseTransaction();

    List<User> selectAllUsersSP();

    void deleteUserSP(int id) throws SQLException;

    void updateUseSP(User user) throws SQLException;
}
