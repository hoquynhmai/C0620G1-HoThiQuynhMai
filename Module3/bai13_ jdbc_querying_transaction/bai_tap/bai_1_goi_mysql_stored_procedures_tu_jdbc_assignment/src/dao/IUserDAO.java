package dao;

import model.User;

import java.util.List;

public interface IUserDAO {
    List<User> selectAllUsers();

    void insertUser(User user);
}
