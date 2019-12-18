package cn.edu.ncu.Service;

import cn.edu.ncu.Entity.User;

import java.util.List;

public interface UserService {




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
