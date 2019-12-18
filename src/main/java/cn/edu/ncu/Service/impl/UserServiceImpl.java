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
    private UserDao userDao;

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

    @Override
    public void deleteUser(String uid) {
        userDao.deleteUser(uid);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public void saveUser(User user) {
        userDao.saveUser(user);
    }
}
