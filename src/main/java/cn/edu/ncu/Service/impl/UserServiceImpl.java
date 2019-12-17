package cn.edu.ncu.Service.impl;

import cn.edu.ncu.Dao.UserDao;
import cn.edu.ncu.Entity.User;
import cn.edu.ncu.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }
}
