package cn.edu.ncu.Service;

import cn.edu.ncu.Entity.User;

import java.util.List;

public interface UserService {

    /**
     * 查找所有用户
     * @return List<User>
     */
    public List<User> findAll();
}
