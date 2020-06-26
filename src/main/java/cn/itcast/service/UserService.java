package cn.itcast.service;

import cn.hutool.db.Entity;
import cn.hutool.db.PageResult;
import cn.itcast.domain.LoginUser;
import cn.itcast.domain.User;

import java.util.Map;

public interface UserService {

    LoginUser login(LoginUser loginUser);

    void add(User user);

    /**
     * 根据id删除user
     * @param id
     */
    void delete(String id);

    /**
     * 根据id查询
     * @param id
     * @return
     */
    User findById(String id);

    /**
     * 修改用户信息
     * @param user
     */
    void update(User user);

    /**
     * 批量删除
     * @param uids
     */
    void delSelected(String[] uids);

    /**
     * 分页查询
     * @param currentPage
     * @param rows
     * @return
     */
    PageResult<Entity> findByPage(int currentPage, int rows,Map<String,String> map);
}
