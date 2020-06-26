package cn.itcast.service.impl;

import cn.hutool.db.Db;
import cn.hutool.db.Entity;
import cn.hutool.db.Page;
import cn.hutool.db.PageResult;
import cn.hutool.log.Log;
import cn.hutool.log.LogFactory;
import cn.itcast.domain.LoginUser;
import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import com.mysql.jdbc.StringUtils;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.Map;
import java.util.Set;

@Service("userService")
public class UserServiceImpl implements UserService {
    private final static Log log = LogFactory.get();


    @Override
    public LoginUser login(LoginUser loginUser) {
        log.debug("LoginUser---> {}", loginUser);
        Entity entity = null;
        try {
            entity = Db.use().get(Entity.create("login_user").set("username", loginUser.getUsername()).set("password", loginUser.getPassword()));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return entity == null ? null : entity.toBean(LoginUser.class);
    }

    @Override
    public void add(User user) {
        try {
            Db.use().insert(Entity.create().parseBean(user));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(String id) {
        try {
            Db.use().del(Entity.create("user").set("id", id));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public User findById(String id) {
        Entity entity = null;
        try {
            entity = Db.use().get(Entity.create("user").set("id", id));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return entity != null ? entity.toBean(User.class) : null;
    }

    @Override
    public void update(User user) {
        try {
            Db.use().update(Entity.parse(user), Entity.create("user").set("id", user.getId()));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delSelected(String[] uids) {
        for (String uid : uids) {
            this.delete(uid);
        }
    }

    @Override
    public PageResult<Entity> findByPage(int currentPage, int rows, Map<String,String> map) {
        PageResult<Entity> result = null;
        Set<String> keys = map.keySet();
        // 构造查询条件
        Entity entity = Entity.create("user");
        for (String key : keys) {
            String value = map.get(key);
            if (!StringUtils.isNullOrEmpty(value)) {
                entity.set(key, "like %"+value+"%");
            }
        }
        try {
            result = Db.use().page(entity, new Page(currentPage, rows));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
