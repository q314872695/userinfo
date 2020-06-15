package cn.itcast.dao.impl;

import cn.itcast.dao.UserDao;
import cn.itcast.domain.User;
import cn.itcast.util.JDBCUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

    @Autowired
    private JdbcTemplate template;

    @Override
    public List<User> findAll() {
        String sql = "select * from user";
        List<User> users = template.query(sql, new BeanPropertyRowMapper<User>(User.class));
        return users;
    }

    @Override
    public User findUserByUsernameAndPassword(String username, String password) {
        try {
            String sql = "select * from user where username = ? and password = ?";
            User user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), username, password);
            return user;
        } catch (EmptyResultDataAccessException e) {
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public void saveUser(User user) {
        template.update("insert into user values (null,?,?,?,?,?,?,null,null)",
                user.getName(),
                user.getGender(),
                user.getAge(),
                user.getAddress(),
                user.getQq(),
                user.getEmail());
    }

    @Override
    public void deleteUser(int id) {
        template.update("delete from user where id=?", id);
    }

    @Override
    public User findUserById(int id) {
        return template.queryForObject("select * from user where id=?", new BeanPropertyRowMapper<User>(User.class), id);
    }

    @Override
    public void updateUser(User user) {
        template.update("update user set name=?,gender=?,age=?,address=?,qq=?,email=? where id=?",
                user.getName(),
                user.getGender(),
                user.getAge(),
                user.getAddress(),
                user.getQq(),
                user.getEmail(),
                user.getId());
    }
}
