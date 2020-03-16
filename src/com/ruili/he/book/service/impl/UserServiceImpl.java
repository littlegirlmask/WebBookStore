package com.ruili.he.book.service.impl;

import com.ruili.he.book.dao.UserDao;
import com.ruili.he.book.dao.impl.UserDaoImpl;
import com.ruili.he.book.pojo.User;
import com.ruili.he.book.service.UserService;

public class UserServiceImpl implements UserService {

    private UserDao userDao = new UserDaoImpl();

    @Override
    public void registUser(User user) {
        userDao.saveUser(user);
    }

    @Override
    public User login(User user) {
        /**
         * 我们的登录，只是需要查询数据库即可！！！
         */
        return userDao.queryUserByUsernameAndPassword(user.getUsername(), user.getPassword());
    }

    @Override
    public boolean existsUsername(String username) {

        if (userDao.queryUserByUsername(username) == null) {
           // 等于null,说明没查到，没查到表示可用
           return false;
        }

        return true;

    }
}
