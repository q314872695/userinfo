package cn.itcast.dao;


import cn.itcast.domain.User;

import java.util.List;

public interface UserDao {
    List<User> findAll();

    User findUserByUsernameAndPassword(String username, String password);

    void saveUser(User user);

    void deleteUser(int id);

    User findUserById(int id);

    void updateUser(User user);
}
