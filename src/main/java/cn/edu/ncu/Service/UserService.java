package cn.edu.ncu.Service;

import cn.edu.ncu.Entity.User;
import java.util.List;

public interface UserService {
    /*查询所有用户信息*/
    public List<User> findAll();

    /*删除用户信息*/
    public void deleteUser(String uid);

    /*修改用户信息*/
    public void updateUser(User user);

    /*保存用户信息*/
    public void saveUser(User user);
}
