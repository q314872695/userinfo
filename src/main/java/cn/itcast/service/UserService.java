package cn.itcast.service;

import cn.itcast.domain.PageBean;
import cn.itcast.domain.User;

import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public interface UserService {
    /**
     * 查询所有用户信息
     * @return
     */
    List<User> findAll();

    User login(User user);

    void add(User user);

    /**
     * 根据id删除user
     * @param id
     */
    void deleteUser(String id);

    /**
     * 根据id查询
     * @param id
     * @return
     */
    User findUserById(String id);

    /**
     * 修改用户信息
     * @param user
     */
    void updateUser(User user);

    /**
     * 批量删除
     * @param uids
     */
    void delSelectedUser(String[] uids);

    /**
     * 分页查询
     * @param currentPage
     * @param rows
     * @return
     */
    PageBean<User> findUserByPage(String currentPage, String rows);
}
