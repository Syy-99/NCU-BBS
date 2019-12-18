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


    /**
     * 根据id查找用户
     * @param uid 用户账号
     * @return 账号为uid的User对象
     */
    public User getByUId(String uid);


    /**
     * 修改个人资料
     * @param user id+需要修改的内容
     */
    public void userEdit(User user);
}
